<?php 

/*
* Testimonial List Home page
*/
$restst = '';  
$tstRec = Testimonial::get_alltestimonial(9);
if (!empty($tstRec)) {
    foreach ($tstRec as $tstRow) {
        $slink = !empty($tstRow->linksrc) ? $tstRow->linksrc : '#';
        $target = !empty($tstRow->linksrc) ? 'target="_blank" rel="noopener noreferrer"' : '';
        
        $rating = '';
        for ($i = 0; $i < $tstRow->rating; $i++){
            $rating .= '<span class="fas fa-star"></span>';
        }
        for ($i = $tstRow->rating; $i < 5; $i++){
            $rating .= '<span class="far fa-star"></span>';
        }

        $restst .= '
        <div class="col-lg-12 block-eight text-start">
            <div class="inner-box">
                <div class="author-info">
                    <div class="thumb">
                        <a href="' . $slink . '" ' . $target . '>
                            <img src="' . IMAGE_PATH . 'testimonial/' . $tstRow->image . '" alt="' . $tstRow->name . '">
                        </a>
                    </div>
                    <h5 class="mb-20">" ' . $tstRow->country . ' "</h5>
                </div>
                <div class="content">
                    <div class="text">' . strip_tags($tstRow->content) . '</div>
                    <div class="user_details">
                        <div class="rating-info">
                            <div class="rating">
                                ' . $rating . '
                            </div>
                        </div>
                        <small class="text-center">' . $tstRow->name . '</small>
                    </div>
                </div>
            </div>
        </div>';
    }
}

$result_last = '
<section class="testimonials-section mt-5 pt-5">
    <div class="auto-container pb-5">
        <div class="top-content">
            <div class="sec-title mb-30">
            <div class="sub-title text-center">Share your experience with us</div>
                <h2 class="sec-title text-center">Guest Experience</h2>
            </div>
        </div>
        <div class="row">
            <div class="theme_carousel owl-theme owl-carousel" 
                data-options=\'{"loop": true, "center": true, "margin": 50, "autoheight":true, "lazyload":true, "nav": false, "dots": true, "autoplay": true, "autoplayTimeout": 6000, "smartSpeed": 1000, "responsive":{ "0" :{ "items": "1" }, "600" :{ "items" : "1" }, "768" :{ "items" : "1" } , "992":{ "items" : "1" }, "1200":{ "items" : "3" }}}\'>
                ' . $restst . '
            </div>
        </div>
    </div>
</section>';

$jVars['module:testimonialList123'] = $result_last;



/*
* Testimonial Header Title
*/
$tstHtitle='';

if(defined('HOME_PAGE')) {
    $tstHtitle.='<section class="promo_full">
    <div class="promo_full_wp">
        <div>
            <h3>What Guest say</h3>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="carousel_testimonials">';
    $tstRec = Testimonial::get_alltestimonial();
    if(!empty($tstRec)) {        
        foreach($tstRec as $tstRow) {
            $tstHtitle.='<div>
                                <div class="box_overlay">
                                    <div class="pic">
                                        <figure><img src="'.IMAGE_PATH.'testimonial/'.$tstRow->image.'" alt="'.$tstRow->name.'" class="img-circle"></figure>
                                        <h4>'.$tstRow->name.'</h4>
                                    </div>
                                    <div class="comment">
                                       '.strip_tags($tstRow->content).'
                                    </div>
                                </div><!-- End box_overlay -->
                            </div>';
        }
    $tstHtitle.='</div><!-- End carousel_testimonials -->
                    </div><!-- End col-md-8 -->
                </div><!-- End row -->
            </div><!-- End container -->
        </div><!-- End promo_full_wp -->
    </div><!-- End promo_full -->
    </section><!-- End section -->';
 }
}
$jVars['module:testimonial-title'] = $tstHtitle;


/*
* Testimonial Rand
*/
$tstHead='';

$tstRand = Testimonial::get_by_rand();
if(!empty($tstRand)) {
	$tstHead.='<!-- Quote | START -->
	<div class="section quote fade">
		<div class="center">
	    
	        <div class="col-1">
	        	<div class="thumb"><img src="'.IMAGE_PATH.'testimonial/'.$tstRand->image.'" alt="'.$tstRand->name.'"></div>
	            <h5><em>'.strip_tags($tstRand->content).'</em></h5>
	            <p><span><strong>'.$tstRand->name.', '.$tstRand->country.'</strong> (Via : '.$tstRand->via_type.')</span></p>
	        </div>
	        
	    </div>
	</div>
	<!-- Quote | END -->';
}

$jVars['module:testimonial-rand'] = $tstHead;


/*
* Testimonial List
*/
$restst='';
$tstRec = Testimonial::get_alltestimonial(9);
if(!empty($tstRec)) {
	$restst.='<div class="clients_slider owl-carousel" id="testi-slider">';

        foreach($tstRec as $tstRow) {
            $slink = !empty($tstRow->linksrc)?$tstRow->linksrc:'javascript:void(0);';
            $target = !empty($tstRow->linksrc)?'target="_blank" rel="noopener noreferrer"':'';

            
            $restst.='<div class="item">
                        <div class="media">
                        <div class="col-md-3 col-sm-3">
                            <div class="test-img">
                                <a href="'.$slink.'" '.$target.'>
                                    <img src="'.IMAGE_PATH.'testimonial/'.$tstRow->image.'" alt="'.$tstRow->name.'" class="img-responsive">
                                </a>
                            </div>
                            </div>
                            
                            <div class="col-md-9 col-sm-9">
                            <div class="media-body test">
                                <p><i>“</i>'.strip_tags($tstRow->content).'</p>
                                <a href="'.$slink.'" '.$target.'>
                                    <h4>'.$tstRow->name.'</h4>
                                </a>
                            </div>
                            </div>
                        </div>
                    </div>';
        }
    $restst.='</div>';
}

$jVars['module:testimonialList'] = $restst;
?>