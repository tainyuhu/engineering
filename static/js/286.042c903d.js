"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[286],{810:function(e,a,t){t.r(a),t.d(a,{default:function(){return Z}});var l=t(6252),o=t(3577),n=t(9095),r=t(9773),d=t(5215),s=t(5911),c=t(1669),i=t(7737),u=t(2793),g=t(2762),p=t(401),_=t(3345),w=t(2199),m=t(7070);const h=e=>((0,l.dD)("data-v-ad3c16bc"),e=e(),(0,l.Cn)(),e),k={class:"mb-3",style:{"padding-left":"20px",display:"flex","align-items":"center"}},f=h((()=>(0,l._)("span",{class:"font-weight-bold ml-2"},"瀏覽22.8KV工程進度：",-1))),y={class:"function-row"},b={class:"status-and-page-size-selector"},D=h((()=>(0,l._)("span",null,"狀態：",-1))),x={key:0,class:"py-2 d-flex justify-center"},v={key:0,class:"div-container"},P=h((()=>(0,l._)("th",null,"迴路 / 週間",-1))),T={class:"font-weight-bold"},S={class:"expected"},q={key:1,class:"div-container"},z=h((()=>(0,l._)("th",{rowspan:"2"},"迴路 / 週間",-1))),U={class:"font-weight-bold"},W={class:"expected"},N={key:2,class:"div-container"},M=h((()=>(0,l._)("th",{rowspan:"2"},"迴路 / 週間",-1))),j={class:"font-weight-bold"},V={class:"expected"},C={class:"mb-3",ref:"engineeringSection",style:{"padding-left":"20px",display:"flex","align-items":"center"}},Y=h((()=>(0,l._)("span",{class:"font-weight-bold ml-2"},"瀏覽土木/纜線工程進度：",-1))),H=h((()=>(0,l._)("div",null,"標籤一的內容...",-1))),K=h((()=>(0,l._)("div",null,"標籤二的內容...",-1)));function R(e,a,t,h,R,$){return(0,l.wg)(),(0,l.j4)(c.K,null,{default:(0,l.w5)((()=>[(0,l._)("div",k,[(0,l.Wm)(i.t,{color:"blue"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-chevron-right-box")])),_:1}),f]),(0,l._)("div",y,[(0,l._)("div",b,[D,(0,l.Wm)(n.T,{class:(0,o.C_)("table"===R.displayMode?"report-btn":"table-btn"),onClick:$.toggleDisplayMode},{default:(0,l.w5)((()=>[(0,l.Uk)((0,o.zw)($.displayModeText),1)])),_:1},8,["class","onClick"])]),R.showDetails?((0,l.wg)(),(0,l.iD)("div",x,[(0,l.Wm)(r.fF,{mandatory:"",modelValue:R.timeMode,"onUpdate:modelValue":a[0]||(a[0]=e=>R.timeMode=e),class:"time-toggle",variant:"outlined"},{default:(0,l.w5)((()=>[(0,l.Wm)(n.T,{class:"time-btn",value:"quarter"},{default:(0,l.w5)((()=>[(0,l.Uk)("季")])),_:1}),(0,l.Wm)(n.T,{class:"time-btn",value:"week"},{default:(0,l.w5)((()=>[(0,l.Uk)("週")])),_:1})])),_:1},8,["modelValue"])])):(0,l.kq)("",!0),(0,l._)("div",null,[(0,l.Wm)(n.T,{class:(0,o.C_)("engineering"===R.projectType?"bank-btn":"engineering-btn"),onClick:$.toggleProjectType},{default:(0,l.w5)((()=>[(0,l.Uk)((0,o.zw)($.projectTypeText),1)])),_:1},8,["class","onClick"]),(0,l.Wm)(n.T,{class:"custom-btn",onClick:a[1]||(a[1]=e=>$.scrollToSection("engineeringSection"))},{default:(0,l.w5)((()=>[(0,l.Uk)(" 土木/纜線進度 ")])),_:1}),(0,l.Wm)(n.T,{class:"overview-btn",rounded:"0",onClick:a[2]||(a[2]=e=>R.showDetails=!1)},{default:(0,l.w5)((()=>[(0,l.Uk)("即時")])),_:1}),(0,l.Wm)(n.T,{class:"details-btn",rounded:"0",onClick:a[3]||(a[3]=e=>R.showDetails=!0)},{default:(0,l.w5)((()=>[(0,l.Uk)("詳情")])),_:1})])]),"week"===R.timeMode&&R.showDetails?((0,l.wg)(),(0,l.iD)("div",v,[(0,l.Wm)(g.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[P,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)($.paginatedDateRanges,((e,a)=>((0,l.wg)(),(0,l.iD)("th",{key:a,class:(0,o.C_)({"special-bg":0===a,"normal-bg":0!==a}),colspan:"2"},[(0,l.Uk)((0,o.zw)(e)+" ",1),0===a?((0,l.wg)(),(0,l.j4)(i.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)($.paginatedData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.loop_name},[(0,l._)("td",T,(0,o.zw)(e.loop_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",null,(0,o.zw)($.formatPercentage(e.records[0].actual)),1),(0,l._)("td",S,(0,o.zw)($.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(u.k,{modelValue:R.currentPage,"onUpdate:modelValue":a[4]||(a[4]=e=>R.currentPage=e),length:$.totalPages},null,8,["modelValue","length"])])):(0,l.kq)("",!0),"quarter"===R.timeMode&&R.showDetails?((0,l.wg)(),(0,l.iD)("div",q,[(0,l.Wm)(g.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[z,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)($.quarterSummary,((e,a)=>((0,l.wg)(),(0,l.iD)("th",{key:a,class:(0,o.C_)({"special-bg":0===a,"normal-bg":0!==a}),colspan:"2"}," 【"+(0,o.zw)(e.year)+" Q"+(0,o.zw)(e.quarter)+"】 第"+(0,o.zw)(e.week)+"周 ",3)))),128))]),(0,l._)("tr",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)($.paginatedDateRanges,((e,a)=>((0,l.wg)(),(0,l.iD)("th",{key:a,class:(0,o.C_)({"special-bg":0===a,"normal-bg":0!==a}),colspan:"2"},[(0,l.Uk)((0,o.zw)(e)+" ",1),0===a?((0,l.wg)(),(0,l.j4)(i.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)($.paginatedData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.loop_name},[(0,l._)("td",U,(0,o.zw)(e.loop_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",{style:(0,o.j5)(e.records[0].expected>e.records[0].actual?{"font-weight":"bold",color:"red"}:{})},(0,o.zw)($.formatPercentage(e.records[0].actual)),5),(0,l._)("td",W,(0,o.zw)($.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(u.k,{modelValue:R.currentPage,"onUpdate:modelValue":a[5]||(a[5]=e=>R.currentPage=e),length:$.totalPages},null,8,["modelValue","length"])])):(0,l.kq)("",!0),R.showDetails||"table"!==R.displayMode?(0,l.kq)("",!0):((0,l.wg)(),(0,l.iD)("div",N,[(0,l.Wm)(g.Y,null,{default:(0,l.w5)((()=>[(0,l._)("thead",null,[(0,l._)("tr",null,[M,((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)($.quarterSummary,((e,a)=>((0,l.wg)(),(0,l.iD)("th",{key:a,class:(0,o.C_)({"special-bg":0===a,"normal-bg":0!==a}),colspan:"2"}," 【"+(0,o.zw)(e.year)+" Q"+(0,o.zw)(e.quarter)+"】 第"+(0,o.zw)(e.week)+"周 ",3)))),128))]),(0,l._)("tr",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)($.paginatedDateRanges,((e,a)=>((0,l.wg)(),(0,l.iD)("th",{key:a,class:(0,o.C_)({"special-bg":0===a,"normal-bg":0!==a}),colspan:"2"},[(0,l.Uk)((0,o.zw)(e)+" ",1),0===a?((0,l.wg)(),(0,l.j4)(i.t,{key:0,color:"yellow"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-new-box")])),_:1})):(0,l.kq)("",!0)],2)))),128))])]),(0,l._)("tbody",null,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)($.paginatedData,(e=>((0,l.wg)(),(0,l.iD)("tr",{key:e.loop_name},[(0,l._)("td",j,(0,o.zw)(e.loop_name),1),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(e.date_ranges,(e=>((0,l.wg)(),(0,l.iD)(l.HY,null,[(0,l._)("td",{style:(0,o.j5)(e.records[0].expected>e.records[0].actual?{"font-weight":"bold",color:"red"}:{})},(0,o.zw)($.formatPercentage(e.records[0].actual)),5),(0,l._)("td",V,(0,o.zw)($.formatPercentage(e.records[0].expected)),1)],64)))),256))])))),128))])])),_:1}),(0,l.Wm)(u.k,{modelValue:R.currentPage,"onUpdate:modelValue":a[6]||(a[6]=e=>R.currentPage=e),length:$.totalPages},null,8,["modelValue","length"])])),(0,l._)("div",C,[(0,l.Wm)(i.t,{color:"blue"},{default:(0,l.w5)((()=>[(0,l.Uk)("mdi-chevron-right-box")])),_:1}),Y],512),"table"===R.displayMode?((0,l.wg)(),(0,l.j4)(d._,{key:3,class:"elevated-card div-container",outlined:""},{default:(0,l.w5)((()=>[(0,l.Wm)(p.d,{modelValue:R.tab,"onUpdate:modelValue":a[7]||(a[7]=e=>R.tab=e),"bg-color":"indigo-darken-2","show-arrows":""},{default:(0,l.w5)((()=>[(0,l.Wm)(_.L,{style:{"font-weight":"bold"},value:"civil"},{default:(0,l.w5)((()=>[(0,l.Uk)("土木工程")])),_:1}),(0,l.Wm)(_.L,{style:{"font-weight":"bold"},value:"cable"},{default:(0,l.w5)((()=>[(0,l.Uk)("纜線工程")])),_:1})])),_:1},8,["modelValue"]),(0,l.Wm)(s.Z,null,{default:(0,l.w5)((()=>[(0,l.Wm)(w.Oo,{modelValue:R.tab,"onUpdate:modelValue":a[8]||(a[8]=e=>R.tab=e)},{default:(0,l.w5)((()=>[(0,l.Wm)(m.H,{value:"civil"},{default:(0,l.w5)((()=>[H])),_:1}),(0,l.Wm)(m.H,{value:"cable"},{default:(0,l.w5)((()=>[K])),_:1})])),_:1},8,["modelValue"])])),_:1})])),_:1})):(0,l.kq)("",!0)])),_:1})}t(560);var $=t(6160),E={components:{Chart:$.Z},data(){return{tab:"civil",timeMode:"week",displayMode:"table",projectType:"engineering",showDetails:!1,weekTableData:[{actual:0,date_range:"2024-01-07 - 2024-01-13",expected:.0238,loop_name:"SN1"},{actual:0,date_range:"2024-01-07 - 2024-01-13",expected:.0238,loop_name:"SN2"},{actual:0,date_range:"2024-01-14 - 2024-01-20",expected:.0476,loop_name:"SN1"},{actual:0,date_range:"2024-01-14 - 2024-01-20",expected:.0476,loop_name:"SN2"},{actual:.441,date_range:"2024-01-21 - 2024-01-27",expected:.0714,loop_name:"SN1"},{actual:.4007,date_range:"2024-01-21 - 2024-01-27",expected:.0714,loop_name:"SN2"},{actual:.441,date_range:"2024-01-28 - 2024-02-03",expected:.0952,loop_name:"SN1"},{actual:.4007,date_range:"2024-01-28 - 2024-02-03",expected:.0952,loop_name:"SN2"},{actual:.441,date_range:"2024-02-04 - 2024-02-10",expected:.119,loop_name:"SN1"},{actual:.4007,date_range:"2024-02-04 - 2024-02-10",expected:.119,loop_name:"SN2"},{actual:.441,date_range:"2024-02-11 - 2024-02-17",expected:.1429,loop_name:"SN1"},{actual:.4007,date_range:"2024-02-11 - 2024-02-17",expected:.1429,loop_name:"SN2"},{actual:.441,date_range:"2024-02-18 - 2024-02-24",expected:.1667,loop_name:"SN1"},{actual:.4007,date_range:"2024-02-18 - 2024-02-24",expected:.1667,loop_name:"SN2"},{actual:.4463,date_range:"2024-02-25 - 2024-03-02",expected:.1905,loop_name:"SN1"},{actual:.4081,date_range:"2024-02-25 - 2024-03-02",expected:.1905,loop_name:"SN2"}],quarterTableData:[{actual:.4463,date_range:"2024-02-25 - 2024-03-02",expected:.1905,loop_name:"SN1",year:2024,quarter:1,week:9},{actual:.4081,date_range:"2024-02-25 - 2024-03-02",expected:.1905,loop_name:"SN2",year:2024,quarter:1,week:9}],TableData:[{actual:.4463,date_range:"2024-02-25 - 2024-03-02",expected:.1905,loop_name:"SN1",year:2024,quarter:1,week:9},{actual:.4081,date_range:"2024-02-25 - 2024-03-02",expected:.1905,loop_name:"SN2",year:2024,quarter:1,week:9}],currentPage:1,perPage:3}},watch:{},async created(){this.selectedPlan=this.$route.query.Plan,this.selectedProject=this.$route.query.Project},computed:{displayModeText(){return"table"===this.displayMode?"表格":"報表"},projectTypeText(){return"engineering"===this.projectType?"工程":"銀行"},allDateRanges(){const e=new Set;return this.organizedLoopsData.forEach((a=>{a.date_ranges.forEach((a=>{e.add(a.date_range)}))})),Array.from(e)},quarterSummary(){let e=this.organizedLoopsData;if(console.log(e),!e.length)return[];const a=new Set;return e.forEach((e=>{e.date_ranges.forEach((e=>{const t=`${e.year}-Q${e.quarter}-${e.week}`;a.add(t)}))})),Array.from(a).map((e=>{const[a,t,l]=e.split("-");return{year:a,quarter:t.replace("Q",""),week:l}}))},totalPages(){const e=this.allDateRanges.length;return Math.ceil(e/this.perPage)},paginatedData(){const e=(this.currentPage-1)*this.perPage,a=e+this.perPage,t=this.organizedLoopsData.map((t=>({...t,date_ranges:t.date_ranges.slice(e,a)})));return console.log(t),t},paginatedDateRanges(){const e=(this.currentPage-1)*this.perPage,a=e+this.perPage;return this.allDateRanges.slice(e,a)},organizedLoopsData(){const e=[],a=new Map;let t=[];return this.showDetails?"quarter"===this.timeMode?t=this.quarterTableData:"week"===this.timeMode&&(t=this.weekTableData):t=this.TableData,t.forEach((e=>{const{loop_name:t,date_range:l,actual:o,expected:n,year:r,quarter:d,week:s}=e;a.has(t)||a.set(t,{loop_name:t,date_ranges:[]});const c=a.get(t);let i=c.date_ranges.find((e=>e.date_range===l));i||(i={date_range:l,records:[],year:r,quarter:d,week:s},c.date_ranges.push(i)),i.records.push({actual:o,expected:n})})),a.forEach((a=>{a.date_ranges.sort(((e,a)=>{const t=new Date(e.date_range.split(" - ")[0]),l=new Date(a.date_range.split(" - ")[0]);return t-l})),e.push(a)})),e}},methods:{scrollToSection(e){const a=this.$refs[e];if(a){const e=a.offsetTop-100;window.scrollTo({top:e,behavior:"smooth"})}},toggleDisplayMode(){this.displayMode="table"===this.displayMode?"report":"table",this.showDetails=!1},toggleProjectType(){this.projectType="engineering"===this.projectType?"bank":"engineering"},formatPercentage(e){return`${(100*Number(e)).toFixed(2)}%`}}},L=t(3744);const Q=(0,L.Z)(E,[["render",R],["__scopeId","data-v-ad3c16bc"]]);var Z=Q}}]);
//# sourceMappingURL=286.042c903d.js.map