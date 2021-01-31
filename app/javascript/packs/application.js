// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require('jquery')

$(function() {
    $('.top_icon').click(function(){
      $('.header-nav-menu').toggle();
    });
  });

  $(function() {
    // ↓タブをクリックした時の処理↓
    $('.tab').click(function(){
        // ↓現在アクティブなタブを切り替え↓
        $('.tab_active').removeClass('tab_active');
        // ↓タブをアクティブにする↓
        $(this).addClass('tab_active');
        // ↓現在アクティブなタブの中身を非表示
        $('.tab_contents_show').removeClass('tab_contents_show');
        // ↓クリックしたタブから順番を取得↓
        const index = $(this).index();
        // ↓クリックしたタブと同じ順番のコンテンツを表示↓
        $('.tab_contents').eq(index).addClass('tab_contents_show');
    });
});