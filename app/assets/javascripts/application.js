// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .

$(function() {
  $('.cell').bind('dblclick', function() {
    id_sel = this.id;

    $.get('/celulas/' + id_sel + '/edit.js')
      .done(function() {
        $('#cell_sel').focus();

        //form_name = 'edit_celula_' + id_sel;
        $('#cell_sel').on('keydown', { id: id_sel }, key_esc);
      }
    );
  });

  function key_esc(event) {
    if (event.which == 27) {
      $.get('/celulas/' + event.data.id + '.js');
    }
  };

  $('.metas').bind('dblclick', function() {
    id_sel = this.id;

    id = id_sel.slice(2)

    $.get('/metas/' + id + '/edit.js')
      .done(function() {
        $('#meta_sel').focus();

        //form_name = 'edit_celula_' + id_sel;
        $('#meta_sel').on('keydown', { id: id }, key_esc_meta);
      }
    );
  });

  function key_esc_meta(event) {
    if (event.which == 27) {
      $.get('/metas/' + event.data.id + '.js');
    }
  };
});
