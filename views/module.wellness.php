<?php
$resinndetail = $imageList = $innerbred = $t = '';
$homearticle = wellness::find_by_id(22);

$recRows = wellness::find_all_active();
// pr($recRows);
$recreation = '';

if (!empty($recRows)) {

    $imglink = BASE_URL . 'template/web/assets/images/main-slider/about.jpg';
    // other image from Preference Mgmt
    if (!empty($siteRegulars->other_upload)) {
        if (file_exists(SITE_ROOT . "images/preference/other/" . $siteRegulars->other_upload)) {
            $imglink = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        }
    } else {
        if (file_exists(SITE_ROOT . "images/preference/offer/" . $siteRegulars->offer_upload)) {
            $imglink = IMAGE_PATH . 'preference/offer/' . $siteRegulars->offer_upload;
    }
    }

    $recreation .= '
        <section class="page-title" style="background-image: url('.$imglink.')">
            <div class="auto-container">
                <div class="content-box">
                    <div class="content-wrapper">
                        <div class="title">
                            <h1>Recreation</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-sixteen recreation_text">
            <div class="auto-container">
                <div class="text-center w-75 mb-5 mx-auto pb-lg-4 recreation-w100">
                   <p>Relax in our infinity pool with breathtaking lake views, pamper yourself with rejuvenating spa treatments, and embrace serenity with our peaceful yoga sessions. Enjoy the perfect blend of luxury and tranquility during your stay.</p>
                </div>
    ';

    foreach ($recRows as $key => $recRow) {
        // Handle image path
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
        if (!empty($recRow->image) && $recRow->image != "a:0:{}") {
            $imageList = unserialize($recRow->image);
            $imgno = array_rand($imageList);
            $file_path = SITE_ROOT . 'images/wellness/' . $imageList[$imgno];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'wellness/' . $imageList[$imgno];
            }
        }

        $recreation .= '
            <div class="row no-gutters bg-white align-items-center">
                <div class="col-lg-6 ' . ($key % 2 == 0 ? '' : 'order-lg-2') . '">
                    <div class="block-sixteen recreation_category_title">
                        <h4>' . $recRow->title . '</h4>
                        <div class="text">' . $recRow->content . '</div>
                    </div>
                </div>
                <div class="col-lg-6 overflow-hidden">
                    <div class="owl-carousel owl-recreation">
        ';
        foreach ($imageList as $img) {
            $recreation .= '
                <div class="item">
                    <img src="' . IMAGE_PATH . 'wellness/' . $img . '" alt="' . $recRow->title . '" >
                </div>
            ';
        }
        $recreation .= '
                    </div>
                </div>
            </div>
        ';
    }

    $recreation .= '
            </div>
        </section>
    ';
}

$jVars['module:recreation'] = $recreation;



if (!empty($homearticle)) {
    if ($homearticle->image != "a:0:{}") {
        $imageList = unserialize($homearticle->image);
        $imgno = array_rand($imageList);
        $file_path = SITE_ROOT . 'images/wellness/' . $imageList[$imgno];
        if (file_exists($file_path)) {
            $imglink = IMAGE_PATH . 'wellness/' . $imageList[$imgno];
        } else {
            $imglink = BASE_URL . 'template/web/img/mosaic_2.jpg';
        }
    } else {
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
    }
    $t .= ' <div class="col-xs-12">
                     <a href="' . BASE_URL . 'page/' . $homearticle->slug . '">
                    <div class="mosaic_container">
                        <img src="' . $imglink . '" alt="' . $homearticle->title . '" class="img-responsive add_bottom_30"><span class="caption_2"> ' . $homearticle->title . '</span>
                    </div>
                    </a>
                </div>';


}

$jVars['module:aboutarticle'] = $t;

/**
 *      Home page
 */
$servicecont = '';

if (defined('HOME_PAGE') ) {
    // $slug = addslashes($_REQUEST['slug']);
    // $recRow = wellness::find_by_slug($slug);
    $recInn = wellness::homepageArticle();
    
    $imagem='';
    if (!empty($homearticle)) {
        
}
        $servicecont .=' <article class="mad-entity" id="mad-sync-elements">
        <div class="mad-entity-media">
        <div class="mad-panels-img">';
        

        foreach ($recInn as $i => $innRow) {
            $collapsed = ($i == 0) ? '' : 'mad-panels-active';
            $show = ($i == 0) ? 'clicked' : '';
            $homearticle = wellness::find_by_id($innRow->id);
    if ($homearticle->image != "a:0:{}") {
        $imageList = unserialize($homearticle->image);
        $imgno = array_rand($imageList);
        $file_path = SITE_ROOT . 'images/wellness/' . $imageList[$imgno];
        if (file_exists($file_path)) {
            $imglink = IMAGE_PATH . 'wellness/' . $imageList[$imgno];
        } else {
            $imglink = BASE_URL . 'template/web/img/mosaic_2.jpg';
        }
    } else {
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
    }
    $imagem ='<img src="'.$imglink.'" alt="">';

   

            $servicecont .='<section data-active="'. $innRow->slug .'" class="'.$show.'">
            '. $imagem .'
        </section>';
        }
        $servicecont .='</div>
        </div>
        <div class="mad-entity-content services-section">
                                <div class="content-element-7">
                                    <div class="mad-entity-pre-title">Our Services</div>
                                    <!--================ Accordion ================-->
                                    <dl role="presentation" class="mad-panels mad-panels--accordion type-big">';
                                    
        foreach ($recInn as $innRow) {
            $linkTarget = ($innRow->linktype == 1) ? ' target="_blank" ' : '';
        $linksrc = ($innRow->linktype == 1) ? $innRow->linksrc : BASE_URL . $innRow->linksrc;
            
        $servicecont .='
        <div class="row no-gutters bg-white align-items-center">
    <div class="col-lg-6">
        <div class="block-sixteen">
            <h4>'.$innRow->title.'</h4>
            <div class="text">'.$innRow->content.'</div>
        </div>
    </div>
    <div class="col-lg-6 overflow-hidden">
        <div class="owl-carousel owl-recreation">
            <div class="image"><img src="' . $imglink . '" alt="'.$innRow->title.'"></div>
            <div class="image"><img src="assets/images/barpeepal/recreation/pool1.jpg" alt=""></div>
        </div>
    </div>
</div>
        <dt class="mad-panels-title $collapsed" data-active="'. $innRow->slug .'">
                                            <button id="'. $innRow->slug .'-button" type="button" aria-expanded="false" aria-controls="panel-7" aria-disabled="false">
                                            '. $innRow->title .'
                                            
                                            </button>
                                        </dt>
                                        <dd id="'. $innRow->slug .'" class="mad-panels-definition">
                                            <p>
                                                <b>'. $innRow->sub_title .'</b>
                                            </p>
                                            <p>
                                            '. $innRow->content .'
                                            </p>
                                            <a href="'.$linksrc.'  " class="mad-text-link">
                                                <div class="link-container">
                                                    <span class="link-title1 title">Explore More</span>
                                                    <span class="link-title2 title">Explore More</span>
                                                </div>
                                            </a>
                                        </dd>
                                       ';
                                    //    pr($recInn);
                                    } 
                                    
                                    $servicecont .='</dl>
                                    <!--================ End of Accordion ================-->
                                </div>
                            </div>
                        </article>
                        <!--================ End of Entity ================-->
                    </div>
                </div>';                           
    
    }
    


$jVars['module:home-mainservice'] = $servicecont;

/**
 *      Inner page detail
 */




$restyp = '';

$typRow = Article::get_by_type();
if (!empty($typRow)) {
    $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($typRow->content));
    $readmore = '';
    if (!empty($typRow->linksrc)) {
        $linkTarget = ($typRow->linktype == 1) ? ' target="_blank" ' : '';
        $linksrc = ($typRow->linktype == 1) ? $typRow->linksrc : BASE_URL . $typRow->linksrc;
        $readmore = '<a class="text-link link-direct" href="' . $linksrc . '">see more</a>';
    } else {
        $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . $typRow->slug . '">Read more...</a>' : '';
    }
    $restyp .= '<h3 class="h3 header-sidebar">' . $typRow->title . '</h3>
	<div class="home-content">
		' . $content[0] . ' ' . $readmore . '
	</div>';

}

$jVars['module:article_by_type'] = $restyp;



/*
    Why Choose Us
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';

// pr($resinnh1);
    $recInn1 = Article::find_by_id(2);
    if (!empty($recInn1)) {
            $resinnh1 .= $recInn1->content;

        
    }

}

$jVars['module:home_article'] = $resinnh1;


/*
    HomePage Facilities
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';


    $recInn1 = Article::find_by_id(3);

    if (!empty($recInn1)) {

            $resinnh1 .= $recInn1->content;

        
    }

}

$jVars['module:home_facilities'] = $resinnh1;

$resinndetail = $imageList = $innerbred = $t = '';
$homearticle = wellness::find_by_id(22);

$recRows = wellness::find_all_active();
// pr($recRows);
$recreation = '';

if (!empty($recRows)) {

    $imglink = BASE_URL . 'template/web/assets/images/main-slider/about.jpg';
    // other image from Preference Mgmt
    if (!empty($siteRegulars->other_upload)) {
        if (file_exists(SITE_ROOT . "images/preference/other/" . $siteRegulars->other_upload)) {
            $imglink = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        }
    }
    

    $recreation .= '
        <section class="page-title" style="background-image: url('.$imglink.')">
            <div class="auto-container">
                <div class="content-box">
                    <div class="content-wrapper">
                        <div class="title">
                            <h1>Recreation</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-sixteen recreation_text">
            <div class="auto-container">
                <div class="text-center w-75 mb-5 mx-auto pb-4 recreation-w100">
                <p>Relax in our infinity pool with breathtaking lake views, pamper yourself with rejuvenating spa treatments, and embrace serenity with our peaceful yoga sessions. Enjoy the perfect blend of luxury and tranquility during your stay.</p>
                </div>
    ';

    foreach ($recRows as $key => $recRow) {
        // Handle image path
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
        if (!empty($recRow->image) && $recRow->image != "a:0:{}") {
            $imageList = unserialize($recRow->image);
            $imgno = array_rand($imageList);
            $file_path = SITE_ROOT . 'images/wellness/' . $imageList[$imgno];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'wellness/' . $imageList[$imgno];
            }
        }

        $recreation .= '
            <div class="row no-gutters bg-white align-items-center">
                <div class="col-lg-6 ' . ($key % 2 == 0 ? '' : 'order-lg-2') . '">
                    <div class="block-sixteen recreation_category_title">
                        <h4>' . $recRow->title . '</h4>
                        <div class="text">' . $recRow->content . '</div>
                    </div>
                </div>
                <div class="col-lg-6 overflow-hidden">
                    <div class="owl-carousel owl-recreation">
        ';
        foreach ($imageList as $img) {
            $recreation .= '
                <div class="item">
                    <img src="' . IMAGE_PATH . 'wellness/' . $img . '" alt="' . $recRow->title . '" style="width:100%;">
                </div>
            ';
        }
        $recreation .= '
                    </div>
                </div>
            </div>
        ';
    }

    $recreation .= '
            </div>
        </section>
    ';
}

$jVars['module:wellness:recreation'] = $recreation;
?>
