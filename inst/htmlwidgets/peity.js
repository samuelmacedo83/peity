HTMLWidgets.widget({

  name: 'peity',
  type: 'output',

  factory: function(el, width, height) {

    return {
      renderValue: function(x) {
        el.innerText = x.data;
        $(el).peity(x.type, x.options);
      },

      resize: function(width, height) {

        // TODO: code to re-render the widget with a new size

      }

    };
  }
});
