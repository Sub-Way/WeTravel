<template>
  <div id="main-wrapper" class="main-wrapper">
    <main id="main" class="main container p-0">
      <div class="home-article">
        <header class="home-header" style="height=720px;">
          <div class="home-cover">
            <b-carousel
              id="carousel-fade"
              style="text-shadow: 0px 0px 2px #000"
              fade
              indicators
              img-width="1280"
              img-height="720"
            >
              <b-carousel-slide>
                <span class="home-cover-pic" :style="backImage1"></span>
              </b-carousel-slide>
              <b-carousel-slide>
                <span class="home-cover-pic" :style="backImage2"></span>
              </b-carousel-slide>
              <b-carousel-slide>
                <span class="home-cover-pic" :style="backImage3"></span>
              </b-carousel-slide>
            </b-carousel>
          </div>
          <div class="home-header-text container">
            <span class="text1">We Travel에 오신걸 환영합니다!</span>
            <span class="text2">당신의 여행을 공유 해보세요!</span>
            <fieldset class="main-search" style="text-align: left;">
              <a class="h2" style="margin-left: 20px;">
                <b-icon icon="search" variant="secondary"></b-icon>
              </a>
              <input
                id="main-search"
                class="HomeSearchInput"
                style="margin-left:30px; width:60%;"
                name="main-search"
                type="text"
                maxlength="50"
                placeholder="도시, 에디터이름"
                autocomplete="off"
              />
            </fieldset>
          </div>
        </header>
      </div>
      <div class="home-content">
        <div class="korea-city">
          <h2 style="margin-bottom: 40px; color: primary;">좋아하는 여행지를 골라보세요!</h2>
          <div class="row">
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>서울, 대한민국의 수도</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>경기, 활력 넘치는 도시</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>강원, 자연과 힐링</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>충청, 교통의 중심</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>전라, 맛의 중심</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>경상, 바다의 도시</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>제주, 추억과 행복</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>부산, 야경의 도시</b-card-text>
              </b-card>
            </div>
          </div>
        </div>
        <div class="best-city-article">
          <h2 style="margin-bottom:40px;">지역별 베스트 여행기를 보세요!</h2>
          <div class="row" style="justify-content: center;">
            <div class="col-10">
              <carousel-3d>
                <slide :index="0">규민아!!!!!!!</slide>
                <slide :index="1">너무!!!!!!</slide>
                <slide :index="2">힘들다!!!!!</slide>
                <slide :index="3">힘들다!!!!!</slide>
                <slide :index="4">힘들다!!!!!</slide>
                <slide :index="5">힘들다!!!!!</slide>
                <slide :index="6">힘들다!!!!!</slide>
                <slide :index="7">힘들다!!!!!</slide>
              </carousel-3d>
            </div>
          </div>
        </div>
        <div class="best-article">
          <h2 style="margin-bottom:40px;">믿고 보는 베스트 여행기!</h2>
          <div class="row" style="justify-content:center;">
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>서울, 대한민국의 수도</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>서울, 대한민국의 수도</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>서울, 대한민국의 수도</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>서울, 대한민국의 수도</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>서울, 대한민국의 수도</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>서울, 대한민국의 수도</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>서울, 대한민국의 수도</b-card-text>
              </b-card>
            </div>
            <div class="col-3">
              <b-card
                img-src="https://picsum.photos/600/300/"
                style="max-width: 20rem;"
                class="mb-2"
              >
                <b-card-text>서울, 대한민국의 수도</b-card-text>
              </b-card>
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
</template>
 
<script>
export default {
  name: "Post",
  components: {},
  watch: {},
  created() {},
  methods: {},
  data: () => {
    return {
      backImage1: {
        backgroundImage: `url(${require("@/assets/img/12.jpg")})`,
      },
      backImage2: {
        backgroundImage: `url(${require("@/assets/img/13.jpg")})`,
      },
      backImage3: {
        backgroundImage: `url(${require("@/assets/img/14.jpg")})`,
      },
    };
  },
};
</script>

<style>
#main-wrapper {
  padding-bottom: 80px;
}
#header + div {
  padding-top: 0px;
}
.home-cover {
  margin-top: 60px;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 0;
}
.home-cover-pic {
  transition: 1s;
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 5;
  height: 720px;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
}
.home-header-text {
  width: 100%;
  height: 720px;
  overflow: hidden;
}
.main-search {
  margin: 45px auto 0 auto;
  height: 50px;
  width: 738px;
  border: 2px solid white;
  background-color: white;
  border-radius: 80px;
  overflow: hidden;
}

.home-article {
  height: 720px;
  margin-bottom: 40px;
}

.home-cover .carousel-caption {
  position: static;
  height: 720px;
}
.home-header .container {
  margin-top: 60px;
  text-align: center;
  position: absolute;
  top: 60%;
  left: 50%;
  height: 500px;
  transform: translate(-50%, -50%);
  overflow: hidden;
}
.container span {
  color: white;
  display: block;
  font-size: 60px;
  font-weight: 700;
  letter-spacing: 3px;
  margin-bottom: 50px;
  animation: text 3s 1;
}
.korea-city{
  margin-bottom: 40px;
}
.best-city-article {
  margin-bottom: 40px;
}
@keyframes text {
  0% {
    color: rgba(255, 255, 255, 0);
  }
  30% {
    letter-spacing: 12px;
  }
  95% {
    letter-spacing: 3px;
  }
}
</style>