"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[132],{9942:function(e,a,t){t.r(a),t.d(a,{default:function(){return N}});var l=t(6252),n=t(3577),r=t(9095),o=t(9773),s=t(1669),d=t(7737),c=t(2793),i=t(2762);const g=e=>((0,l.dD)("data-v-57270b0e"),e=e(),(0,l.Cn)(),e),u={class:"mb-3",style:{"padding-left":"20px",display:"flex","align-items":"center"}},p=g((()=>(0,l._)("span",{class:"font-weight-bold ml-2"},"瀏覽總迴路工程進度：",-1))),w={class:"function-row"},_={class:"status-and-page-size-selector"},m=g((()=>(0,l._)("span",null,"狀態：",-1))),h={key:0,class:"py-2 d-flex justify-center"},k={key:0,class:"div-container"},y=g((()=>(0,l._)("th",null,"迴路 / 週間",-1))),D={class:"font-weight-bold"},b={class:"expected"},f={key:1,class:"div-container"},x=g((()=>(0,l._)("th",{rowspan:"2"},"迴路 / 週間",-1))),P={class:"font-weight-bold"},q={class:"expected"},z={key:2,class:"div-container"},T=g((()=>(0,l._)("th",{rowspan:"2"},"迴路 / 週間",-1))),v={class:"font-weight-bold"},S={class:"expected"};function M(e,a,t,g,M,j){return(0,l.wg)(),(0,l.j4)(s.K,null,{default:(0,l.w5)((()=>[(0,l._)("div",u,[(0,l.Wm)(d.t,{color:"blue"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-chevron-right-box")])),_:1}),p]),(0,l._)("div",w,[(0,l._)("div",_,[m,(0,l.Wm)(r.T,{class:(0,n.C_)("table"===M.displayMode?"report-btn":"table-btn"),onClick:j.toggleDisplayMode},{default:(0,l.w5)((()=>[(0,l.Uk)((0,n.zw)(j.displayModeText),1)])),_:1},8,["class","onClick"])]),M.showDetails?((0,l.wg)(),(0,l.iD)("div",h,[(0,l.Wm)(o.fF,{mandatory:"",modelValue:M.timeMode,"onUpdate:modelValue":a[0]||(a[0]=e=>M.timeMode=e),class:"time-toggle",variant:"outlined"},{default:(0,l.w5)((()=>[(0,l.Wm)(r.T,{class:"time-btn",value:"quarter"},{default:(0,l.w5)((()=>[(0,l.Uk)("季")])),_:1}),(0,l.Wm)(r.T,{class:"time-btn",value:"week"},{default:(0,l.w5)((()=>[(0,l.Uk)("週")])),_:1})])),_:1},8,["modelValue"])])):(0,l.kq)("",!0),(0,l._)("div",null,[(0,l.Wm)(r.T,{class:(0,n.C_)("engineering"===M.projectType?"bank-btn":"engineering-btn"),onClick:j.toggleProjectType},{default:(0,l.w5)((()=>[(0,l.Uk)((0,n.zw)(j.projectTypeText),1)])),_:1},8,["class","onClick"]),(0,l.Wm)(r.T,{class:"overview-btn",rounded:"0",onClick:a[1]||(a[1]=e=>M.showDetails=!1)},{default:(0,l.w5)((()=>[(0,l.Uk)("即時")])),_:1}),(0,l.Wm)(r.T,{class:"details-btn",rounded:"0",onClick:a[2]||(a[2]=e=>M.showDetails=!0)},{default:(0,l.w5)((()=>[(0,l.Uk)("詳情")])),_:1})])]),"week"===M.timeMode&&M.showDetails?((0,l.wg)(),(0,l.iD)("div",k,[(0,l.Wm)(i.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[y,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(j.paginatedDateRanges,((e,a)=>((0,l.wg)(),(0,l.iD)("th",{key:a,class:(0,n.C_)({"special-bg":0===a,"normal-bg":0!==a}),colspan:"2"},[(0,l.Uk)((0,n.zw)(e)+" ",1),0===a?((0,l.wg)(),(0,l.j4)(d.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(j.paginatedData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.loop_name},[(0,l._)("td",D,(0,n.zw)(e.loop_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",null,(0,n.zw)(j.formatPercentage(e.records[0].actual)),1),(0,l._)("td",b,(0,n.zw)(j.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(c.k,{modelValue:M.currentPage,"onUpdate:modelValue":a[3]||(a[3]=e=>M.currentPage=e),length:j.totalPages},null,8,["modelValue","length"])])):(0,l.kq)("",!0),"quarter"===M.timeMode&&M.showDetails?((0,l.wg)(),(0,l.iD)("div",f,[(0,l.Wm)(i.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[x,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(j.quarterSummary,((e,a)=>((0,l.wg)(),(0,l.iD)("th",{key:a,class:(0,n.C_)({"special-bg":0===a,"normal-bg":0!==a}),colspan:"2"}," 【"+(0,n.zw)(e.year)+" Q"+(0,n.zw)(e.quarter)+"】 第"+(0,n.zw)(e.week)+"周 ",3)))),128))]),(0,l._)("tr",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(j.paginatedDateRanges,((e,a)=>((0,l.wg)(),(0,l.iD)("th",{key:a,class:(0,n.C_)({"special-bg":0===a,"normal-bg":0!==a}),colspan:"2"},[(0,l.Uk)((0,n.zw)(e)+" ",1),0===a?((0,l.wg)(),(0,l.j4)(d.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(j.paginatedData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.loop_name},[(0,l._)("td",P,(0,n.zw)(e.loop_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",{style:(0,n.j5)(e.records[0].expected>e.records[0].actual?{"font-weight":"bold",color:"red"}:{})},(0,n.zw)(j.formatPercentage(e.records[0].actual)),5),(0,l._)("td",q,(0,n.zw)(j.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(c.k,{modelValue:M.currentPage,"onUpdate:modelValue":a[4]||(a[4]=e=>M.currentPage=e),length:j.totalPages},null,8,["modelValue","length"])])):(0,l.kq)("",!0),M.showDetails||"table"!==M.displayMode?(0,l.kq)("",!0):((0,l.wg)(),(0,l.iD)("div",z,[(0,l.Wm)(i.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[T,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(j.quarterSummary,((e,a)=>((0,l.wg)(),(0,l.iD)("th",{key:a,class:(0,n.C_)({"special-bg":0===a,"normal-bg":0!==a}),colspan:"2"}," 【"+(0,n.zw)(e.year)+" Q"+(0,n.zw)(e.quarter)+"】 第"+(0,n.zw)(e.week)+"周 ",3)))),128))]),(0,l._)("tr",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(j.paginatedDateRanges,((e,a)=>((0,l.wg)(),(0,l.iD)("th",{key:a,class:(0,n.C_)({"special-bg":0===a,"normal-bg":0!==a}),colspan:"2"},[(0,l.Uk)((0,n.zw)(e)+" ",1),0===a?((0,l.wg)(),(0,l.j4)(d.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(j.paginatedData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.loop_name},[(0,l._)("td",v,(0,n.zw)(e.loop_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",{style:(0,n.j5)(e.records[0].expected>e.records[0].actual?{"font-weight":"bold",color:"red"}:{})},(0,n.zw)(j.formatPercentage(e.records[0].actual)),5),(0,l._)("td",S,(0,n.zw)(j.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(c.k,{modelValue:M.currentPage,"onUpdate:modelValue":a[5]||(a[5]=e=>M.currentPage=e),length:j.totalPages},null,8,["modelValue","length"])]))])),_:1})}t(560);var j=t(3388),C={components:{Chart:j.Z},data(){return{timeMode:"week",displayMode:"table",projectType:"engineering",showDetails:!1,weekTableData:[{actual:.0053,date_range:"2023-12-31 - 2024-01-06",expected:0,loop_name:"SN2"},{actual:.0053,date_range:"2024-01-07 - 2024-01-13",expected:0,loop_name:"SN2"},{actual:.0257,date_range:"2024-01-14 - 2024-01-20",expected:0,loop_name:"SN2"},{actual:.0312,date_range:"2024-01-21 - 2024-01-27",expected:0,loop_name:"SN2"},{actual:.0312,date_range:"2024-01-28 - 2024-02-03",expected:0,loop_name:"SN2"},{actual:.0312,date_range:"2024-02-04 - 2024-02-10",expected:0,loop_name:"SN2"},{actual:.0312,date_range:"2024-02-11 - 2024-02-17",expected:.0124,loop_name:"SN2"},{actual:.0312,date_range:"2024-02-18 - 2024-02-24",expected:.0187,loop_name:"SN2"},{actual:.0109,date_range:"2024-02-18 - 2024-02-24",expected:0,loop_name:"SN1"},{actual:.0312,date_range:"2024-02-25 - 2024-03-02",expected:.0279,loop_name:"SN2"},{actual:.0109,date_range:"2024-02-25 - 2024-03-02",expected:0,loop_name:"SN1"}],quarterTableData:[{actual:.0109,date_range:"2024-02-25 - 2024-03-02",expected:0,loop_name:"SN1",year:2024,quarter:1,week:9},{actual:.0312,date_range:"2024-02-25 - 2024-03-02",expected:.0279,loop_name:"SN2",year:2024,quarter:1,week:9}],TableData:[{actual:.0109,date_range:"2024-02-25 - 2024-03-02",expected:0,loop_name:"SN1",year:2024,quarter:1,week:9},{actual:.0312,date_range:"2024-02-25 - 2024-03-02",expected:.0279,loop_name:"SN2",year:2024,quarter:1,week:9}],currentPage:1,perPage:3}},watch:{},async created(){this.selectedPlan=this.$route.query.Plan,this.selectedProject=this.$route.query.Project},computed:{displayModeText(){return"table"===this.displayMode?"表格":"報表"},projectTypeText(){return"engineering"===this.projectType?"工程":"銀行"},allDateRanges(){const e=new Set;return this.organizedLoopsData.forEach((a=>{a.date_ranges.forEach((a=>{e.add(a.date_range)}))})),Array.from(e)},quarterSummary(){let e=this.organizedLoopsData;if(console.log(e),!e.length)return[];const a=new Set;return e.forEach((e=>{e.date_ranges.forEach((e=>{const t=`${e.year}-Q${e.quarter}-${e.week}`;a.add(t)}))})),Array.from(a).map((e=>{const[a,t,l]=e.split("-");return{year:a,quarter:t.replace("Q",""),week:l}}))},totalPages(){const e=this.allDateRanges.length;return Math.ceil(e/this.perPage)},paginatedData(){const e=(this.currentPage-1)*this.perPage,a=e+this.perPage,t=this.organizedLoopsData.map((t=>({...t,date_ranges:t.date_ranges.slice(e,a)})));return console.log(t),t},paginatedDateRanges(){const e=(this.currentPage-1)*this.perPage,a=e+this.perPage;return this.allDateRanges.slice(e,a)},organizedLoopsData(){const e=[],a=new Map;let t=[];return this.showDetails?"quarter"===this.timeMode?t=this.quarterTableData:"week"===this.timeMode&&(t=this.weekTableData):t=this.TableData,t.forEach((e=>{const{loop_name:t,date_range:l,actual:n,expected:r,year:o,quarter:s,week:d}=e;a.has(t)||a.set(t,{loop_name:t,date_ranges:[]});const c=a.get(t);let i=c.date_ranges.find((e=>e.date_range===l));i||(i={date_range:l,records:[],year:o,quarter:s,week:d},c.date_ranges.push(i)),i.records.push({actual:n,expected:r})})),a.forEach((a=>{a.date_ranges.sort(((e,a)=>{const t=new Date(e.date_range.split(" - ")[0]),l=new Date(a.date_range.split(" - ")[0]);return t-l})),e.push(a)})),e}},methods:{toggleDisplayMode(){this.displayMode="table"===this.displayMode?"report":"table",this.showDetails=!1},toggleProjectType(){this.projectType="engineering"===this.projectType?"bank":"engineering"},formatPercentage(e){return`${(100*Number(e)).toFixed(2)}%`}}},U=t(3744);const Y=(0,U.Z)(C,[["render",M],["__scopeId","data-v-57270b0e"]]);var N=Y}}]);
//# sourceMappingURL=132.03cf4633.js.map