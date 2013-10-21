<div class="row">
  <div class="col-sm-6">
    <fieldset>
      <legend><?php echo $text_your_details; ?></legend>
      <div class="form-group required">
        <label class="control-label" for="input-payment-firstname"><?php echo $entry_firstname; ?></label>
        <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-payment-firstname" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-payment-lastname"><?php echo $entry_lastname; ?></label>
        <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-payment-lastname" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-payment-email"><?php echo $entry_email; ?></label>
        <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-payment-email" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-payment-telephone"><?php echo $entry_telephone; ?></label>
        <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-payment-telephone" class="form-control" />
      </div>
      <div class="form-group">
        <label class="control-label" for="input-payment-fax"><?php echo $entry_fax; ?></label>
        <input type="text" name="fax" value="<?php echo $fax; ?>" placeholder="<?php echo $entry_fax; ?>" id="input-payment-fax" class="form-control" />
      </div>
    </fieldset>
  </div>
  <div class="col-sm-6">
    <fieldset>
      <legend><?php echo $text_your_address; ?></legend>
      <div class="form-group">
        <label class="control-label" for="input-payment-company"><?php echo $entry_company; ?></label>
        <input type="text" name="company" value="<?php echo $company; ?>" placeholder="<?php echo $entry_company; ?>" id="input-payment-company" class="form-control" />
      </div>
      <div class="form-group" style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
      <form>
        <label class="control-label"><?php echo $entry_customer_group; ?></label>
        <?php foreach ($customer_groups as $customer_group) { ?>
        <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
        <div class="radio">
          <label for="customer_group_id-1" class="checked">
            <input type="radio" id="customer_group_id-1" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
            <?php echo $customer_group['name']; ?>
          </label>
        </div>
        <?php } else { ?>
        <div class="radio">
          <label for="customer_group_id-2">
            <input type="radio" id="customer_group_id-2" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" />
            <?php echo $customer_group['name']; ?>
          </label>
        </div>
        <?php } ?>
        <?php } ?>
        </form>
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-payment-address-1"><?php echo $entry_address_1; ?></label>
        <input type="text" name="address_1" value="<?php echo $address_1; ?>" placeholder="<?php echo $entry_address_1; ?>" id="input-payment-address-1" class="form-control" />
      </div>
      <div class="form-group">
        <label class="control-label" for="input-payment-address-2"><?php echo $entry_address_2; ?></label>
        <input type="text" name="address_2" value="<?php echo $address_2; ?>" placeholder="<?php echo $entry_address_2; ?>" id="input-payment-address-2" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-payment-city"><?php echo $entry_city; ?></label>
        <input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-payment-city" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>
        <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-payment-postcode" class="form-control" />
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-payment-country"><?php echo $entry_country; ?></label>
        <select name="country_id" id="input-payment-country" class="form-control">
          <option value=""><?php echo $text_select; ?></option>
          <?php foreach ($countries as $country) { ?>
          <?php if ($country['country_id'] == $country_id) { ?>
          <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
          <?php } else { ?>
          <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
          <?php } ?>
          <?php } ?>
        </select>
      </div>
      <div class="form-group required">
        <label class="control-label" for="input-payment-zone"><?php echo $entry_zone; ?></label>
        <select name="zone_id" id="input-payment-zone" class="form-control">
        </select>
      </div>
    </fieldset>
  </div>
</div>
<?php if ($shipping_required) { ?>
<div class="checkbox">
    <?php if ($shipping_address) { ?>
      <label class="checked" for="shipping_address-1" class="checked">
        <input type="checkbox" name="shipping_address" id="shipping_address-1" value="1" checked="checked" />
        <?php echo $entry_shipping; ?>
      </label>
    <?php } else { ?>
      <label class="checked" for="shipping_address-2" class="checked">
        <input type="checkbox" id="shipping_address-2" name="shipping_address" value="1" />
        <?php echo $entry_shipping; ?>
      </label>
    <?php } ?>
</div>
<?php } ?>
<div class="buttons">
  <div class="pull-right w">
    <input type="button" value="<?php echo $button_continue; ?>" id="button-guest" class="btn btn-primary" />
  </div>
</div>
<script type="text/javascript"><!--
$('#payment-address input[name=\'customer_group_id\']:checked').change(function() {
    var customer_group = [];
    
});

$('#payment-address input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('#input-payment-country').on('change', function() {
    $.ajax({
        url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
        dataType: 'json',
        beforeSend: function() {
      $('#input-payment-country').after(' <i class="icon-spinner icon-spin"></i>');
        },
        complete: function() {
            $('.icon-spinner').remove();
        },          
        success: function(json) {
      if (json['postcode_required'] == '1') {
        $('#input-payment-postcode').parent().parent().addClass('required');
      } else {
        $('#input-payment-postcode').parent().parent().removeClass('required');
      }
            
            html = '<option value=""><?php echo $text_select; ?></option>';
            
            if (json['zone']) {
                for (i = 0; i < json['zone'].length; i++) {
                    html += '<option value="' + json['zone'][i]['zone_id'] + '"';
                    
                    if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
                        html += ' selected="selected"';
                    }
    
                    html += '>' + json['zone'][i]['name'] + '</option>';
                }
            } else {
                html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
            }
            
            $('#input-payment-zone').html(html).selectpicker('refresh');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});

$('#input-payment-country').trigger('change');
//--></script>
<script type="text/javascript">
  $('select').selectpicker();

  $('input[type=checkbox]').on('change', function () {
      $(this).parent().toggleClass('checked');
  });
</script>