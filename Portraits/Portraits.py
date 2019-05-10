import json
import os

from PIL import Image

input_dir = "Icons"
cards_file = "na_raw_cards.json"
card_templates_file = "wide_cards.png"
output_dir = "Portraits"

templates_img = Image.open(card_templates_file)
attr_imgs = {}
sattr_imgs = {}
for idx, t in enumerate(['r', 'b', 'g', 'l', 'd']):
    pwidth = 100
    pheight = 100
    xstart = idx * (pwidth + 2)
    ystart = 0

    xend = xstart + pwidth
    yend = ystart + pheight

    attr_imgs[t] = templates_img.crop(box=(xstart, ystart, xend, yend))

    ystart = ystart + pheight + 5
    yend = ystart + pheight - 1 - 1  # Stops one short of full height

    sattr_imgs[t] = templates_img.crop(box=(xstart, ystart, xend, yend))

card_types = []
with open(cards_file) as f:
    card_data = json.load(f)

attr_map = {
    -1: '',
    0: 'r',
    1: 'b',
    2: 'g',
    3: 'l',
    4: 'd',
}

card = []
card_id = []

for x in card_data['card']:
    if x[0] < 9999:  # retrieves all IDs released in NA
        # card_id.append(x[0])

        card_types.append([
            x[0],
            attr_map[x[2]],
            attr_map[x[3]]
        ])

# print(card_types[0][1])
# ed = 0
# for ed in range(len(card_types)):
#     if card_types[ed][0] == 5203:
#         print("oh shit nibba")


def idx_for_id(card_id: int):
    """Computes the (card_file, row, col) for a card."""
    card_id -= 1  # offset to 0
    card_file_idx = int(card_id / 100) + 1

    sub_idx = card_id % 100
    col = sub_idx % 10
    row = int(sub_idx / 10)

    card_file = 'CARDS_{}.PNG'.format(str(card_file_idx).zfill(3))
    return card_file, row, col


card_imgs = {}


def get_portraits_img(file_name):
    if file_name not in card_imgs:
        file_path = os.path.join(input_dir, file_name)
        if not os.path.exists(file_path):
            return None
        card_imgs[file_name] = Image.open(file_path)
    return card_imgs[file_name]


def get_card_img(portraits, row, col):
    card_dim = 96
    spacer = 6
    xstart = (card_dim + spacer) * col
    ystart = (card_dim + spacer) * row

    xend = xstart + card_dim
    yend = ystart + card_dim
    return portraits.crop(box=(xstart, ystart, xend, yend))


def is_entirely_transparent(img):
    return img.getextrema() == ((0, 0), (0, 0), (0, 0), (0, 0))


for card_id, card_attr, card_sattr in card_types:
    card_file, row, col = idx_for_id(card_types[card_id][0])
    portraits = get_portraits_img(card_file)
    if portraits is None:
        # This can happen since JP gets ahead of NA and it's not easy to
        # confirm that a card is in JP but not NA
        print('skipping {} because CARDS file does not exist: {}'.format(card_id, card_file))
        continue

    card_img = get_card_img(portraits, row, col)
    # if card_types[card_id][0] == 1339:
    #     card_img.show()
    # if is_entirely_transparent(card_img):
    #     print('skipping {} because it is missing'.format(card_id))
    #     continue

    # Create a grey image to overlay the portrait on, filling in the background
    grey_img = Image.new("RGBA", card_img.size, color=(68, 68, 68, 255))
    card_img = Image.alpha_composite(grey_img, card_img)

    attr_img = attr_imgs[card_attr]

    # Adjust the card image to fit the portrait
    new_card_img = Image.new("RGBA", attr_img.size)
    new_card_img.paste(card_img, (2, 2))

    # Merge the attribute border on to the portrait
    merged_img = Image.alpha_composite(new_card_img, attr_img)

    if card_sattr:
        sattr_img = sattr_imgs[card_sattr]
        # Adjust the subattribute image to the attribute image size
        new_sattr_img = Image.new("RGBA", attr_img.size)
        # There's a slight offset needed for the subattribute border
        new_sattr_img.paste(sattr_img, (0, 1))

        # Merge the subattribute on top
        merged_img = Image.alpha_composite(merged_img, new_sattr_img)

    # Save
    merged_img.save(os.path.join(output_dir, '{}.png'.format(card_id)), 'PNG')
