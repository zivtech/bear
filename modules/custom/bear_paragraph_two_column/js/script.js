(function(Drupal, $) {

  'use strict';

  Drupal.behaviors.bearTwoColumnParagraph = {
    attach: function (context, settings) {
      var $paraParent = $('.field--name-field-two-column__left-column, .field--name-field-two-column__left-right', context).parent('div');

      $paraParent.addClass('field--name-field-two-column');
    }
  };

})(Drupal, jQuery)
