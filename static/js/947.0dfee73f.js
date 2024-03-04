"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[947],{9022:function(e,t,a){var s=a(5121);const r=s.Z.create({baseURL:"/",headers:{"Content-Type":"application/json"}});r.interceptors.request.use((e=>{const t=localStorage.getItem("token");return t&&(e.headers.Authorization=`Bearer ${t}`),e}),(e=>(console.error("Request error:",e),Promise.reject(e)))),r.interceptors.response.use((e=>e),(e=>(e.response&&401===e.response.status&&(window.location.href="/login"),alert(`錯誤提醒: ${e.message},請截圖回報管理人員`),Promise.reject(e)))),t.Z=r},440:function(e,t,a){a.d(t,{ZQ:function(){return l},bl:function(){return i},dc:function(){return r},m0:function(){return o}});var s=a(9022);const r=()=>s.Z.get("/api/v1/fileprogress/"),l=()=>s.Z.get("/api/v1/plans/"),i=()=>s.Z.get("/api/v1/projects/"),o=e=>s.Z.get(`/api/v1/project-loops-by-project/${e}/`)},3947:function(e,t,a){a.r(t),a.d(t,{default:function(){return W}});var s=a(6252),r=a(9963),l=a(3577),i=a(9095),o=a(5215),n=a(1669),c=a(7737),d=a(2793),u=a(8069),m=a(2762),p=a(6393);const h=e=>((0,s.dD)("data-v-6d3f7158"),e=e(),(0,s.Cn)(),e),g={class:"mb-5",style:{"padding-left":"20px",display:"flex","align-items":"center"}},f=h((()=>(0,s._)("span",{class:"font-weight-bold ml-2"},"文件列表：",-1))),w={class:"search-container"},_={class:"table-header"},y=h((()=>(0,s._)("th",{class:"font-weight-bold"},"更新描述",-1))),k=["onClick"],P={class:"pagination-container"},v={class:"select-actions d-none d-md-flex"},b=h((()=>(0,s._)("span",{class:"font-weight-bold ml-2"},"每頁顯示：",-1))),D={class:"pagination-actions"};function C(e,t,a,h,C,B){return(0,s.wg)(),(0,s.j4)(n.K,null,{default:(0,s.w5)((()=>[(0,s._)("div",g,[(0,s.Wm)(c.t,{class:"title-icon",color:"blue"},{default:(0,s.w5)((()=>[(0,s.Uk)("mdi-chevron-right-box")])),_:1}),f,(0,s._)("div",w,[(0,s.Wm)(p.h,{modelValue:C.searchQuery,"onUpdate:modelValue":t[0]||(t[0]=e=>C.searchQuery=e),variant:"solo","prepend-inner-icon":"mdi-magnify",label:"請輸入關鍵字搜尋","single-line":"","hide-details":"",class:"search-input",onKeyup:(0,r.D2)(B.fetchData,["enter"])},null,8,["modelValue","onKeyup"])])]),(0,s.Wm)(o._,{class:"elevated-card",outlined:""},{default:(0,s.w5)((()=>[(0,s.Wm)(m.Y,{class:"elevated-table",width:"100%"},{default:(0,s.w5)((()=>[(0,s._)("thead",null,[(0,s._)("tr",_,[(0,s._)("th",{onClick:t[1]||(t[1]=e=>{C.sortBy="file_name",C.sortDesc=!C.sortDesc}),class:"font-weight-bold sortable"},[(0,s.Uk)(" 文件名稱 "),"file_name"===C.sortBy?((0,s.wg)(),(0,s.j4)(c.t,{key:0,small:""},{default:(0,s.w5)((()=>[(0,s.Uk)((0,l.zw)(C.sortDesc?"mdi-arrow-down":"mdi-arrow-up"),1)])),_:1})):(0,s.kq)("",!0)]),y,(0,s._)("th",{onClick:t[2]||(t[2]=e=>{C.sortBy="create_at",C.sortDesc=!C.sortDesc}),class:"font-weight-bold sortable"},[(0,s.Uk)(" 上傳時間 "),"create_at"===C.sortBy?((0,s.wg)(),(0,s.j4)(c.t,{key:0,small:""},{default:(0,s.w5)((()=>[(0,s.Uk)((0,l.zw)(C.sortDesc?"mdi-arrow-down":"mdi-arrow-up"),1)])),_:1})):(0,s.kq)("",!0)]),(0,s._)("th",{onClick:t[3]||(t[3]=e=>{C.sortBy="last_update",C.sortDesc=!C.sortDesc}),class:"font-weight-bold sortable"},[(0,s.Uk)(" 更新時間 "),"last_update"===C.sortBy?((0,s.wg)(),(0,s.j4)(c.t,{key:0,small:""},{default:(0,s.w5)((()=>[(0,s.Uk)((0,l.zw)(C.sortDesc?"mdi-arrow-down":"mdi-arrow-up"),1)])),_:1})):(0,s.kq)("",!0)])])]),(0,s._)("tbody",null,[((0,s.wg)(!0),(0,s.iD)(s.HY,null,(0,s.Ko)(B.paginatedFiles,((e,t)=>((0,s.wg)(),(0,s.iD)("tr",{key:t,onClick:t=>B.viewFile(e),class:"table-row"},[(0,s._)("td",null,(0,l.zw)(e.file_name),1),(0,s._)("td",null,(0,l.zw)(e.update_description),1),(0,s._)("td",null,(0,l.zw)(e.create_at),1),(0,s._)("td",null,(0,l.zw)(e.last_update),1)],8,k)))),128))])])),_:1}),(0,s._)("div",P,[(0,s._)("div",v,[b,(0,s.Wm)(u.rL,{density:"compact",variant:"outlined",modelValue:C.itemsPerPage,"onUpdate:modelValue":t[4]||(t[4]=e=>C.itemsPerPage=e),items:C.itemsPerPageOptions,class:"items-per-page-select",onChange:t[5]||(t[5]=e=>C.page=1)},null,8,["modelValue","items"])]),(0,s._)("div",D,[(0,s.Wm)(i.T,{icon:"",small:"",variant:"text",onClick:t[6]||(t[6]=e=>C.page=1)},{default:(0,s.w5)((()=>[(0,s.Wm)(c.t,null,{default:(0,s.w5)((()=>[(0,s.Uk)("mdi-page-first")])),_:1})])),_:1}),(0,s.Wm)(d.k,{modelValue:C.page,"onUpdate:modelValue":t[7]||(t[7]=e=>C.page=e),length:B.pages,"total-visible":1,class:"pagination","active-color":"#00b894",onInput:t[8]||(t[8]=e=>C.page=e)},null,8,["modelValue","length"]),(0,s.Wm)(i.T,{icon:"",small:"",variant:"text",onClick:t[9]||(t[9]=e=>C.page=B.pages)},{default:(0,s.w5)((()=>[(0,s.Wm)(c.t,null,{default:(0,s.w5)((()=>[(0,s.Uk)("mdi-page-last")])),_:1})])),_:1})])])])),_:1})])),_:1})}a(560);var B=a(440),U={data(){return{files:[],searchQuery:"",page:1,itemsPerPage:5,sortBy:null,sortDesc:!1,itemsPerPageOptions:[5,10,15,20]}},computed:{pages(){return Math.ceil(this.filteredFiles.length/this.itemsPerPage)},filteredFiles(){this.page=1;let e=this.files.filter((e=>e.file_name.toLowerCase().includes(this.searchQuery.toLowerCase())));return this.sortBy&&e.sort(((e,t)=>this.sortDesc?e[this.sortBy]<t[this.sortBy]?1:-1:e[this.sortBy]>t[this.sortBy]?1:-1)),e},paginatedFiles(){const e=(this.page-1)*this.itemsPerPage,t=e+this.itemsPerPage;return this.filteredFiles.slice(e,t)}},async created(){this.$route.query.page&&(this.page=Number(this.$route.query.page)),this.$route.query.itemsPerPage&&(this.itemsPerPage=Number(this.$route.query.itemsPerPage)),await this.fetchData()},methods:{viewFile(e){this.$router.push({name:e.routeName,params:{fileId:e.id},query:{fileLink:e.file_link,page:this.page,itemsPerPage:this.itemsPerPage}})},async fetchData(){try{const e=await(0,B.dc)();this.files=e.data.map((e=>({...e,create_at:this.formatDate(e.create_at),last_update:this.formatDate(e.last_update)})))}catch(e){}},formatDate(e){const t=new Date(e);return t.toLocaleDateString("zh-CN",{year:"numeric",month:"long",day:"numeric"})}}},j=a(3744);const q=(0,j.Z)(U,[["render",C],["__scopeId","data-v-6d3f7158"]]);var W=q}}]);
//# sourceMappingURL=947.0dfee73f.js.map