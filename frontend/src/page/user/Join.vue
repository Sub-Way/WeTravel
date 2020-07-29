<template>
  <div class="vertical-center">
    <div class="inner-block">
      <form name="frm" action="join" method="post">
        <h3>회원 가입</h3>
        <div class="form-group">
          <label>닉네임</label>
          <input v-model="nickName" id="nickname" placeholder="닉네임을 입력해주세요" type="text" class="form-control"/>
        </div>
        <div class="form-group">
          <label>이메일 주소</label>
          <input v-model="email" id="email" placeholder="이메일을 입력해주세요" type="email" class="form-control"/>
        </div>
        <div class="form-group">
          <label>비밀번호</label>
          <input v-model="password" id="password" type="passwordType" placeholder="비밀번호를 입력해주세요" class="form-control"/>
        </div>
        <div class="form-group">
          <label>비밀번호 확인</label>
          <input v-model="passwordConfirm" id="password-confirm" :type="passwordConfirmType" placeholder="비밀번호를 한번 더 입력해주세요" class="form-control"/>
        </div>
        <button type="submit" @click="backsubmit" class="btn btn-dark btn-lg btn-block">회원가입</button>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  name: "Register",
  components: {},
  created() {},
  props: {
    visible2: {
      type: Boolean,
      require: true,
      default: false,
    },
    title: {
      type: String,
      require: false,
    },
  },
  methods: {
    backsubmit(event) {
      event.preventDefault();
      this.message = "";
      this.submitted = true;
      this.$validator.validate().then((isValid) => {
        if (isValid) {
          this.$store.dispatch("register", this.user).then(
            (data) => {
              this.message = data.message;
              this.successful = true;
            },
            (error) => {
              this.message =
                (error.response && error.response.data) ||
                error.message ||
                error.toString();
              this.successful = false;
            }
          );
        }
      });
    },
  },
  watch: {},
  data: () => {
    return {
      email: "",
      nickName: "",
      password: "",
      passwordConfirm: "",
      isTerm: false,
      passwordType: "password",
      passwordConfirmType: "password",
      submitted: false,
      message: "",
      successful: false,
    };
  },
};
</script>

<style scoped>
  .vertical-center {
    display: flex;
    text-align: left;
    justify-content: center;
    flex-direction: column;    
  }

  .inner-block {
    width: 450px;
    margin: auto;
    margin-top: 30px;
    margin-bottom: 30px;
    background: #ffffff;
    box-shadow: 0px 14px 80px rgba(34, 35, 58, 0.2);
    padding: 40px 40px 40px 40px;
    border-radius: 15px;
    transition: all .3s;
  }

  .vertical-center .form-control:focus {
    border-color: #2554FF;
    box-shadow: none;
  }

  .vertical-center h3 {
    text-align: center;
    margin: 0;
    line-height: 1;
    padding-bottom: 20px;
  }
  button.btn {
    background-color:#6495ED;
  }
</style>