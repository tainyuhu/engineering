"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[66],{9692:function(e,t,a){a.r(t),a.d(t,{default:function(){return X}});var l=a(6252),o=a(3577),s=a(9095),r=a(9773),n=a(1669),i=a(7737),c=a(2793),d=a(2762);const g=e=>((0,l.dD)("data-v-2fa6af26"),e=e(),(0,l.Cn)(),e),h={class:"mb-3",style:{"padding-left":"20px",display:"flex","align-items":"center"}},u=g((()=>(0,l._)("span",{class:"font-weight-bold ml-2"},"瀏覽22.8KV工程進度：",-1))),p={class:"mb-3",style:{"padding-left":"40px",display:"flex","align-items":"center"}},w=g((()=>(0,l._)("span",{class:"font-weight-bold ml-2"},"選擇迴路：",-1))),m=g((()=>(0,l._)("span",{class:"ml-1 note-span"},"※在下方選擇一個迴路後，才會顯示迴路的進度內容",-1))),_={class:"loops-selection"},k={class:"function-row"},f={key:0,class:"status-and-page-size-selector"},y=g((()=>(0,l._)("span",null,"狀態：",-1))),D={key:1,class:"py-2 d-flex justify-center"},b={key:2},v={key:0,class:"div-container"},T=g((()=>(0,l._)("th",null,"案場 / 週間",-1))),P={class:"font-weight-bold"},q={class:"expected"},x={key:1,class:"div-container"},j=g((()=>(0,l._)("th",{rowspan:"2"},"案場 / 週間",-1))),M={class:"font-weight-bold"},z={class:"expected"},I={key:2,class:"div-container"},C=g((()=>(0,l._)("th",{rowspan:"2"},"案場 / 週間",-1))),L={class:"font-weight-bold"},U={class:"expected"},K={key:3,class:"div-container"},Y={key:4,class:"report-container",style:{display:"flex",height:"100%"}},V={class:"sidebar",style:{flex:"2","background-color":"white",margin:"10px",height:"calc(100% - 20px)",display:"flex","flex-direction":"column"}},$={class:"mb-3",style:{"padding-left":"20px",display:"flex","align-items":"center"}},W=g((()=>(0,l._)("span",{class:"font-weight-bold ml-2"},"選擇案場：",-1))),H=g((()=>(0,l._)("div",null,[(0,l._)("span",{class:"ml-1 note-span"},"※可以透過點選取消與選擇案場")],-1))),E={class:"chart-container",style:{flex:"8",height:"100%"}};function A(e,t,a,g,A,S){const Z=(0,l.up)("Chart");return(0,l.wg)(),(0,l.j4)(n.K,null,{default:(0,l.w5)((()=>[(0,l._)("div",h,[(0,l.Wm)(i.t,{color:"blue"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-chevron-right-box")])),_:1}),u]),(0,l._)("div",p,[(0,l.Wm)(i.t,{color:"orange"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-chevron-right-box")])),_:1}),w,m]),(0,l._)("div",_,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(A.loops,(e=>((0,l.wg)(),(0,l.j4)(s.T,{key:e.loop_id,class:(0,o.C_)(["loop-button",{"loop-button--active":e.loop_id===A.selectedLoopId}]),onClick:t=>S.selectLoop(e.loop_id)},{default:(0,l.w5)((()=>[(0,l.Uk)((0,o.zw)(e.loop_name),1)])),_:2},1032,["class","onClick"])))),128))]),(0,l._)("div",k,[A.selectedLoopId?((0,l.wg)(),(0,l.iD)("div",f,[y,(0,l.Wm)(s.T,{class:(0,o.C_)("table"===A.displayMode?"report-btn":"table-btn"),onClick:S.toggleDisplayMode},{default:(0,l.w5)((()=>[(0,l.Uk)((0,o.zw)(S.displayModeText),1)])),_:1},8,["class","onClick"])])):(0,l.kq)("",!0),A.showDetails?((0,l.wg)(),(0,l.iD)("div",D,[(0,l.Wm)(r.fF,{mandatory:"",modelValue:A.timeMode,"onUpdate:modelValue":t[0]||(t[0]=e=>A.timeMode=e),class:"time-toggle",variant:"outlined"},{default:(0,l.w5)((()=>[(0,l.Wm)(s.T,{class:"time-btn",value:"quarter"},{default:(0,l.w5)((()=>[(0,l.Uk)("季")])),_:1}),(0,l.Wm)(s.T,{class:"time-btn",value:"week"},{default:(0,l.w5)((()=>[(0,l.Uk)("週")])),_:1})])),_:1},8,["modelValue"])])):(0,l.kq)("",!0),A.selectedLoopId?((0,l.wg)(),(0,l.iD)("div",b,[(0,l.Wm)(s.T,{class:(0,o.C_)("engineering"===A.projectType?"bank-btn":"engineering-btn"),onClick:S.toggleProjectType},{default:(0,l.w5)((()=>[(0,l.Uk)((0,o.zw)(S.projectTypeText),1)])),_:1},8,["class","onClick"]),(0,l.Wm)(s.T,{class:"overview-btn",rounded:"0",onClick:t[1]||(t[1]=e=>A.showDetails=!1)},{default:(0,l.w5)((()=>[(0,l.Uk)("總覽")])),_:1}),(0,l.Wm)(s.T,{class:"details-btn",rounded:"0",onClick:t[2]||(t[2]=e=>A.showDetails=!0)},{default:(0,l.w5)((()=>[(0,l.Uk)("詳情")])),_:1})])):(0,l.kq)("",!0)]),A.selectedLoopId&&"week"===A.timeMode&&A.showDetails?((0,l.wg)(),(0,l.iD)("div",v,[(0,l.Wm)(d.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[T,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.allDateRanges,((e,t)=>((0,l.wg)(),(0,l.iD)("th",{key:t,class:(0,o.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"},[(0,l.Uk)((0,o.zw)(e)+" ",1),0===t?((0,l.wg)(),(0,l.j4)(i.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(A.weekTableData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.voltage228k_name},[(0,l._)("td",P,(0,o.zw)(e.voltage228k_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",null,(0,o.zw)(S.formatPercentage(e.records[0].actual)),1),(0,l._)("td",q,(0,o.zw)(S.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(c.k,{modelValue:A.currentPage,"onUpdate:modelValue":t[3]||(t[3]=e=>A.currentPage=e),length:A.totalPages,"total-visible":7,onInput:S.fetchData},null,8,["modelValue","length","onInput"])])):(0,l.kq)("",!0),A.selectedLoopId&&"quarter"===A.timeMode&&A.showDetails?((0,l.wg)(),(0,l.iD)("div",x,[(0,l.Wm)(d.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[j,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.quarterSummary,((e,t)=>((0,l.wg)(),(0,l.iD)("th",{key:t,class:(0,o.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"}," 【"+(0,o.zw)(e.year)+" Q"+(0,o.zw)(e.quarter)+"】 第"+(0,o.zw)(e.week)+"周 ",3)))),128))]),(0,l._)("tr",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.allDateRanges,((e,t)=>((0,l.wg)(),(0,l.iD)("th",{key:t,class:(0,o.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"},[(0,l.Uk)((0,o.zw)(e)+" ",1),0===t?((0,l.wg)(),(0,l.j4)(i.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(A.quarterTableData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.voltage228k_name},[(0,l._)("td",M,(0,o.zw)(e.voltage228k_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",null,(0,o.zw)(S.formatPercentage(e.records[0].actual)),1),(0,l._)("td",z,(0,o.zw)(S.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(c.k,{modelValue:A.currentPage,"onUpdate:modelValue":t[4]||(t[4]=e=>A.currentPage=e),length:A.totalPages,"total-visible":7,onInput:S.fetchData},null,8,["modelValue","length","onInput"])])):(0,l.kq)("",!0),A.selectedLoopId&&!A.showDetails&&"table"===A.displayMode?((0,l.wg)(),(0,l.iD)("div",I,[(0,l.Wm)(d.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[C,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.quarterSummary,((e,t)=>((0,l.wg)(),(0,l.iD)("th",{key:t,class:(0,o.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"}," 【"+(0,o.zw)(e.year)+" Q"+(0,o.zw)(e.quarter)+"】 第"+(0,o.zw)(e.week)+"周 ",3)))),128))]),(0,l._)("tr",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.allDateRanges,((e,t)=>((0,l.wg)(),(0,l.iD)("th",{key:t,class:(0,o.C_)({"special-bg":0===t,"normal-bg":0!==t}),colspan:"2"},[(0,l.Uk)((0,o.zw)(e)+" ",1),0===t?((0,l.wg)(),(0,l.j4)(i.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(A.TableData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.voltage228k_name},[(0,l._)("td",L,(0,o.zw)(e.voltage228k_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",null,(0,o.zw)(S.formatPercentage(e.records[0].actual)),1),(0,l._)("td",U,(0,o.zw)(S.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(c.k,{modelValue:A.currentPage,"onUpdate:modelValue":t[5]||(t[5]=e=>A.currentPage=e),length:A.totalPages,"total-visible":7,onInput:S.fetchData},null,8,["modelValue","length","onInput"])])):(0,l.kq)("",!0),A.selectedLoopId&&"report"===A.displayMode&&"quarter"===A.timeMode?((0,l.wg)(),(0,l.iD)("div",K)):(0,l.kq)("",!0),A.selectedLoopId&&"report"===A.displayMode?((0,l.wg)(),(0,l.iD)("div",Y,[(0,l._)("div",V,[(0,l._)("div",$,[(0,l.Wm)(i.t,{color:"green"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-chevron-right-box")])),_:1}),W,H]),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(S.uniqueVoltage228KNames,(e=>((0,l.wg)(),(0,l.iD)("div",{key:e.name,class:"voltage228k-name-button",style:{"flex-grow":"1",margin:"5px"}},[(0,l.Wm)(s.T,{block:"",rounded:"0",style:(0,o.j5)({background:e.color,color:"white"}),onClick:t=>S.selectVoltage228K(e.name)},{default:(0,l.w5)((()=>[(0,l.Uk)((0,o.zw)(e.name),1)])),_:2},1032,["style","onClick"])])))),128))]),(0,l._)("div",E,[Object.keys(A.chartData).length>0?((0,l.wg)(),(0,l.j4)(Z,{key:0,chartData:A.chartData,chartOptions:A.chartOptions},null,8,["chartData","chartOptions"])):(0,l.kq)("",!0)])])):(0,l.kq)("",!0)])),_:1})}a(560);var S=a(340),Z=a(440),O=a(9022);const R=(e,t,a,l)=>O.Z.get(`/api/v1/get_voltage228k_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),N=(e,t,a,l)=>O.Z.get(`/api/v1/get_voltage228k_all_quarter_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),F=(e,t,a,l)=>O.Z.get(`/api/v1/get_voltage228k_quarter_progress/${e}/${t}/${a}/${l}/`,{headers:{Accept:"application/json"}}),Q=(e,t)=>O.Z.get(`/api/v1/get_voltage228k_quarter_chart_progress/${e}/${t}/`,{headers:{Accept:"application/json"}});var B={components:{Chart:S.Z},data(){return{loops:[],cases:[],selectedProject:[],selectedPlan:null,selectedLoopId:null,timeMode:"week",displayMode:"table",projectType:"engineering",showDetails:!1,weekTableData:[],quarterTableData:[],TableData:[],itemsPerPage:2,currentPage:1,totalPages:0,chartData:{},chartOptions:{}}},watch:{selectedLoopId:"fetchData",showDetails:"fetchData",currentPage:"fetchData",projectType:"fetchData",timeMode:"fetchData",displayMode:"fetchData"},async created(){this.selectedPlan=this.$route.query.Plan,this.selectedProject=this.$route.query.Project,await this.fetchLoops()},computed:{displayModeText(){return"table"===this.displayMode?"表格":"報表"},projectTypeText(){return"engineering"===this.projectType?"工程":"銀行"},allDateRanges(){const e=new Set;return this.showDetails?"week"===this.timeMode?this.weekTableData.forEach((t=>{t.date_ranges.forEach((t=>{e.add(t.date_range)}))})):"quarter"===this.timeMode&&this.quarterTableData.forEach((t=>{t.date_ranges.forEach((t=>{e.add(t.date_range)}))})):this.TableData.forEach((t=>{t.date_ranges.forEach((t=>{e.add(t.date_range)}))})),Array.from(e)},quarterSummary(){let e=this.showDetails?this.quarterTableData:this.TableData;if(!e.length)return[];const t=new Set;return e.forEach((e=>{e.date_ranges.forEach((e=>{t.add({year:e.year,quarter:e.quarter,week:e.week})}))})),Array.from(t)},uniqueVoltage228KNames(){const e=new Map;return this.chartData.datasets&&this.chartData.datasets.forEach((t=>{const a=t.label.split(" ")[0],l=t.borderColor;e.has(a)||e.set(a,l)})),Array.from(e).map((([e,t])=>({name:e,color:t})))}},methods:{organizeTableData(e){const t=[],a=new Map;return e.forEach((e=>{const{voltage228k_name:t,date_range:l,actual:o,expected:s,year:r,quarter:n,week:i}=e;a.has(t)||a.set(t,{voltage228k_name:t,date_ranges:[]});const c=a.get(t);let d=c.date_ranges.find((e=>e.date_range===l));d||(d={date_range:l,records:[],year:r,quarter:n,week:i},c.date_ranges.push(d)),d.records.push({actual:o,expected:s}),void 0!==r&&(d.year=r),void 0!==n&&(d.quarter=n),void 0!==i&&(d.week=i)})),a.forEach((e=>{t.push(e)})),t},async fetchLoops(){try{console.log("api response:",this.selectedProject);const{data:e}=await(0,Z.m0)(this.selectedProject);this.loops=e}catch(e){console.error("Error fetching loops:",e)}},async fetchData(){if(this.selectedLoopId){this.isLoading=!0;try{let e;if(console.log(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),"report"===this.displayMode)e=await Q(this.selectedLoopId,this.projectType),this.chartData=e.data,console.log("chartData",this.chartData);else if(this.showDetails)if(this.showDetails&&"week"===this.timeMode)e=await R(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),this.weekTableData=this.organizeTableData(e.data.results);else{if(!this.showDetails||"quarter"!==this.timeMode)return void console.error("Invalid time mode:",this.timeMode);e=await N(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),this.quarterTableData=this.organizeTableData(e.data.results)}else e=await F(this.selectedLoopId,this.currentPage,this.itemsPerPage,this.projectType),this.TableData=this.organizeTableData(e.data.results);console.log(e.data.results),this.totalPages=e.data.totalPages}catch(e){console.error("Error fetching data:",e),this.weekTableData=[],this.quarterTableData=[]}finally{this.isLoading=!1}}},selectLoop(e){this.selectedLoopId=e},toggleDisplayMode(){this.displayMode="table"===this.displayMode?"report":"table",this.showDetails=!1},toggleProjectType(){this.projectType="engineering"===this.projectType?"bank":"engineering"},formatPercentage(e){return`${(100*Number(e)).toFixed(2)}%`},selectVoltage228K(e){console.log(`Selected Voltage228K: ${e}`)}}},G=a(3744);const J=(0,G.Z)(B,[["render",A],["__scopeId","data-v-2fa6af26"]]);var X=J}}]);
//# sourceMappingURL=66.a767b1e9.js.map