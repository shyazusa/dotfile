const __bkmClass = '.deco-\\.';

const __bkmMenuTitle = 'Bookmarks';
scrapbox.PageMenu.addMenu({
  title: __bkmMenuTitle,
  image: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVQI12NgYAAAAAMAASDVlMcAAAAASUVORK5CYII=',
  onClick: function() {
    const __fixedHeaderHeight = ($('.navbar').css('position') == 'fixed' ? $('.navbar').height() : 0) + ($('.navbar-pagemenu').height() || 0);
    scrapbox.PageMenu(__bkmMenuTitle).removeAllItems();
    $(__bkmClass).closest('.line').each(function(i, e) {
      scrapbox.PageMenu(__bkmMenuTitle).addItem({
        title: $(e).find(__bkmClass).text(),
        onClick: function() {
          $('html,body').animate({
            scrollTop: $(e).offset().top - $('body').offset().top - __fixedHeaderHeight
          }, 150);
        }
      });
    });
  }
});
// 選択した文字列にマーカー
scrapbox.PopupMenu.addButton({
  title: 'マーカー',
  onClick: text => `[[${text}]]`
});

scrapbox.PopupMenu.addButton({
  title: '付箋',
  onClick: text => `[~ ${text}]`
});

scrapbox.PopupMenu.addButton({
  title: 'しおり',
  onClick: text => `[. ${text}]`
});
