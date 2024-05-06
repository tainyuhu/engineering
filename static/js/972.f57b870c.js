"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[972],{9022:function(e,t,a){var o=a(5121);const l=o.Z.create({baseURL:"/",headers:{"Content-Type":"application/json"}});l.interceptors.request.use((e=>{const t=localStorage.getItem("token");return t&&(e.headers.Authorization=`Bearer ${t}`),e}),(e=>(console.error("Request error:",e),Promise.reject(e)))),l.interceptors.response.use((e=>e),(e=>(e.response&&401===e.response.status&&(window.location.href="/login"),Promise.reject(e)))),t.Z=l},440:function(e,t,a){a.d(t,{ZQ:function(){return n},bl:function(){return i},dc:function(){return r},ky:function(){return s},m0:function(){return c},z:function(){return l}});var o=a(9022);const l=()=>o.Z.get("/api/v1/meetingrecord/"),r=()=>o.Z.get("/api/v1/fileprogress/"),s=()=>o.Z.get("/api/v1/fileprogressphase/"),n=()=>o.Z.get("/api/v1/plans/"),i=()=>o.Z.get("/api/v1/projects/"),c=e=>o.Z.get(`/api/v1/project-loops-by-project/${e}/`)},9351:function(e,t,a){a.d(t,{QZ:function(){return p},UW:function(){return s},Up:function(){return r},ZP:function(){return i},iY:function(){return c},ob:function(){return n},uf:function(){return d},yP:function(){return l}});var o=a(9022);const l=(e,t,a,l)=>o.Z.get(`/api/v1/get_pv_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),r=(e,t,a,l)=>o.Z.get(`/api/v1/get_pv_all_quarter_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),s=(e,t,a,l)=>o.Z.get(`/api/v1/get_pv_quarter_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),n=(e,t,a,l)=>o.Z.get(`/api/v1/get_loop_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),i=(e,t,a,l)=>o.Z.get(`/api/v1/get_loop_all_quarter_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),c=(e,t,a,l)=>o.Z.get(`/api/v1/get_loop_quarter_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),d=(e,t)=>o.Z.get(`/api/v1/get_pv_quarter_chart_progress/${e}/${t}/`,{headers:{Accept:"application/json"}}),p=(e,t,a,l)=>o.Z.get(`/api/v1/get_pv_quarter_chart_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}})},4688:function(e,t,a){a.r(t),a.d(t,{default:function(){return V}});var o=a(6252),l=a(3577),r=a(9095),s=a(9773),n=a(1669),i=a(7737),c=a(2793),d=a(2762);const p=e=>((0,o.dD)("data-v-0a10b568"),e=e(),(0,o.Cn)(),e),u={class:"mb-3",style:{"padding-left":"20px",display:"flex","align-items":"center"}},g=p((()=>(0,o._)("span",{class:"font-weight-bold ml-2"},"瀏覽迴路工程進度：",-1))),h={class:"mb-3",style:{"padding-left":"40px",display:"flex","align-items":"center"}},w=p((()=>(0,o._)("span",{class:"font-weight-bold ml-2"},"選擇迴路：",-1))),_=p((()=>(0,o._)("span",{class:"ml-1 note-span"},"※在下方選擇一個迴路後，才會顯示迴路的進度內容",-1))),m={class:"loops-selection"},f={class:"function-row"},y={key:0,class:"status-and-page-size-selector"},b=p((()=>(0,o._)("span",null,"狀態：",-1))),D={key:1,class:"py-2 d-flex justify-center"},k={key:2},v={key:0,class:"div-container"},P=p((()=>(0,o._)("th",null,"案場 / 週間",-1))),T={class:"font-weight-bold"},j={class:"expected"},q={key:1,class:"div-container"},$=p((()=>(0,o._)("th",{rowspan:"2"},"案場 / 週間",-1))),z={class:"font-weight-bold"},x={class:"expected"},M={key:2,class:"div-container"},I=p((()=>(0,o._)("th",{rowspan:"2"},"案場 / 週間",-1))),C={class:"font-weight-bold"},U={class:"expected"};function Z(e,t,a,p,Z,L){return(0,o.wg)(),(0,o.j4)(n.K,null,{default:(0,o.w5)((()=>[(0,o._)("div",u,[(0,o.Wm)(i.t,{color:"blue"},{default:(0,o.w5)((()=>[(0,o.Uk)("mdi-chevron-right-box")])),_:1}),g]),(0,o._)("div",h,[(0,o.Wm)(i.t,{color:"orange"},{default:(0,o.w5)((()=>[(0,o.Uk)("mdi-chevron-right-box")])),_:1}),w,_]),(0,o._)("div",m,[((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(Z.loops,(e=>((0,o.wg)(),(0,o.j4)(r.T,{key:e.loop_id,class:(0,l.C_)(["loop-button",{"loop-button--active":e.loop_id===Z.selectedLoopId}]),onClick:t=>L.selectLoop(e.loop_id)},{default:(0,o.w5)((()=>[(0,o.Uk)((0,l.zw)(e.loop_name),1)])),_:2},1032,["class","onClick"])))),128))]),(0,o._)("div",f,[Z.selectedLoopId?((0,o.wg)(),(0,o.iD)("div",y,[b,(0,o.Wm)(r.T,{class:(0,l.C_)("table"===Z.displayMode?"report-btn":"table-btn"),onClick:L.toggleDisplayMode},{default:(0,o.w5)((()=>[(0,o.Uk)((0,l.zw)(L.displayModeText),1)])),_:1},8,["class","onClick"])])):(0,o.kq)("",!0),Z.showDetails?((0,o.wg)(),(0,o.iD)("div",D,[(0,o.Wm)(s.fF,{mandatory:"",modelValue:Z.timeMode,"onUpdate:modelValue":t[0]||(t[0]=e=>Z.timeMode=e),class:"time-toggle",variant:"outlined"},{default:(0,o.w5)((()=>[(0,o.Wm)(r.T,{class:"time-btn",value:"quarter"},{default:(0,o.w5)((()=>[(0,o.Uk)("季")])),_:1}),(0,o.Wm)(r.T,{class:"time-btn",value:"week"},{default:(0,o.w5)((()=>[(0,o.Uk)("週")])),_:1})])),_:1},8,["modelValue"])])):(0,o.kq)("",!0),Z.selectedLoopId?((0,o.wg)(),(0,o.iD)("div",k,[(0,o.Wm)(r.T,{class:(0,l.C_)("engineering"===Z.projectType?"bank-btn":"engineering-btn"),onClick:L.toggleProjectType},{default:(0,o.w5)((()=>[(0,o.Uk)((0,l.zw)(L.projectTypeText),1)])),_:1},8,["class","onClick"]),(0,o.Wm)(r.T,{class:"overview-btn",rounded:"0",onClick:t[1]||(t[1]=e=>Z.showDetails=!1)},{default:(0,o.w5)((()=>[(0,o.Uk)("即時")])),_:1}),(0,o.Wm)(r.T,{class:"details-btn",rounded:"0",onClick:t[2]||(t[2]=e=>Z.showDetails=!0)},{default:(0,o.w5)((()=>[(0,o.Uk)("詳情")])),_:1})])):(0,o.kq)("",!0)]),Z.selectedLoopId&&"week"===Z.timeMode&&Z.showDetails&&"table"===Z.displayMode?((0,o.wg)(),(0,o.iD)("div",v,[(0,o.Wm)(d.Y,null,{default:(0,o.w5)((()=>[(0,o._)("thead",null,[(0,o._)("tr",null,[P,((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(L.allDateRanges,((e,t)=>((0,o.wg)(),(0,o.iD)("th",{key:t,class:(0,l.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"},[(0,o.Uk)((0,l.zw)(e)+" ",1),0===t?((0,o.wg)(),(0,o.j4)(i.t,{key:0,color:"yellow"},{default:(0,o.w5)((()=>[(0,o.Uk)("mdi-new-box")])),_:1})):(0,o.kq)("",!0)],2)))),128))])]),(0,o._)("tbody",null,[((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(Z.weekTableData,(e=>((0,o.wg)(),(0,o.iD)("tr",{key:e.pv_name},[(0,o._)("td",T,(0,l.zw)(e.pv_name),1),((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(e.date_ranges,(e=>((0,o.wg)(),(0,o.iD)(o.HY,null,[(0,o._)("td",{style:(0,l.j5)(e.records[0].expected>e.records[0].actual?{"font-weight":"bold",color:"red"}:{})},(0,l.zw)(L.formatPercentage(e.records[0].actual)),5),(0,o._)("td",j,(0,l.zw)(L.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,o.Wm)(c.k,{modelValue:Z.currentPage,"onUpdate:modelValue":t[3]||(t[3]=e=>Z.currentPage=e),length:Z.totalPages,"total-visible":7,onInput:L.fetchData},null,8,["modelValue","length","onInput"])])):(0,o.kq)("",!0),Z.selectedLoopId&&"quarter"===Z.timeMode&&Z.showDetails&&"table"===Z.displayMode?((0,o.wg)(),(0,o.iD)("div",q,[(0,o.Wm)(d.Y,null,{default:(0,o.w5)((()=>[(0,o._)("thead",null,[(0,o._)("tr",null,[$,((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(L.quarterSummary,((e,t)=>((0,o.wg)(),(0,o.iD)("th",{key:t,class:(0,l.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"}," 【"+(0,l.zw)(e.year)+" Q"+(0,l.zw)(e.quarter)+"】 第"+(0,l.zw)(e.week)+"周 ",3)))),128))]),(0,o._)("tr",null,[((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(L.allDateRanges,((e,t)=>((0,o.wg)(),(0,o.iD)("th",{key:t,class:(0,l.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"},[(0,o.Uk)((0,l.zw)(e)+" ",1),0===t?((0,o.wg)(),(0,o.j4)(i.t,{key:0,color:"yellow"},{default:(0,o.w5)((()=>[(0,o.Uk)("mdi-new-box")])),_:1})):(0,o.kq)("",!0)],2)))),128))])]),(0,o._)("tbody",null,[((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(Z.quarterTableData,(e=>((0,o.wg)(),(0,o.iD)("tr",{key:e.pv_name},[(0,o._)("td",z,(0,l.zw)(e.pv_name),1),((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(e.date_ranges,(e=>((0,o.wg)(),(0,o.iD)(o.HY,null,[(0,o._)("td",{style:(0,l.j5)(e.records[0].expected>e.records[0].actual?{"font-weight":"bold",color:"red"}:{})},(0,l.zw)(L.formatPercentage(e.records[0].actual)),5),(0,o._)("td",x,(0,l.zw)(L.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,o.Wm)(c.k,{modelValue:Z.currentPage,"onUpdate:modelValue":t[4]||(t[4]=e=>Z.currentPage=e),length:Z.totalPages,"total-visible":7,onInput:L.fetchData},null,8,["modelValue","length","onInput"])])):(0,o.kq)("",!0),Z.selectedLoopId&&!Z.showDetails&&"table"===Z.displayMode?((0,o.wg)(),(0,o.iD)("div",M,[(0,o.Wm)(d.Y,null,{default:(0,o.w5)((()=>[(0,o._)("thead",null,[(0,o._)("tr",null,[I,((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(L.quarterSummary,((e,t)=>((0,o.wg)(),(0,o.iD)("th",{key:t,class:(0,l.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"}," 【"+(0,l.zw)(e.year)+" Q"+(0,l.zw)(e.quarter)+"】 第"+(0,l.zw)(e.week)+"周 ",3)))),128))]),(0,o._)("tr",null,[((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(L.allDateRanges,((e,t)=>((0,o.wg)(),(0,o.iD)("th",{key:t,class:(0,l.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"},[(0,o.Uk)((0,l.zw)(e)+" ",1),0===t?((0,o.wg)(),(0,o.j4)(i.t,{key:0,color:"yellow"},{default:(0,o.w5)((()=>[(0,o.Uk)("mdi-new-box")])),_:1})):(0,o.kq)("",!0)],2)))),128))])]),(0,o._)("tbody",null,[((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(Z.TableData,(e=>((0,o.wg)(),(0,o.iD)("tr",{key:e.pv_name},[(0,o._)("td",C,(0,l.zw)(e.pv_name),1),((0,o.wg)(!0),(0,o.iD)(o.HY,null,(0,o.Ko)(e.date_ranges,(e=>((0,o.wg)(),(0,o.iD)(o.HY,null,[(0,o._)("td",{style:(0,l.j5)(e.records[0].expected>e.records[0].actual?{"font-weight":"bold",color:"red"}:{})},(0,l.zw)(L.formatPercentage(e.records[0].actual)),5),(0,o._)("td",U,(0,l.zw)(L.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,o.Wm)(c.k,{modelValue:Z.currentPage,"onUpdate:modelValue":t[5]||(t[5]=e=>Z.currentPage=e),length:Z.totalPages,"total-visible":7,onInput:L.fetchData},null,8,["modelValue","length","onInput"])])):(0,o.kq)("",!0)])),_:1})}a(560);var L=a(6160),Y=a(440),W=a(9351),H={components:{Chart:L.Z},data(){return{loops:[],cases:[],selectedProject:[],selectedPlan:null,selectedLoopId:null,timeMode:"week",displayMode:"table",projectType:"engineering",showDetails:!1,weekTableData:[],quarterTableData:[],TableData:[],itemsPerPage:3,currentPage:1,totalPages:0}},watch:{selectedLoopId:"fetchData",showDetails:"fetchData",currentPage:"fetchData",projectType:"fetchData",timeMode:"fetchData",displayMode:"fetchData"},async created(){this.selectedPlan=this.$route.query.Plan,this.selectedProject=this.$route.query.Project,await this.fetchLoops()},computed:{displayModeText(){return"table"===this.displayMode?"表格":"報表"},projectTypeText(){return"engineering"===this.projectType?"工程":"銀行"},allDateRanges(){const e=new Set;return this.showDetails?"week"===this.timeMode?this.weekTableData.forEach((t=>{t.date_ranges.forEach((t=>{e.add(t.date_range)}))})):"quarter"===this.timeMode&&this.quarterTableData.forEach((t=>{t.date_ranges.forEach((t=>{e.add(t.date_range)}))})):this.TableData.forEach((t=>{t.date_ranges.forEach((t=>{e.add(t.date_range)}))})),Array.from(e)},quarterSummary(){let e=this.showDetails?this.quarterTableData:this.TableData;if(!e.length)return[];const t=new Set;return e.forEach((e=>{e.date_ranges.forEach((e=>{const a=`${e.year}-Q${e.quarter}-${e.week}`;t.add(a)}))})),Array.from(t).map((e=>{const[t,a,o]=e.split("-");return{year:t,quarter:a.replace("Q",""),week:o}}))},uniquePvNames(){const e=new Map;return this.chartData.datasets&&this.chartData.datasets.forEach((t=>{const a=t.label.split(" ")[0],o=t.borderColor;e.has(a)||e.set(a,o)})),Array.from(e).map((([e,t])=>({name:e,color:t})))}},methods:{organizeTableData(e){const t=[],a=new Map;return e.forEach((e=>{const{pv_name:t,date_range:o,actual:l,expected:r,year:s,quarter:n,week:i}=e;a.has(t)||a.set(t,{pv_name:t,date_ranges:[]});const c=a.get(t);let d=c.date_ranges.find((e=>e.date_range===o));d||(d={date_range:o,records:[],year:s,quarter:n,week:i},c.date_ranges.push(d)),d.records.push({actual:l,expected:r}),void 0!==s&&(d.year=s),void 0!==n&&(d.quarter=n),void 0!==i&&(d.week=i)})),a.forEach((e=>{t.push(e)})),console.log(t),t},async fetchLoops(){try{console.log("api response:",this.selectedProject);const{data:e}=await(0,Y.m0)(this.selectedProject);this.loops=e}catch(e){console.error("Error fetching loops:",e)}},async fetchData(){if(this.selectedLoopId){this.isLoading=!0;try{let e;if(console.log(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),this.showDetails)if(this.showDetails&&"week"===this.timeMode)e=await(0,W.ob)(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),this.weekTableData=this.organizeTableData(e.data.results);else{if(!this.showDetails||"quarter"!==this.timeMode)return void console.error("Invalid time mode:",this.timeMode);e=await(0,W.ZP)(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),this.quarterTableData=this.organizeTableData(e.data.results)}else e=await(0,W.iY)(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),this.TableData=this.organizeTableData(e.data.results),console.log("chartData",this.chartData);console.log(e.data.results),this.totalPages=e.data.totalPages}catch(e){console.error("Error fetching data:",e),this.weekTableData=[],this.quarterTableData=[]}finally{this.isLoading=!1}}},selectLoop(e){this.selectedLoopId=e},toggleDisplayMode(){this.displayMode="table"===this.displayMode?"report":"table",this.showDetails=!1},toggleProjectType(){this.projectType="engineering"===this.projectType?"bank":"engineering"},formatPercentage(e){return`${(100*Number(e)).toFixed(2)}%`},selectPv(e){console.log(`Selected PV: ${e}`)}}},E=a(3744);const K=(0,E.Z)(H,[["render",Z],["__scopeId","data-v-0a10b568"]]);var V=K}}]);
//# sourceMappingURL=972.f57b870c.js.map