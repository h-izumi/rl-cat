// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var Cat3EditForm = (function () {
  var cat3EditForm = function () {
    var _self = this;

    // 大分類ラジオボタン選択イベント
    $("input[name='cat1']").change(function () {
      // 選択されたラジオボタンの値を取得
      var cat1Id = $(this).val();

      // 中分類ラジオボタン絞込処理呼出
      _self.changeCat1(cat1Id);
    });

    // 初期表示
    var initialValue = $("input[name='cat1']:checked").val();
    _self.changeCat1(initialValue);
  }

  var p = cat3EditForm.prototype;

  // 中分類ラジオボタン絞込処理
  p.changeCat1 = function (cat1Id) {
    // 中分類のラジオボタンを全て非表示にする
    $('.radio-cat2').hide();

    if (cat1Id === undefined) {
      return;
    }

    // 中分類のラジオボタンのうち、
    // data-cat1-idが選択された大分類と一致するものだけを表示する
    $(".radio-cat2[data-cat1-id='" + cat1Id + "']").show();

    // 選択されている中分類が選択された大分類と異なる場合、
    // チェックを外す
    var selectedCat2 = $("input[name='cat3[cat2_id]']:checked");
    if (selectedCat2.parent().data('cat1Id') != cat1Id) {
      selectedCat2.prop('checked', false);
    }
  }

  return cat3EditForm;
})();
