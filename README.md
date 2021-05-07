# gpages-gallery

A Simple Photo Gallery for GitHub Pages, so there is no online image
sizing. There are existing jekyll plugins that generate image
galleries, but these cannot run natively on GitHub pages, requiring a
local jekyll installation. We sidestep this problem by using jekyll to
generate the site from a CSV list of photos which have been previously
resized.

This is currently geared towards the Otago Optics Chapter photo
competitions

## Usage

Fill `_data/images.csv` with the list of images. For the current template, you
must have:
 - `image_src`, which is the file name of the image. The image should
   have a low res copy in `assets/images/gallery-thumbnail`, and a
   high-res copy in `assets/images/gallery-full`, both with the same
   name, which is contained in the column `image_src`
 - `caption`
 - `category`
 - `artist`

The relevant places to adjust the required fields and how they are displayed are
 - `_includes/img_include.html`, which displays the thumbnail and
   passes the data to fancybox, and
 - `assets/js/gallery.js`, where fancybox is set up. In particular,
   the `caption` option of the fancybox config.

 
## Image resizing

The helper script `resizer.sh` can be useful for performing this and
reducing the file size.
