
function class_info=rayner_gen_class_info_nyud()

class_info=[];

class_info.class_names={
    'regression'};

 
class_label_values=uint8([1]);
class_info.class_label_values=class_label_values;

class_info.background_label_value=uint8(1);
class_info.void_label_values=uint8(255);

class_info.mask_cmap = VOClabelcolormap(256);
class_info=process_class_info(class_info);


end


