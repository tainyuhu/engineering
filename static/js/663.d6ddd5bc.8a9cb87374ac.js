"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[663],{9022:function(e,t,o){var r=o(5121);const a=r.Z.create({baseURL:"/",headers:{"Content-Type":"application/json"}});a.interceptors.request.use((e=>{const t=localStorage.getItem("token");return t&&(e.headers.Authorization=`Bearer ${t}`),e}),(e=>(console.error("Request error:",e),Promise.reject(e)))),a.interceptors.response.use((e=>e),(e=>(e.response&&401===e.response.status&&(window.location.href="/login"),Promise.reject(e)))),t.Z=a},440:function(e,t,o){o.d(t,{ZQ:function(){return n},bl:function(){return s},dc:function(){return l},ky:function(){return c},m0:function(){return i},z:function(){return a}});var r=o(9022);const a=()=>r.Z.get("/api/v1/meetingrecord/"),l=()=>r.Z.get("/api/v1/fileprogress/"),c=()=>r.Z.get("/api/v1/fileprogressphase/"),n=()=>r.Z.get("/api/v1/plans/"),s=()=>r.Z.get("/api/v1/projects/"),i=e=>r.Z.get(`/api/v1/project-loops-by-project/${e}/`)},2663:function(e,t,o){o.r(t),o.d(t,{default:function(){return F}});var r=o(6252),a=o(3577),l=o(9095),c=o(5215),n=o(7695),s=o(6334),i=o(3857),d=o(7506),u=o(1669),m=o(9003),p=o(3379),f=o(7737),g=o(8069);const j=e=>((0,r.dD)("data-v-d2392a86"),e=e(),(0,r.Cn)(),e),_={class:"mb-3",style:{"padding-left":"20px",display:"flex","align-items":"center"}},h=j((()=>(0,r._)("span",{class:"font-weight-bold ml-2"},"瀏覽計畫進度：",-1))),P=j((()=>(0,r._)("span",{class:"ml-1 note-span"},"※在下方選擇一項計畫後，才會顯示計畫內容",-1))),w={class:"mb-3",style:{"padding-left":"40px",display:"flex","align-items":"center"}},k=j((()=>(0,r._)("span",{class:"font-weight-bold ml-2"},"選擇計畫：",-1))),b={key:0},C=j((()=>(0,r._)("p",null,"此計畫沒有其他專案項目。",-1))),v={key:1},y={class:"d-flex justify-content-between align-items-center"},I=j((()=>(0,r._)("p",null,"此計畫沒有其他專案項目。",-1)));function N(e,t,o,j,N,V){return(0,r.wg)(),(0,r.j4)(u.K,null,{default:(0,r.w5)((()=>[(0,r._)("div",_,[(0,r.Wm)(f.t,{color:"blue"},{default:(0,r.w5)((()=>[(0,r.Uk)("mdi-chevron-right-box")])),_:1}),h,P]),(0,r._)("div",w,[(0,r.Wm)(f.t,{color:"orange"},{default:(0,r.w5)((()=>[(0,r.Uk)("mdi-chevron-right-box")])),_:1}),k,(0,r.Wm)(g.rL,{label:"選擇欲瀏覽的計畫",variant:"underlined",class:"ml-3",items:N.plan,"item-title":"plan_name","item-value":"plan_id",modelValue:N.selectedPlan,"onUpdate:modelValue":t[0]||(t[0]=e=>N.selectedPlan=e),style:{"flex-grow":"1"}},null,8,["items","modelValue"])]),3!==N.selectedPlan?((0,r.wg)(),(0,r.iD)("div",b,[N.selectedPlan&&V.filteredProjects.length>0?((0,r.wg)(),(0,r.j4)(m.o,{key:0,class:"project-cards-row"},{default:(0,r.w5)((()=>[((0,r.wg)(!0),(0,r.iD)(r.HY,null,(0,r.Ko)(V.filteredProjects,(e=>((0,r.wg)(),(0,r.j4)(p.D,{key:e.project_id,cols:"12",sm:"6",md:"4"},{default:(0,r.w5)((()=>[(0,r.Wm)(c._,{color:V.getProjectCardInfo(e.project_name).color,class:"project-card",dark:""},{default:(0,r.w5)((()=>[(0,r.Wm)(n.E,{class:"d-flex font-weight-bold flex-column align-items-center justify-content-center card-title-custom"},{default:(0,r.w5)((()=>[(0,r.Wm)(f.t,{icon:V.getProjectCardInfo(e.project_name).icon,class:"icon-background mb-2",color:V.getProjectCardInfo(e.project_name).color},null,8,["icon","color"]),(0,r.Uk)(" "+(0,a.zw)(V.getProjectCardInfo(e.project_name).title),1)])),_:2},1024),(0,r.Wm)(d.J),(0,r.Wm)(s.h,{class:"justify-end"},{default:(0,r.w5)((()=>["案場"===e.project_name?((0,r.wg)(),(0,r.iD)(r.HY,{key:0},[(0,r.Wm)(l.T,{color:V.getProjectCardInfo(e.project_name).color,class:"mt-auto font-weight-bold btn-custom",onClick:t=>V.navigateToProject(V.getProjectCardInfo(e.project_name).routeName3,e.project_id)},{default:(0,r.w5)((()=>[(0,r.Uk)("瀏覽總迴路")])),_:2},1032,["color","onClick"]),(0,r.Wm)(l.T,{color:V.getProjectCardInfo(e.project_name).color,class:"mt-auto font-weight-bold btn-custom",onClick:t=>V.navigateToProject(V.getProjectCardInfo(e.project_name).routeName2,e.project_id)},{default:(0,r.w5)((()=>[(0,r.Uk)("瀏覽迴路")])),_:2},1032,["color","onClick"]),(0,r.Wm)(l.T,{color:V.getProjectCardInfo(e.project_name).color,class:"mt-auto font-weight-bold btn-custom",onClick:t=>V.navigateToProject(V.getProjectCardInfo(e.project_name).routeName,e.project_id)},{default:(0,r.w5)((()=>[(0,r.Uk)("瀏覽 PV")])),_:2},1032,["color","onClick"]),(0,r.Wm)(l.T,{color:V.getProjectCardInfo(e.project_name).color,class:"mt-auto font-weight-bold btn-custom",onClick:t=>V.navigateToProject(V.getProjectCardInfo(e.project_name).routeName1,e.project_id)},{default:(0,r.w5)((()=>[(0,r.Uk)("瀏覽養殖")])),_:2},1032,["color","onClick"])],64)):((0,r.wg)(),(0,r.j4)(l.T,{key:1,color:V.getProjectCardInfo(e.project_name).color,class:"mt-auto font-weight-bold btn-custom",onClick:t=>V.navigateToProject(V.getProjectCardInfo(e.project_name).routeName,e.project_id)},{default:(0,r.w5)((()=>[(0,r.Uk)("瀏覽")])),_:2},1032,["color","onClick"]))])),_:2},1024)])),_:2},1032,["color"])])),_:2},1024)))),128))])),_:1})):N.selectedPlan?((0,r.wg)(),(0,r.j4)(m.o,{key:1},{default:(0,r.w5)((()=>[C])),_:1})):(0,r.kq)("",!0)])):((0,r.wg)(),(0,r.iD)("div",v,[N.selectedPlan&&V.filteredProjects.length>0?((0,r.wg)(),(0,r.j4)(m.o,{key:0,class:"project-cards-row"},{default:(0,r.w5)((()=>[((0,r.wg)(!0),(0,r.iD)(r.HY,null,(0,r.Ko)(V.filteredProjects,(e=>((0,r.wg)(),(0,r.j4)(p.D,{key:e.project_id,cols:"12",sm:"6",md:"4"},{default:(0,r.w5)((()=>[(0,r.Wm)(c._,{color:V.getPhaseProjectCardInfo(e.project_name).color,class:"project-card",dark:""},{default:(0,r.w5)((()=>[(0,r.Wm)(n.E,{class:"d-flex font-weight-bold flex-column align-items-center justify-content-center card-title-custom"},{default:(0,r.w5)((()=>[(0,r._)("div",y,[(0,r.Wm)(f.t,{icon:V.getPhaseProjectCardInfo(e.project_name).icon,class:"icon-background mb-2",color:V.getPhaseProjectCardInfo(e.project_name).color},null,8,["icon","color"]),["22.8KV","電業申辦","161KV","升壓站"].includes(e.project_name)?((0,r.wg)(),(0,r.j4)(i.v,{key:0,color:"green","prepend-icon":"mdi-check-circle",variant:"flat",size:"large",class:"ml-auto"},{default:(0,r.w5)((()=>[(0,r.Uk)(" 已完工 ")])),_:1})):(0,r.kq)("",!0)]),(0,r.Uk)(" "+(0,a.zw)(V.getPhaseProjectCardInfo(e.project_name).title),1)])),_:2},1024),(0,r.Wm)(d.J),(0,r.Wm)(s.h,{class:"justify-end"},{default:(0,r.w5)((()=>["案場"===e.project_name?((0,r.wg)(),(0,r.iD)(r.HY,{key:0},[],64)):((0,r.wg)(),(0,r.j4)(l.T,{key:1,color:V.getPhaseProjectCardInfo(e.project_name).color,class:"mt-auto font-weight-bold btn-custom",onClick:t=>V.viewFile(V.getPhaseProjectCardInfo(e.project_name))},{default:(0,r.w5)((()=>[(0,r.Uk)("瀏覽")])),_:2},1032,["color","onClick"]))])),_:2},1024)])),_:2},1032,["color"])])),_:2},1024)))),128))])),_:1})):N.selectedPlan?((0,r.wg)(),(0,r.j4)(m.o,{key:1},{default:(0,r.w5)((()=>[I])),_:1})):(0,r.kq)("",!0)]))])),_:1})}o(560);var V=o(440),W={data(){return{plan:[],project:[],selectedPlan:null,currentDialog:null}},computed:{filteredProjects(){return console.log("api response:",this.selectedPlan),this.selectedPlan?this.project.filter((e=>e.plan_id===this.selectedPlan)):[]}},async created(){await this.fetchData()},methods:{viewFile(e){this.$router.push({name:e.routeName,params:{fileId:e.fileId},query:{fileLink:e.url}})},navigateToProject(e,t){console.log("api response:",this.selectedPlan),this.$router.push({name:e,query:{Plan:this.selectedPlan,Project:t}})},navigateToManagement(e){console.log("api response:",this.selectedPlan),this.$router.push({name:e,query:{Plan:this.selectedPlan}})},async fetchData(){try{const e=await(0,V.ZQ)(),t=await(0,V.bl)();console.log("api response:",e.data),console.log("api response:",t.data),this.plan=e.data,this.project=t.data}catch(e){}},getProjectCardInfo(e){const t={"案場":{title:"案場工程進度",color:"#00b894",icon:"mdi-pier",routeName:"Project_PV",routeName1:"Project_Breeding",routeName2:"Loop_Photoelectric_Engineering",routeName3:"General_Loop_Photoelectric_Engineering"},"22.8KV":{title:"22.8KV工程進度",color:"#a29bfe",icon:"mdi-axis-arrow",routeName:"Powerline_228KV_Details"},"電業申辦":{title:"電業申辦進度",color:"#FF6F00",icon:"mdi-flash-alert",routeName:"Electricity_Application_Process"},"161KV":{title:"161KV工程進度",color:"#ff7675",icon:"mdi-alpha-t-box-outline",routeName:"High-Voltage-161KV-Info"},"升壓站":{title:"升壓站工程進度",color:"#38ada9",icon:"mdi-sprinkler-variant",routeName:"Booster_Station_Progress"}};return t[e]||{}},getPhaseProjectCardInfo(e){const t={"案場":{title:"案場工程進度",color:"#00b894",icon:"mdi-pier",routeName:"File_Progress",url:""},"22.8KV":{title:"22.8KV工程進度",color:"#a29bfe",icon:"mdi-axis-arrow",routeName:"File_Progress",fileId:5,url:"https://docs.google.com/spreadsheets/d/1XrJln7GXJbmOEjgMZdhaBN2ntU-KAV9L/edit?usp=sharing%26ouid=100002892372171714788%26rtpof=true%26sd=true"},"電業申辦":{title:"電業申辦進度",color:"#FF6F00",icon:"mdi-flash-alert",routeName:"File_Progress",fileId:4,url:"https://docs.google.com/spreadsheets/d/132bwWWBZmRaIwtzAm8JWkzuAArJaGuN5/edit?usp=sharing%26ouid=100002892372171714788%26rtpof=true%26sd=true"},"161KV":{title:"161KV工程進度",color:"#ff7675",icon:"mdi-alpha-t-box-outline",routeName:"File_Progress",fileId:28,url:"https://docs.google.com/spreadsheets/d/1KS9fCHVwyFjl_3QdFgaJzXY_iieYqPFj/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true"},"升壓站":{title:"升壓站工程進度",color:"#38ada9",icon:"mdi-sprinkler-variant",routeName:"File_Progress",fileId:27,url:"https://docs.google.com/spreadsheets/d/1OfVYR-cb9JEMb5hq5reNO8PwYIDgwQ5y/edit?usp=sharing&ouid=100002892372171714788&rtpof=true&sd=true"}};return t[e]||{}}}},K=o(3744);const x=(0,K.Z)(W,[["render",N],["__scopeId","data-v-d2392a86"]]);var F=x}}]);
//# sourceMappingURL=663.d6ddd5bc.js.3a20a0b7b4d8.map