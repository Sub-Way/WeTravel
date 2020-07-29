<template>
  <div class="vertical-center">
    <div class="inner-block">
      <div class="vue-tempalte">
        <form>
          <h3>비밀번호 찾기</h3>
          <div class="form-group">
            <label>이메일 주소</label>
            <input type="email" class="form-control form-control-lg" />
          </div>
          <button type="submit" class="btn btn-dark btn-lg btn-block">비밀번호 초기화</button>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
    export default {
        data() {
            return {}
        }
    }
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
  .forgot-password,
  .forgot-password a {
    text-align: right;
    font-size: 13px;
    padding-top: 10px;
    color: #7a7a7a;
    margin: 0;
  }

  .forgot-password a {
    color: #2554FF;
  }
  button.btn {
    background-color:#6495ED;
  }
</style>