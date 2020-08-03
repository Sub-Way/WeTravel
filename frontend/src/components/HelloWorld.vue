<template>
  <div class="editor-page">
    <textarea id="summernote" style="display:inline-block" width="500px"></textarea>
    <div id="summernote"></div>
    <button id="btn">작성완료!</button>
  </div>
</template>

<script>
// import 'summernote/summernote-ko-KR';
import $ from 'jquery';
import 'popper.js';
import 'bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'summernote';
import 'summernote/dist/summernote-bs4';
import 'summernote/dist/summernote-bs4.css';
export default {
  data() {
    return {
      
    };
  },
  mounted() {
    $('#summernote').summernote({
     lang:'ko-KR',
     toolbar: [
			    // [groupName, [list of button]]
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    ['color', ['forecolor','color']],
			    ['table', ['table']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']],
			    ['insert',['picture','link','video']],
			    ['view', ['fullscreen', 'help']]
			  ],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
      fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
    });
  }
};
</script>

<style>

</style>