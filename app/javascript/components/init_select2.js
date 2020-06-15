import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({
    placeholder: "Select a Tag",
    allowClear: true
  }); // (~ document.querySelectorAll)
};

export { initSelect2 };
