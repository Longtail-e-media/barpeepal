<?php
$reslgall = '';

$gallRec = Gallery::getParentgallery(2);

if (!empty($gallRec)) {
    foreach ($gallRec as $gallRow) {
        $childRec = GalleryImage::getGalleryImages($gallRow->id);
        if (!empty($childRec)) {
            foreach ($childRec as $childRow) {
                $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $childRow->image;
                if (file_exists($file_path) and !empty($childRow->image)) {
                    $reslgall .= '
                      <div class="column">
                        <div class="block-thirty-one">
                            <div class="image">
                                <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '" alt="' . $childRow->title . '">
                            </div>
                            <div class="view-project">
                                <a data-fancybox="example gallery" href="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '" class="zoom-btn">
                                    <i class="flaticon-add-circular-outlined-button"></i>
                                </a>
                            </div>
                        </div>
                    </div>';
                }
            }
        }
    }
}

$res_gallery = '
    <section class="section-thirty-one mt-5">
        <div class="auto-container">
            <div class="theme_carousel owl-theme owl-carousel" 
                data-options=\'{"loop": true, "center": false, "margin": 0, "autoheight":true, "lazyload":true, "nav": true, "dots": true, "autoplay": true,  "responsive":{ "0" :{ "items": "1" }, "480" :{ "items" : "1" }, "600" :{ "items" : "2" }, "992" :{ "items" : "3" } , "1200":{ "items" : "4" }, "1600":{ "items" : "5" }}}\'>
                ' . $reslgall . '
            </div>
        </div>
    </section>';

$jVars['module:galleryHome'] = $res_gallery;


$dininggallery = '';
$galldining = GalleryImage::getImagelist_by(19, 3);
if (!empty($galldining)) {
    $dininggallery .= '<div class="row about">
                     <div class="demo-gallery">
    		     <div id="lightgallery" class="list-unstyled">';
    foreach ($galldining as $row) {
        $dininggallery .= '<div class="item col-sm-4 col-xs-12" data-responsive="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-sub-html="<h4>' . $row->title . '</h4>">
                        <a href="">
                            <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . 'alt="' . $row->title . '"/>
                        </a>
                    </div>';
    }
    $dininggallery .= '</div>
    </div>
    </div>';
}
$jVars['module:dining-gallery'] = $dininggallery;


$gallerybread = '';
$siteRegulars = Config::find_by_id(1);

$img = BASE_URL . 'template/web/assets/images/main-slider/about.jpg';
// other image from Preference Mgmt
if (!empty($siteRegulars->other_upload)) {
    if (file_exists(SITE_ROOT . "images/preference/other/" . $siteRegulars->other_upload)) {
        $img = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
    }
}
$imglink = $siteRegulars->gallery_upload;
if (!empty($imglink)) {
    $img = IMAGE_PATH . 'preference/gallery/' . $siteRegulars->gallery_upload;
}

$gallerybread = '
    <section class="page-title" style="background-image: url(' . $img . ');">
        <div class="auto-container">
            <div class="content-box">
                <div class="content-wrapper">
                    <div class="title">
                        <h1>Photo Gallery</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
';

$jVars['module:gallery-bread'] = $gallerybread;


/**
 *      Main Gallery
 */
$thegal = $thegalnav = '';
$gallRectit = Gallery::getParentgallery();

if ($gallRectit) {
    foreach ($gallRectit as $row) {
        $thegalnav .= '<button data-filter=".fill' . $row->id . '">' . $row->title . '</button>';

        $gallRec = GalleryImage::getGalleryImages($row->id);
        foreach ($gallRec as $row1) {
            $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
            if (file_exists($file_path) and !empty($row1->image)):
                $thegal .= ' 
                    <div class="col-lg-4 element-item fill' . $row1->galleryid . '">
                        <div class="block-fourty-four">
                            <div class="image"><img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" alt="' . $row1->title . '"></div>
                            <div class="view-project">
                                <a data-fancybox="example gallery" href="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" class="zoom-btn">
                                    <i class="flaticon-add-circular-outlined-button"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                ';
            endif;
        }
    }
}

$jVars['module:gallery-list'] = $thegal;
$jVars['module:gallery-nav'] = $thegalnav;
