<template>
  <b-modal
    id="loginModal"
    class="my-modal"
    hide-footer
    title
    hide-header
    v-if="visible"
    @click.self="handleWrapperClick"
  >
    <div class="user" id="login">
      <div class="inner-block">
        <form name="frm" action="login" method="post">
          <h3 style="text-align:center; padding-bottom: 20px; line-height: 1; margin: 0;">로그인</h3>
          <div class="form-group">
              <label>이메일</label>
              <input v-model="email" id="email" placeholder="이메일을 입력해주세요" type="email" class="form-control form-control-lg"  />
          </div>
          <div class="form-group">
              <label>비밀번호</label>
              <input v-model="password" type="password" id="password" placeholder="영문, 숫자 혼용 8자 이상" class="form-control form-control-lg"/>
          </div>
          <button style="margin-top: 30px; margin-bottom: 30px;" class="btn btn-lg btn-primary btn-block btn--back btn--login" @click="backsubmit">로그인</button>

          <p class="sub-text text-right mt-2 mb-4">
            <router-link to="/forgotpassword">비밀번호를 잊으셨나요?</router-link>
          </p>
          <p class="sub-text text-right mt-2 mb-4">
            <router-link to="/join">아직 회원이 아니신가요?</router-link>
          </p>
          <div class="social-login" style="text-align:center">
            <a href=""><font-awesome-icon :icon="['fab', 'facebook']" size="2x" class="mx-3"/></a>
            <a href=""><font-awesome-icon :icon="['fab', 'twitter']" size="2x" class="mx-3"/></a>
            <a href=""><font-awesome-icon :icon="['fab', 'instagram']" size="2x" class="mx-3"/></a>
            <a href=""><font-awesome-icon :icon="['fab', 'pinterest']" size="2x" class="mx-3"/></a>
          </div>
        </form>
      </div>
    </div>
  </b-modal>
</template>

<script>
import constants from "../../lib/constants";

export default {
  name: "my-modal",
  props: {
    visible: {
      type: Boolean,
      require: true,
      default: false,
    },
    title: {
      type: String,
      require: false,
    },
  },
  components: {
  },
  created() {},
  watch: {},
  methods: {
    handleWrapperClick() {
      this.$emit("update:visible", false);
    },
    backsubmit() {
      if (this.email == "") {
        this.showAlert = true;
        this.errMsg = "이메일을 입력해주세요";
        return;
      }
      if (this.password == "") {
        this.showAlert = true;
        this.errMsg = "비밀번호를 입력해주세요";
        return;
      }
      this.showAlert = false;
      document.frm.submit();
    },
  },
  data: () => {
    return {
      constants,
      email: "",
      password: "",
      showAlert: false,
      errMsg: "",
    };
  },
};
</script>

<style scoped>

  .inner-block {
    width: 450px;
    margin: auto;
    padding: 40px 55px 45px 55px;
  }
  button.btn {
    background-color:#6495ED;
  }
  .social-login a {
    color: #3333ff;
  }
  .social-login a:visited {
    color: #3333ff;
  }
  a:visited, a:hover {
    text-decoration: none;
    color: inherit;
  }
</style>

