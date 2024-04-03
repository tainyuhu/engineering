"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[233],{5305:function(e,t,a){a.r(t),a.d(t,{default:function(){return X}});var l=a(6252),s=a(3577),o=a(9095),r=a(9773),n=a(1669),i=a(7737),d=a(2793),c=a(2762);const g=e=>((0,l.dD)("data-v-af00b162"),e=e(),(0,l.Cn)(),e),h={class:"mb-3",style:{"padding-left":"20px",display:"flex","align-items":"center"}},u=g((()=>(0,l._)("span",{class:"font-weight-bold ml-2"},"瀏覽養殖工程進度：",-1))),p={class:"mb-3",style:{"padding-left":"40px",display:"flex","align-items":"center"}},w=g((()=>(0,l._)("span",{class:"font-weight-bold ml-2"},"選擇迴路：",-1))),m=g((()=>(0,l._)("span",{class:"ml-1 note-span"},"※在下方選擇一個迴路後，才會顯示迴路的進度內容",-1))),_={class:"loops-selection"},b={class:"function-row"},y={key:0,class:"status-and-page-size-selector"},f=g((()=>(0,l._)("span",null,"狀態：",-1))),D={key:1,class:"py-2 d-flex justify-center"},k={key:2},v={key:0,class:"div-container"},T=g((()=>(0,l._)("th",null,"案場 / 週間",-1))),P={class:"font-weight-bold"},q={class:"expected"},x={key:1,class:"div-container"},j=g((()=>(0,l._)("th",{rowspan:"2"},"案場 / 週間",-1))),M={class:"font-weight-bold"},z={class:"expected"},I={key:2,class:"div-container"},C=g((()=>(0,l._)("th",{rowspan:"2"},"案場 / 週間",-1))),L={class:"font-weight-bold"},U={class:"expected"},Y={key:3,class:"div-container"},$={key:4,class:"report-container",style:{display:"flex",height:"100%"}},W={class:"sidebar",style:{flex:"2","background-color":"white",margin:"10px",height:"calc(100% - 20px)",display:"flex","flex-direction":"column"}},H={class:"mb-3",style:{"padding-left":"20px",display:"flex","align-items":"center"}},K=g((()=>(0,l._)("span",{class:"font-weight-bold ml-2"},"選擇案場：",-1))),E=g((()=>(0,l._)("div",null,[(0,l._)("span",{class:"ml-1 note-span"},"※可以透過點選取消與選擇案場")],-1))),V={class:"chart-container",style:{flex:"8",height:"100%"}};function A(e,t,a,g,A,S){const Z=(0,l.up)("Chart");return(0,l.wg)(),(0,l.j4)(n.K,null,{default:(0,l.w5)((()=>[(0,l._)("div",h,[(0,l.Wm)(i.t,{color:"blue"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-chevron-right-box")])),_:1}),u]),(0,l._)("div",p,[(0,l.Wm)(i.t,{color:"orange"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-chevron-right-box")])),_:1}),w,m]),(0,l._)("div",_,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(A.loops,(e=>((0,l.wg)(),(0,l.j4)(o.T,{key:e.loop_id,class:(0,s.C_)(["loop-button",{"loop-button--active":e.loop_id===A.selectedLoopId}]),onClick:t=>S.selectLoop(e.loop_id)},{default:(0,l.w5)((()=>[(0,l.Uk)((0,s.zw)(e.loop_name),1)])),_:2},1032,["class","onClick"])))),128))]),(0,l._)("div",b,[A.selectedLoopId?((0,l.wg)(),(0,l.iD)("div",y,[f,(0,l.Wm)(o.T,{class:(0,s.C_)("table"===A.displayMode?"report-btn":"table-btn"),onClick:S.toggleDisplayMode},{default:(0,l.w5)((()=>[(0,l.Uk)((0,s.zw)(S.displayModeText),1)])),_:1},8,["class","onClick"])])):(0,l.kq)("",!0),A.showDetails?((0,l.wg)(),(0,l.iD)("div",D,[(0,l.Wm)(r.fF,{mandatory:"",modelValue:A.timeMode,"onUpdate:modelValue":t[0]||(t[0]=e=>A.timeMode=e),class:"time-toggle",variant:"outlined"},{default:(0,l.w5)((()=>[(0,l.Wm)(o.T,{class:"time-btn",value:"quarter"},{default:(0,l.w5)((()=>[(0,l.Uk)("季")])),_:1}),(0,l.Wm)(o.T,{class:"time-btn",value:"week"},{default:(0,l.w5)((()=>[(0,l.Uk)("週")])),_:1})])),_:1},8,["modelValue"])])):(0,l.kq)("",!0),A.selectedLoopId?((0,l.wg)(),(0,l.iD)("div",k,[(0,l.Wm)(o.T,{class:(0,s.C_)("engineering"===A.projectType?"bank-btn":"engineering-btn"),onClick:S.toggleProjectType},{default:(0,l.w5)((()=>[(0,l.Uk)((0,s.zw)(S.projectTypeText),1)])),_:1},8,["class","onClick"]),(0,l.Wm)(o.T,{class:"overview-btn",rounded:"0",onClick:t[1]||(t[1]=e=>A.showDetails=!1)},{default:(0,l.w5)((()=>[(0,l.Uk)("總覽")])),_:1}),(0,l.Wm)(o.T,{class:"details-btn",rounded:"0",onClick:t[2]||(t[2]=e=>A.showDetails=!0)},{default:(0,l.w5)((()=>[(0,l.Uk)("詳情")])),_:1})])):(0,l.kq)("",!0)]),A.selectedLoopId&&"week"===A.timeMode&&A.showDetails?((0,l.wg)(),(0,l.iD)("div",v,[(0,l.Wm)(c.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[T,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.allDateRanges,((e,t)=>((0,l.wg)(),(0,l.iD)("th",{key:t,class:(0,s.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"},[(0,l.Uk)((0,s.zw)(e)+" ",1),0===t?((0,l.wg)(),(0,l.j4)(i.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(A.weekTableData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.breeding_name},[(0,l._)("td",P,(0,s.zw)(e.breeding_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",null,(0,s.zw)(S.formatPercentage(e.records[0].actual)),1),(0,l._)("td",q,(0,s.zw)(S.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(d.k,{modelValue:A.currentPage,"onUpdate:modelValue":t[3]||(t[3]=e=>A.currentPage=e),length:A.totalPages,"total-visible":7,onInput:S.fetchData},null,8,["modelValue","length","onInput"])])):(0,l.kq)("",!0),A.selectedLoopId&&"quarter"===A.timeMode&&A.showDetails?((0,l.wg)(),(0,l.iD)("div",x,[(0,l.Wm)(c.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[j,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.quarterSummary,((e,t)=>((0,l.wg)(),(0,l.iD)("th",{key:t,class:(0,s.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"}," 【"+(0,s.zw)(e.year)+" Q"+(0,s.zw)(e.quarter)+"】 第"+(0,s.zw)(e.week)+"周 ",3)))),128))]),(0,l._)("tr",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.allDateRanges,((e,t)=>((0,l.wg)(),(0,l.iD)("th",{key:t,class:(0,s.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"},[(0,l.Uk)((0,s.zw)(e)+" ",1),0===t?((0,l.wg)(),(0,l.j4)(i.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(A.quarterTableData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.breeding_name},[(0,l._)("td",M,(0,s.zw)(e.breeding_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",null,(0,s.zw)(S.formatPercentage(e.records[0].actual)),1),(0,l._)("td",z,(0,s.zw)(S.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(d.k,{modelValue:A.currentPage,"onUpdate:modelValue":t[4]||(t[4]=e=>A.currentPage=e),length:A.totalPages,"total-visible":7,onInput:S.fetchData},null,8,["modelValue","length","onInput"])])):(0,l.kq)("",!0),A.selectedLoopId&&!A.showDetails&&"table"===A.displayMode?((0,l.wg)(),(0,l.iD)("div",I,[(0,l.Wm)(c.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[C,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.quarterSummary,((e,t)=>((0,l.wg)(),(0,l.iD)("th",{key:t,class:(0,s.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"}," 【"+(0,s.zw)(e.year)+" Q"+(0,s.zw)(e.quarter)+"】 第"+(0,s.zw)(e.week)+"周 ",3)))),128))]),(0,l._)("tr",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.allDateRanges,((e,t)=>((0,l.wg)(),(0,l.iD)("th",{key:t,class:(0,s.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"},[(0,l.Uk)((0,s.zw)(e)+" ",1),0===t?((0,l.wg)(),(0,l.j4)(i.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(A.TableData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.breeding_name},[(0,l._)("td",L,(0,s.zw)(e.breeding_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",null,(0,s.zw)(S.formatPercentage(e.records[0].actual)),1),(0,l._)("td",U,(0,s.zw)(S.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(d.k,{modelValue:A.currentPage,"onUpdate:modelValue":t[5]||(t[5]=e=>A.currentPage=e),length:A.totalPages,"total-visible":7,onInput:S.fetchData},null,8,["modelValue","length","onInput"])])):(0,l.kq)("",!0),A.selectedLoopId&&"report"===A.displayMode&&"quarter"===A.timeMode?((0,l.wg)(),(0,l.iD)("div",Y)):(0,l.kq)("",!0),A.selectedLoopId&&"report"===A.displayMode?((0,l.wg)(),(0,l.iD)("div",$,[(0,l._)("div",W,[(0,l._)("div",H,[(0,l.Wm)(i.t,{color:"green"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-chevron-right-box")])),_:1}),K,E]),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.uniqueBreedingNames,(e=>((0,l.wg)(),(0,l.iD)("div",{key:e.name,class:"breeding-name-button",style:{"flex-grow":"1",margin:"5px"}},[(0,l.Wm)(o.T,{block:"",rounded:"0",style:(0,s.j5)({background:e.color,color:"white"}),onClick:t=>S.selectBreeding(e.name)},{default:(0,l.w5)((()=>[(0,l.Uk)((0,s.zw)(e.name),1)])),_:2},1032,["style","onClick"])])))),128))]),(0,l._)("div",V,[Object.keys(A.chartData).length>0?((0,l.wg)(),(0,l.j4)(Z,{key:0,chartData:A.chartData,chartOptions:A.chartOptions},null,8,["chartData","chartOptions"])):(0,l.kq)("",!0)])])):(0,l.kq)("",!0)])),_:1})}a(560);var S=a(340),Z=a(440),B=a(9022);const O=(e,t,a,l)=>B.Z.get(`/api/v1/get_breeding_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),R=(e,t,a,l)=>B.Z.get(`/api/v1/get_breeding_all_quarter_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),N=(e,t,a,l)=>B.Z.get(`/api/v1/get_breeding_quarter_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),F=(e,t)=>B.Z.get(`/api/v1/get_breeding_quarter_chart_progress/${e}/${t}/`,{headers:{Accept:"application/json"}});var Q={components:{Chart:S.Z},data(){return{loops:[],cases:[],selectedProject:[],selectedPlan:null,selectedLoopId:null,timeMode:"week",displayMode:"table",projectType:"engineering",showDetails:!1,weekTableData:[],quarterTableData:[],TableData:[],itemsPerPage:2,currentPage:1,totalPages:0,chartData:{},chartOptions:{}}},watch:{selectedLoopId:"fetchData",showDetails:"fetchData",currentPage:"fetchData",projectType:"fetchData",timeMode:"fetchData",displayMode:"fetchData"},async created(){this.selectedPlan=this.$route.query.Plan,this.selectedProject=this.$route.query.Project,await this.fetchLoops()},computed:{displayModeText(){return"table"===this.displayMode?"表格":"報表"},projectTypeText(){return"engineering"===this.projectType?"工程":"銀行"},allDateRanges(){const e=new Set;return this.showDetails?"week"===this.timeMode?this.weekTableData.forEach((t=>{t.date_ranges.forEach((t=>{e.add(t.date_range)}))})):"quarter"===this.timeMode&&this.quarterTableData.forEach((t=>{t.date_ranges.forEach((t=>{e.add(t.date_range)}))})):this.TableData.forEach((t=>{t.date_ranges.forEach((t=>{e.add(t.date_range)}))})),Array.from(e)},quarterSummary(){let e=this.showDetails?this.quarterTableData:this.TableData;if(!e.length)return[];const t=new Set;return e.forEach((e=>{e.date_ranges.forEach((e=>{t.add({year:e.year,quarter:e.quarter,week:e.week})}))})),Array.from(t)},uniqueBreedingNames(){const e=new Map;return this.chartData.datasets&&this.chartData.datasets.forEach((t=>{const a=t.label.split(" ")[0],l=t.borderColor;e.has(a)||e.set(a,l)})),Array.from(e).map((([e,t])=>({name:e,color:t})))}},methods:{organizeTableData(e){const t=[],a=new Map;return e.forEach((e=>{const{breeding_name:t,date_range:l,actual:s,expected:o,year:r,quarter:n,week:i}=e;a.has(t)||a.set(t,{breeding_name:t,date_ranges:[]});const d=a.get(t);let c=d.date_ranges.find((e=>e.date_range===l));c||(c={date_range:l,records:[],year:r,quarter:n,week:i},d.date_ranges.push(c)),c.records.push({actual:s,expected:o}),void 0!==r&&(c.year=r),void 0!==n&&(c.quarter=n),void 0!==i&&(c.week=i)})),a.forEach((e=>{t.push(e)})),t},async fetchLoops(){try{console.log("api response:",this.selectedProject);const{data:e}=await(0,Z.m0)(this.selectedProject);this.loops=e}catch(e){console.error("Error fetching loops:",e)}},async fetchData(){if(this.selectedLoopId){this.isLoading=!0;try{let e;if(console.log(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),"report"===this.displayMode)e=await F(this.selectedLoopId,this.projectType),this.chartData=e.data,console.log("chartData",this.chartData);else if(this.showDetails)if(this.showDetails&&"week"===this.timeMode)e=await O(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),this.weekTableData=this.organizeTableData(e.data.results);else{if(!this.showDetails||"quarter"!==this.timeMode)return void console.error("Invalid time mode:",this.timeMode);e=await R(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),this.quarterTableData=this.organizeTableData(e.data.results)}else e=await N(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),this.TableData=this.organizeTableData(e.data.results);console.log(e.data.results),this.totalPages=e.data.totalPages}catch(e){console.error("Error fetching data:",e),this.weekTableData=[],this.quarterTableData=[]}finally{this.isLoading=!1}}},selectLoop(e){this.selectedLoopId=e},toggleDisplayMode(){this.displayMode="table"===this.displayMode?"report":"table",this.showDetails=!1},toggleProjectType(){this.projectType="engineering"===this.projectType?"bank":"engineering"},formatPercentage(e){return`${(100*Number(e)).toFixed(2)}%`},selectBreeding(e){console.log(`Selected Breeding: ${e}`)}}},G=a(3744);const J=(0,G.Z)(Q,[["render",A],["__scopeId","data-v-af00b162"]]);var X=J}}]);
//# sourceMappingURL=233.4217e4b6.js.e92875a37bc4.map