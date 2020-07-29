<template>
  <div class="editor-page">
    <div id="summernote"></div>
  </div>
</template>

<script>
import $ from 'jquery';
import 'bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'summernote/dist/summernote-bs4';
import 'summernote/dist/summernote-bs4.css';
import 'summernote/summernote-ko-KR';
import 'summernote/summernote-image-captionit';

export default {
  data() {
    return {

    };
  },
  mounted() {
    $('#summernote').summernote({
      lang: 'ko-KR',
      popover: {
            image: [
                ['custom', ['captionIt']],
                ['imagesize', ['imageSize100', 'imageSize50', 'imageSize25']],
                ['float', ['floatLeft', 'floatRight', 'floatNone']],
                ['remove', ['removeMedia']]
            ],
        },
        captionIt:{
            figureClass:'{figure-class/es}',
            figcaptionClass:'{figcapture-class/es}',
            captionText:'{Default Caption Editable Placeholder Text if Title or Alt are empty}'
        },
    });
  }
};
</script>

<style lang="scss">
</style>