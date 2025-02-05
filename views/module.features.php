<?php 
/*
* Facilities list
*/
$rescont= $facbred= '';
  
$subpkgRec = Features::find_all_byparnt(118);
$pkgRec = Features::find_by_id(119);
$facilities ="";
// var_dump($subpkgRec); die();
// pr($subpkgRec);
$subpkgRec = Features::getFeatures(); 
// pr($subpkgRec);
$jVars['module:facilities'] = $facilities;
    if(!empty($subpkgRec)) {
        $rescont .= ' <div class="bottom-border mt-5 pt-5">
        <h3 class="text-center">Hall Amenities</h3>
      </div>
    <div class="row">';
foreach ($subpkgRec as $k => $v) {
    
    $rescont .= '

            <div class="col-md-3">
    <div class="block-43">
        <div class="icon-three">
                
                ';
                if(!empty($v->icon)) {
                    $rescont .= '<i class="'.$v->icon.'"></i>';
                } 
        
                $rescont .= '<div class="title">'.$v->title.'</div>
                        </div>
                    </div>
                </div>';
            }
        
            $rescont .= '</div>
                </div>
                </div>
</div>
            ';
        }
       
   
$jVars['module:generalfacilities-list'] = $rescont;

?>