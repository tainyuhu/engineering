"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[372],{8372:function(s,e,r){r.r(e),r.d(e,{default:function(){return k}});var t=r(6252),a=r(9963),o=r(3577);const n={class:"login-background"},i={class:"login-container"},l=(0,t._)("h2",null,"登入",-1),c={key:0,class:"alert alert-success"},u={key:1,class:"alert alert-danger"},d={class:"form-group"},m={class:"form-group"},p=(0,t._)("button",{type:"submit",class:"btn-login"},"登入",-1);function g(s,e,r,g,h,f){return(0,t.wg)(),(0,t.iD)("div",n,[(0,t._)("div",i,[(0,t._)("form",{onSubmit:e[2]||(e[2]=(0,a.iM)(((...s)=>f.login&&f.login(...s)),["prevent"])),class:"login-form"},[l,h.loginSuccess?((0,t.wg)(),(0,t.iD)("div",c,"登入成功！")):(0,t.kq)("",!0),h.loginError?((0,t.wg)(),(0,t.iD)("div",u,(0,o.zw)(s.errorMessage),1)):(0,t.kq)("",!0),(0,t._)("div",d,[(0,t.wy)((0,t._)("input",{"onUpdate:modelValue":e[0]||(e[0]=s=>h.username=s),type:"text",placeholder:"帳號",class:"form-control",autocomplete:"username"},null,512),[[a.nr,h.username]])]),(0,t._)("div",m,[(0,t.wy)((0,t._)("input",{"onUpdate:modelValue":e[1]||(e[1]=s=>h.password=s),type:"password",placeholder:"密碼",class:"form-control",autocomplete:"current-password"},null,512),[[a.nr,h.password]])]),p],32)])])}r(560);var h=r(5603),f={data(){return{username:"",password:"",loginSuccess:!1,loginError:!1}},methods:{async login(){this.loginSuccess=!1,this.loginError=!1;try{const s=await h.Z.post("api/token/",{username:this.username,password:this.password});this.loginSuccess=!0,this.loginError=!1,console.log("Request:",s);const e={username:s.data.username,firstName:s.data.first_name||"",lastName:s.data.last_name||"",email:s.data.email||"",isStaff:s.data.is_staff||!1,isActive:s.data.is_active||!1,groups:s.data.groups||[]};this.$store.commit("setUser",e),localStorage.setItem("access_token",s.data.access),this.$store.commit("auth/setToken",s.data.access),this.$route.query.redirect?this.$router.push(this.$route.query.redirect):this.$router.push("/"),this.$router.push({name:"home"})}catch(s){console.error(s),this.loginError=!0,this.loginSuccess=!1,this.errorMessage="登入失敗，請檢查您的帳號或密碼。"}}}},w=r(3744);const _=(0,w.Z)(f,[["render",g]]);var k=_}}]);
//# sourceMappingURL=372.fb97dfa2.js.ac2486e733ed.map