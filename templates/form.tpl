<p>
    <label for="<?=$this->get_field_id('title');?>">
        Title:
        <input type="text" class="widefat" id="<?=$this->get_field_id('title');?>" name="<?=$this->get_field_name('title');?>" value="<?=attribute_escape( $instance['title'] );?>" />
    </label>
</p>

<p>
    <label for="<?=$this->get_field_id('featured');?>">
        <input type="checkbox" class="checkbox" id="<?=$this->get_field_id('featured');?>" name="<?=$this->get_field_name('featured');?>" <?=( $instance['featured'] ? 'checked="checked"' : null);?> />
        Featured events only
    </label>
    <br/>
    <label for="<?=$this->get_field_id('ongoing');?>">
        <input type="checkbox" class="checkbox" id="<?=$this->get_field_id('ongoing');?>" name="<?=$this->get_field_name('ongoing');?>" <?=( $instance['ongoing'] ? 'checked="checked"' : null);?> />
        Show ongoing events
    </label>
    <br/>
    <label for="<?=$this->get_field_id('showimage');?>">
        <input type="checkbox" class="checkbox" id="<?=$this->get_field_id('showimage');?>" name="<?=$this->get_field_name('showimage');?>" <?=( $instance['showimage'] ? 'checked="checked"' : null);?> />
        Show event image
    </label>
</p>

<p>
    <label for="<?=$this->get_field_id('image-size');?>">
        Image Size:
        <select class="widefat" id="<?=$this->get_field_id('image-size');?>" name="<?=$this->get_field_name('image-size');?>">
            <? foreach( array_merge( array( 'full' ), get_intermediate_image_sizes() ) as $size ): ?>
            <option value="<?=$size;?>" <?=( $instance['image-size'] == $size ? 'selected="selected"' : null);?>><?=$size;?></option>
            <? endforeach; ?>
        </select>
    </label>
</p>

<p>&nbsp;</p>
<p>For Tags, Groups &amp; Locations see <a href="http://events.umich.edu/list" target="_blank">http://events.umich.edu/list</a> for options.</p>

<p>
    <label for="<?=$this->get_field_id('tags');?>">
        Tags:
        <input type="text" class="widefat" id="<?=$this->get_field_id('tags');?>" name="<?=$this->get_field_name('tags');?>" value="<?=attribute_escape( implode( ', ', $instance['tags'] ) );?>" /><br />
        <small>Comma separated events.umich.edu tags (Text)</small>
    </label>
</p>

<p>
    <label for="<?=$this->get_field_id('groups');?>">
        Groups:
        <input type="text" class="widefat" id="<?=$this->get_field_id('groups');?>" name="<?=$this->get_field_name('groups');?>" value="<?=attribute_escape( implode( ', ', $instance['groups'] ) );?>" /><br />
        <small>Comma separated events.umich.edu groups (Number)</small>
    </label>
</p>

<p>
    <label for="<?=$this->get_field_id('locations');?>">
        Locations:
        <input type="text" class="widefat" id="<?=$this->get_field_id('locations');?>" name="<?=$this->get_field_name('locations');?>" value="<?=attribute_escape( implode( ', ', $instance['locations'] ) );?>" /><br />
        <small>Comma separated events.umich.edu locations (Number)</small>
    </label>
</p>

<p>
    <label for="<?=$this->get_field_id('viewalltxt');?>">
        View All Link Text:
        <input type="text" class="widefat" id="<?=$this->get_field_id('viewalltxt');?>" name="<?=$this->get_field_name('viewalltxt');?>" value="<?=attribute_escape( $instance['viewalltxt'] );?>" /><br />
        <small>Leave blank for no link</small>
    </label>
</p>

<p>
    <label for="<?=$this->get_field_id('limit');?>">
        Limit:
        <input type="text" class="widefat" id="<?=$this->get_field_id('limit');?>" name="<?=$this->get_field_name('limit');?>" value="<?=attribute_escape( $instance['limit'] );?>" /><br />
        <small>Max number of events to show.</small>
    </label>
</p>
