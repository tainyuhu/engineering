"use strict";(self["webpackChunkfrontend"]=self["webpackChunkfrontend"]||[]).push([[857],{448:function(e,a,t){t.r(a),t.d(a,{default:function(){return ne}});var r=t(6252),o=t(3577),n=t(9095),l=t(9773),s=t(5215),c=t(5911),d=t(1669),u=t(7737),i=t(2793),p=t(401),g=t(3345),_=t(2199),h=t(7070);const m=e=>((0,r.dD)("data-v-bd4a3f56"),e=e(),(0,r.Cn)(),e),D={class:"mb-3",style:{"padding-left":"20px",display:"flex","align-items":"center"}},w=m((()=>(0,r._)("span",{class:"font-weight-bold ml-2"},"瀏覽22.8KV工程進度：",-1))),b={class:"function-row"},y={class:"status-and-page-size-selector"},k=m((()=>(0,r._)("span",null,"狀態：",-1))),x={key:0,class:"py-2 d-flex justify-center"},S={key:1},f={key:0,class:"div-container"},q={key:1,class:"div-container"},v={key:2,class:"div-container"},N={key:3,class:"div-container report-container",style:{"background-color":"white",display:"flex",height:"100%"}},M={key:4,class:"div-container report-container",style:{"background-color":"white",display:"flex",height:"100%"}},T={key:5,class:"div-container report-container",style:{"background-color":"white",display:"flex",height:"100%"}},C={key:6,class:"mb-3",ref:"engineeringSection",style:{"padding-left":"20px",display:"flex","align-items":"center"}},W=m((()=>(0,r._)("span",{class:"font-weight-bold ml-2"},"瀏覽土木/纜線工程進度：",-1))),P={class:"function-row"},V={class:"status-and-page-size-selector"},E=m((()=>(0,r._)("span",null,"狀態：",-1))),U={key:0,class:"py-2 d-flex justify-center"},$={key:1},R={key:0,class:"div-container"},A={key:1,class:"div-container"},j={key:2,class:"div-container"},L={key:3,class:"div-container report-container",style:{"background-color":"white",display:"flex",height:"100%"}},z={key:4,class:"div-container report-container",style:{"background-color":"white",display:"flex",height:"100%"}},Q={key:5,class:"div-container report-container",style:{"background-color":"white",display:"flex",height:"100%"}},F={class:"function-row"},O={class:"status-and-page-size-selector"},Y=m((()=>(0,r._)("span",null,"狀態：",-1))),Z={key:0,class:"py-2 d-flex justify-center"},B={key:1},H={key:0,class:"div-container"},K={key:1,class:"div-container"},I={key:2,class:"div-container"};function G(e,a,t,m,G,J){const X=(0,r.up)("WeekLoopTable"),ee=(0,r.up)("AllQuarterLoopTable"),ae=(0,r.up)("QuarterLoopTable"),te=(0,r.up)("SiteSelectionChart");return(0,r.wg)(),(0,r.j4)(d.K,null,{default:(0,r.w5)((()=>[(0,r._)("div",D,[(0,r.Wm)(u.t,{color:"blue",onClick:J.goBack},{default:(0,r.w5)((()=>[(0,r.Uk)("mdi-chevron-left-box")])),_:1},8,["onClick"]),w]),(0,r._)("div",b,[(0,r._)("div",y,[k,(0,r.Wm)(n.T,{class:(0,o.C_)("table"===G.displayMode?"report-btn":"table-btn"),onClick:J.toggleDisplayMode},{default:(0,r.w5)((()=>[(0,r.Uk)((0,o.zw)(J.displayModeText),1)])),_:1},8,["class","onClick"])]),G.showDetails&&"table"===G.displayMode?((0,r.wg)(),(0,r.iD)("div",x,[(0,r.Wm)(l.fF,{mandatory:"",modelValue:G.timeMode,"onUpdate:modelValue":a[0]||(a[0]=e=>G.timeMode=e),class:"time-toggle",variant:"outlined"},{default:(0,r.w5)((()=>[(0,r.Wm)(n.T,{value:"quarter"},{default:(0,r.w5)((()=>[(0,r.Uk)("季")])),_:1}),(0,r.Wm)(n.T,{value:"week"},{default:(0,r.w5)((()=>[(0,r.Uk)("週")])),_:1})])),_:1},8,["modelValue"])])):(0,r.kq)("",!0),"table"===G.displayMode?((0,r.wg)(),(0,r.iD)("div",S,[(0,r.Wm)(n.T,{class:(0,o.C_)("engineering"===G.projectType?"bank-btn":"engineering-btn"),onClick:J.toggleProjectType},{default:(0,r.w5)((()=>[(0,r.Uk)((0,o.zw)(J.projectTypeText),1)])),_:1},8,["class","onClick"]),"engineering"===G.projectType?((0,r.wg)(),(0,r.j4)(n.T,{key:0,class:"custom-btn",onClick:a[1]||(a[1]=e=>J.scrollToSection("engineeringSection"))},{default:(0,r.w5)((()=>[(0,r.Uk)(" 土木/纜線進度 ")])),_:1})):(0,r.kq)("",!0),(0,r.Wm)(n.T,{class:(0,o.C_)(["overview-btn",{"btn-active":!G.showDetails}]),rounded:"0",variant:"outlined",onClick:a[2]||(a[2]=e=>G.showDetails=!1)},{default:(0,r.w5)((()=>[(0,r.Uk)(" 即時 ")])),_:1},8,["class"]),(0,r.Wm)(n.T,{class:(0,o.C_)(["details-btn",{"btn-active":G.showDetails}]),rounded:"0",variant:"outlined",onClick:a[3]||(a[3]=e=>G.showDetails=!0)},{default:(0,r.w5)((()=>[(0,r.Uk)(" 詳情 ")])),_:1},8,["class"])])):(0,r.kq)("",!0)]),"week"===G.timeMode&&G.showDetails&&"table"===G.displayMode?((0,r.wg)(),(0,r.iD)("div",f,[(0,r.Wm)(X,{allDateRanges:J.paginatedDateRanges,weekTableData:J.paginatedData,percentagedata:G.percentageData},null,8,["allDateRanges","weekTableData","percentagedata"]),(0,r.Wm)(i.k,{modelValue:G.currentPage,"onUpdate:modelValue":a[4]||(a[4]=e=>G.currentPage=e),length:J.totalPages},null,8,["modelValue","length"])])):(0,r.kq)("",!0),"quarter"===G.timeMode&&G.showDetails&&"table"===G.displayMode?((0,r.wg)(),(0,r.iD)("div",q,[(0,r.Wm)(ee,{allDateRanges:J.paginatedDateRanges,quarterSummary:J.quarterSummary,quarterTableData:J.paginatedData,percentagedata:G.percentageData},null,8,["allDateRanges","quarterSummary","quarterTableData","percentagedata"]),(0,r.Wm)(i.k,{modelValue:G.currentPage,"onUpdate:modelValue":a[5]||(a[5]=e=>G.currentPage=e),length:J.totalPages},null,8,["modelValue","length"])])):(0,r.kq)("",!0),G.showDetails||"table"!==G.displayMode?(0,r.kq)("",!0):((0,r.wg)(),(0,r.iD)("div",v,[(0,r.Wm)(ae,{allDateRanges:J.paginatedDateRanges,quarterSummary:J.quarterSummary,TableData:J.paginatedData,percentagedata:G.percentageData},null,8,["allDateRanges","quarterSummary","TableData","percentagedata"]),(0,r.Wm)(i.k,{modelValue:G.currentPage,"onUpdate:modelValue":a[6]||(a[6]=e=>G.currentPage=e),length:J.totalPages},null,8,["modelValue","length"])])),"report"!==G.displayMode||G.showDetails?(0,r.kq)("",!0):((0,r.wg)(),(0,r.iD)("div",N,[(0,r.Wm)(te,{chartData:G.chartData},null,8,["chartData"])])),"report"===G.displayMode&&G.showDetails&&"quarter"===G.timeMode?((0,r.wg)(),(0,r.iD)("div",M,[(0,r.Wm)(te,{chartData:G.chartData},null,8,["chartData"])])):(0,r.kq)("",!0),"report"===G.displayMode&&G.showDetails&&"week"===G.timeMode?((0,r.wg)(),(0,r.iD)("div",T,[(0,r.Wm)(te,{chartData:G.chartData},null,8,["chartData"])])):(0,r.kq)("",!0),"table"===G.displayMode?((0,r.wg)(),(0,r.iD)("div",C,[(0,r.Wm)(u.t,{color:"blue"},{default:(0,r.w5)((()=>[(0,r.Uk)("mdi-chevron-right-box")])),_:1}),W],512)):(0,r.kq)("",!0),"table"===G.displayMode?((0,r.wg)(),(0,r.j4)(s._,{key:7,class:"div-container-1",outlined:""},{default:(0,r.w5)((()=>[(0,r.Wm)(p.d,{modelValue:G.tab,"onUpdate:modelValue":a[7]||(a[7]=e=>G.tab=e),"bg-color":"indigo-darken-2","slider-color":"yellow","show-arrows":""},{default:(0,r.w5)((()=>[(0,r.Wm)(g.L,{style:{"font-weight":"bold"},value:"civil"},{default:(0,r.w5)((()=>[(0,r.Uk)("土木工程")])),_:1}),(0,r.Wm)(g.L,{style:{"font-weight":"bold"},value:"cable"},{default:(0,r.w5)((()=>[(0,r.Uk)("纜線工程")])),_:1})])),_:1},8,["modelValue"]),(0,r.Wm)(c.Z,null,{default:(0,r.w5)((()=>[(0,r.Wm)(_.Oo,{modelValue:G.tab,"onUpdate:modelValue":a[20]||(a[20]=e=>G.tab=e)},{default:(0,r.w5)((()=>[(0,r.Wm)(h.H,{value:"civil"},{default:(0,r.w5)((()=>[(0,r._)("div",P,[(0,r._)("div",V,[E,(0,r.Wm)(n.T,{class:(0,o.C_)("table"===G.endisplayMode?"report-btn":"table-btn"),onClick:J.toggleEnDisplayMode},{default:(0,r.w5)((()=>[(0,r.Uk)((0,o.zw)(J.endisplayModeText),1)])),_:1},8,["class","onClick"])]),G.enshowDetails&&"table"===G.endisplayMode?((0,r.wg)(),(0,r.iD)("div",U,[(0,r.Wm)(l.fF,{mandatory:"",modelValue:G.entimeMode,"onUpdate:modelValue":a[8]||(a[8]=e=>G.entimeMode=e),class:"time-toggle",variant:"outlined"},{default:(0,r.w5)((()=>[(0,r.Wm)(n.T,{value:"quarter"},{default:(0,r.w5)((()=>[(0,r.Uk)("季")])),_:1}),(0,r.Wm)(n.T,{value:"week"},{default:(0,r.w5)((()=>[(0,r.Uk)("週")])),_:1})])),_:1},8,["modelValue"])])):(0,r.kq)("",!0),"table"===G.endisplayMode?((0,r.wg)(),(0,r.iD)("div",$,[(0,r.Wm)(n.T,{class:(0,o.C_)(["overview-btn",{"btn-active":!G.enshowDetails}]),rounded:"0",variant:"outlined",onClick:a[9]||(a[9]=e=>G.enshowDetails=!1)},{default:(0,r.w5)((()=>[(0,r.Uk)(" 即時 ")])),_:1},8,["class"]),(0,r.Wm)(n.T,{class:(0,o.C_)(["details-btn",{"btn-active":G.enshowDetails}]),rounded:"0",variant:"outlined",onClick:a[10]||(a[10]=e=>G.enshowDetails=!0)},{default:(0,r.w5)((()=>[(0,r.Uk)(" 詳情 ")])),_:1},8,["class"])])):(0,r.kq)("",!0)]),"week"===G.entimeMode&&G.enshowDetails&&"table"===G.endisplayMode?((0,r.wg)(),(0,r.iD)("div",R,[(0,r.Wm)(X,{allDateRanges:J.enpaginatedDateRanges,weekTableData:J.enpaginatedData,percentagedata:G.percentageData},null,8,["allDateRanges","weekTableData","percentagedata"]),(0,r.Wm)(i.k,{modelValue:G.currentPage,"onUpdate:modelValue":a[11]||(a[11]=e=>G.currentPage=e),length:J.totalPages},null,8,["modelValue","length"])])):(0,r.kq)("",!0),"quarter"===G.entimeMode&&G.enshowDetails&&"table"===G.endisplayMode?((0,r.wg)(),(0,r.iD)("div",A,[(0,r.Wm)(ee,{allDateRanges:J.enpaginatedDateRanges,quarterSummary:J.enquarterSummary,quarterTableData:J.enpaginatedData,percentagedata:G.percentageData},null,8,["allDateRanges","quarterSummary","quarterTableData","percentagedata"]),(0,r.Wm)(i.k,{modelValue:G.currentPage,"onUpdate:modelValue":a[12]||(a[12]=e=>G.currentPage=e),length:J.totalPages},null,8,["modelValue","length"])])):(0,r.kq)("",!0),G.enshowDetails||"table"!==G.endisplayMode?(0,r.kq)("",!0):((0,r.wg)(),(0,r.iD)("div",j,[(0,r.Wm)(ae,{allDateRanges:J.enpaginatedDateRanges,quarterSummary:J.enquarterSummary,TableData:J.enpaginatedData,percentagedata:G.percentageData},null,8,["allDateRanges","quarterSummary","TableData","percentagedata"]),(0,r.Wm)(i.k,{modelValue:G.currentPage,"onUpdate:modelValue":a[13]||(a[13]=e=>G.currentPage=e),length:J.totalPages},null,8,["modelValue","length"])])),"report"!==G.endisplayMode||G.enshowDetails?(0,r.kq)("",!0):((0,r.wg)(),(0,r.iD)("div",L,[(0,r.Wm)(te,{chartData:G.enchartData},null,8,["chartData"])])),"report"===G.endisplayMode&&G.enshowDetails&&"quarter"===G.entimeMode?((0,r.wg)(),(0,r.iD)("div",z,[(0,r.Wm)(te,{chartData:G.enchartData},null,8,["chartData"])])):(0,r.kq)("",!0),"report"===G.endisplayMode&&G.enshowDetails&&"week"===G.entimeMode?((0,r.wg)(),(0,r.iD)("div",Q,[(0,r.Wm)(te,{chartData:G.enchartData},null,8,["chartData"])])):(0,r.kq)("",!0)])),_:1}),(0,r.Wm)(h.H,{value:"cable"},{default:(0,r.w5)((()=>[(0,r._)("div",F,[(0,r._)("div",O,[Y,(0,r.Wm)(n.T,{class:(0,o.C_)("table"===G.endisplayMode?"report-btn":"table-btn"),onClick:J.toggleEnDisplayMode},{default:(0,r.w5)((()=>[(0,r.Uk)((0,o.zw)(J.endisplayModeText),1)])),_:1},8,["class","onClick"])]),G.enshowDetails&&"table"===G.endisplayMode?((0,r.wg)(),(0,r.iD)("div",Z,[(0,r.Wm)(l.fF,{mandatory:"",modelValue:G.entimeMode,"onUpdate:modelValue":a[14]||(a[14]=e=>G.entimeMode=e),class:"time-toggle",variant:"outlined"},{default:(0,r.w5)((()=>[(0,r.Wm)(n.T,{value:"quarter"},{default:(0,r.w5)((()=>[(0,r.Uk)("季")])),_:1}),(0,r.Wm)(n.T,{value:"week"},{default:(0,r.w5)((()=>[(0,r.Uk)("週")])),_:1})])),_:1},8,["modelValue"])])):(0,r.kq)("",!0),"table"===G.endisplayMode?((0,r.wg)(),(0,r.iD)("div",B,[(0,r.Wm)(n.T,{class:(0,o.C_)(["overview-btn",{"btn-active":!G.enshowDetails}]),rounded:"0",variant:"outlined",onClick:a[15]||(a[15]=e=>G.enshowDetails=!1)},{default:(0,r.w5)((()=>[(0,r.Uk)(" 即時 ")])),_:1},8,["class"]),(0,r.Wm)(n.T,{class:(0,o.C_)(["details-btn",{"btn-active":G.enshowDetails}]),rounded:"0",variant:"outlined",onClick:a[16]||(a[16]=e=>G.enshowDetails=!0)},{default:(0,r.w5)((()=>[(0,r.Uk)(" 詳情 ")])),_:1},8,["class"])])):(0,r.kq)("",!0)]),"week"===G.entimeMode&&G.enshowDetails?((0,r.wg)(),(0,r.iD)("div",H,[(0,r.Wm)(X,{allDateRanges:J.enpaginatedDateRanges,weekTableData:J.enpaginatedData,percentagedata:G.percentageData},null,8,["allDateRanges","weekTableData","percentagedata"]),(0,r.Wm)(i.k,{modelValue:G.currentPage,"onUpdate:modelValue":a[17]||(a[17]=e=>G.currentPage=e),length:J.totalPages},null,8,["modelValue","length"])])):(0,r.kq)("",!0),"quarter"===G.entimeMode&&G.enshowDetails?((0,r.wg)(),(0,r.iD)("div",K,[(0,r.Wm)(ee,{allDateRanges:J.enpaginatedDateRanges,quarterSummary:J.enquarterSummary,quarterTableData:J.enpaginatedData,percentagedata:G.percentageData},null,8,["allDateRanges","quarterSummary","quarterTableData","percentagedata"]),(0,r.Wm)(i.k,{modelValue:G.currentPage,"onUpdate:modelValue":a[18]||(a[18]=e=>G.currentPage=e),length:J.totalPages},null,8,["modelValue","length"])])):(0,r.kq)("",!0),G.enshowDetails||"table"!==G.endisplayMode?(0,r.kq)("",!0):((0,r.wg)(),(0,r.iD)("div",I,[(0,r.Wm)(ae,{allDateRanges:J.enpaginatedDateRanges,quarterSummary:J.enquarterSummary,TableData:J.enpaginatedData,percentagedata:G.percentageData},null,8,["allDateRanges","quarterSummary","TableData","percentagedata"]),(0,r.Wm)(i.k,{modelValue:G.currentPage,"onUpdate:modelValue":a[19]||(a[19]=e=>G.currentPage=e),length:J.totalPages},null,8,["modelValue","length"])]))])),_:1})])),_:1},8,["modelValue"])])),_:1})])),_:1})):(0,r.kq)("",!0)])),_:1})}t(560);var J=t(8541),X=t(8334),ee=t(1738),ae=t(614),te={components:{WeekLoopTable:X.Z,AllQuarterLoopTable:ee.Z,QuarterLoopTable:ae.Z,SiteSelectionChart:J.Z},data(){return{tab:"civil",timeMode:"week",entimeMode:"week",displayMode:"table",endisplayMode:"table",projectType:"engineering",showDetails:!1,enshowDetails:!1,weekTableData:[{actual:0,construction_status:2,date_range:"2024-01-07 - 2024-01-13",expected:.0238,loop_name:"SN1"},{actual:0,construction_status:2,date_range:"2024-01-07 - 2024-01-13",expected:.0238,loop_name:"SN2"},{actual:0,construction_status:2,date_range:"2024-01-14 - 2024-01-20",expected:.0476,loop_name:"SN1"},{actual:0,construction_status:2,date_range:"2024-01-14 - 2024-01-20",expected:.0476,loop_name:"SN2"},{actual:.441,construction_status:2,date_range:"2024-01-21 - 2024-01-27",expected:.0714,loop_name:"SN1"},{actual:.4007,construction_status:2,date_range:"2024-01-21 - 2024-01-27",expected:.0714,loop_name:"SN2"},{actual:.441,construction_status:2,date_range:"2024-01-28 - 2024-02-03",expected:.0952,loop_name:"SN1"},{actual:.4007,construction_status:2,date_range:"2024-01-28 - 2024-02-03",expected:.0952,loop_name:"SN2"},{actual:.441,construction_status:2,date_range:"2024-02-04 - 2024-02-10",expected:.119,loop_name:"SN1"},{actual:.4007,construction_status:2,date_range:"2024-02-04 - 2024-02-10",expected:.119,loop_name:"SN2"},{actual:.441,construction_status:2,date_range:"2024-02-11 - 2024-02-17",expected:.1429,loop_name:"SN1"},{actual:.4007,construction_status:2,date_range:"2024-02-11 - 2024-02-17",expected:.1429,loop_name:"SN2"},{actual:.441,construction_status:2,date_range:"2024-02-18 - 2024-02-24",expected:.1667,loop_name:"SN1"},{actual:.4007,construction_status:2,date_range:"2024-02-18 - 2024-02-24",expected:.1667,loop_name:"SN2"},{actual:.4463,construction_status:2,date_range:"2024-02-25 - 2024-03-02",expected:.1905,loop_name:"SN1"},{actual:.4081,construction_status:2,date_range:"2024-02-25 - 2024-03-02",expected:.1905,loop_name:"SN2"},{actual:.4463,construction_status:2,date_range:"2024-03-03 - 2024-03-09",expected:.2143,loop_name:"SN1"},{actual:.4081,construction_status:2,date_range:"2024-03-03 - 2024-03-09",expected:.2143,loop_name:"SN2"},{actual:.4463,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.2381,loop_name:"SN1"},{actual:.4081,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.2381,loop_name:"SN2"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN3"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN4"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN5"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN6"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN7"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN8"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN9"}],quarterTableData:[{actual:.4463,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.2381,loop_name:"SN1",year:2024,quarter:1,week:11},{actual:.4081,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.2381,loop_name:"SN2",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN3",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN4",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN5",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN6",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN7",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN8",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN9",year:2024,quarter:1,week:11}],TableData:[{actual:.4463,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.2381,loop_name:"SN1",year:2024,quarter:1,week:11},{actual:.4081,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.2381,loop_name:"SN2",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN3",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN4",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN5",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN6",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN7",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN8",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN9",year:2024,quarter:1,week:11}],civilweekTableData:[{actual:0,construction_status:2,date_range:"2024-01-07 - 2024-01-13",expected:.0476,loop_name:"SN1"},{actual:0,construction_status:2,date_range:"2024-01-07 - 2024-01-13",expected:.0476,loop_name:"SN2"},{actual:0,construction_status:2,date_range:"2024-01-14 - 2024-01-20",expected:.0952,loop_name:"SN1"},{actual:0,construction_status:2,date_range:"2024-01-14 - 2024-01-20",expected:.0952,loop_name:"SN2"},{actual:.8819,construction_status:2,date_range:"2024-01-21 - 2024-01-27",expected:.1429,loop_name:"SN1"},{actual:.8013,construction_status:2,date_range:"2024-01-21 - 2024-01-27",expected:.1429,loop_name:"SN2"},{actual:.8819,construction_status:2,date_range:"2024-01-28 - 2024-02-03",expected:.1905,loop_name:"SN1"},{actual:.8013,construction_status:2,date_range:"2024-01-28 - 2024-02-03",expected:.1905,loop_name:"SN2"},{actual:.8819,construction_status:2,date_range:"2024-02-04 - 2024-02-10",expected:.2381,loop_name:"SN1"},{actual:.8013,construction_status:2,date_range:"2024-02-04 - 2024-02-10",expected:.2381,loop_name:"SN2"},{actual:.8819,construction_status:2,date_range:"2024-02-11 - 2024-02-17",expected:.2857,loop_name:"SN1"},{actual:.8013,construction_status:2,date_range:"2024-02-11 - 2024-02-17",expected:.2857,loop_name:"SN2"},{actual:.8819,construction_status:2,date_range:"2024-02-18 - 2024-02-24",expected:.3333,loop_name:"SN1"},{actual:.8013,construction_status:2,date_range:"2024-02-18 - 2024-02-24",expected:.3333,loop_name:"SN2"},{actual:.8926,construction_status:2,date_range:"2024-02-25 - 2024-03-02",expected:.381,loop_name:"SN1"},{actual:.8162,construction_status:2,date_range:"2024-02-25 - 2024-03-02",expected:.381,loop_name:"SN2"},{actual:.8926,construction_status:2,date_range:"2024-03-03 - 2024-03-09",expected:.4286,loop_name:"SN1"},{actual:.8162,construction_status:2,date_range:"2024-03-03 - 2024-03-09",expected:.4286,loop_name:"SN2"},{actual:.8926,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.4762,loop_name:"SN1"},{actual:.8162,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.4762,loop_name:"SN2"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN3"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN4"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN5"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN6"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN7"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN8"},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN9"}],civilquarterTableData:[{actual:.8926,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.4762,loop_name:"SN1",year:2024,quarter:1,week:11},{actual:.8162,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.4762,loop_name:"SN2",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN3",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN4",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN5",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN6",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN7",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN8",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN9",year:2024,quarter:1,week:11}],civilTableData:[{actual:.8926,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.4762,loop_name:"SN1",year:2024,quarter:1,week:11},{actual:.8162,construction_status:2,date_range:"2024-03-10 - 2024-03-16",expected:.4762,loop_name:"SN2",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN3",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN4",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN5",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN6",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN7",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN8",year:2024,quarter:1,week:11},{actual:0,construction_status:0,date_range:"2024-03-10 - 2024-03-16",expected:0,loop_name:"SN9",year:2024,quarter:1,week:11}],currentPage:1,perPage:3,chartData:{labels:[],datasets:[]},enchartData:{labels:[],datasets:[]},percentageData:[{loop_name:"SN1",percentage:.0991},{loop_name:"SN2",percentage:.128},{loop_name:"SN3",percentage:.1145},{loop_name:"SN4",percentage:.1175},{loop_name:"SN5",percentage:.1001},{loop_name:"SN6",percentage:.0808},{loop_name:"SN7",percentage:.1421},{loop_name:"SN8",percentage:.1212},{loop_name:"SN9",percentage:.0968}]}},watch:{endisplayMode(){this.enupdateChartData()},entimeMode(){this.enupdateChartData()},enshowDetails(){this.enupdateChartData()},displayMode(){this.updateChartData()},timeMode(){this.updateChartData()},showDetails(){this.updateChartData()}},async created(){this.selectedPlan=this.$route.query.Plan,this.selectedProject=this.$route.query.Project},mounted(){this.updateChartData(),this.enupdateChartData()},computed:{displayModeText(){return"table"===this.displayMode?"表格":"報表"},endisplayModeText(){return"table"===this.endisplayMode?"表格":"報表"},projectTypeText(){return"engineering"===this.projectType?"工程":"銀行"},allDateRanges(){const e=new Set;return this.organizedLoopsData.forEach((a=>{a.date_ranges.forEach((a=>{e.add(a.date_range)}))})),Array.from(e)},quarterSummary(){let e=this.organizedLoopsData;if(console.log(e),!e.length)return[];const a=new Set;return e.forEach((e=>{e.date_ranges.forEach((e=>{const t=`${e.year}-Q${e.quarter}-${e.week}`;a.add(t)}))})),Array.from(a).map((e=>{const[a,t,r]=e.split("-");return{year:a,quarter:t.replace("Q",""),week:r}}))},totalPages(){const e=this.allDateRanges.length;return Math.ceil(e/this.perPage)},paginatedData(){this.organizedLoopsData.forEach((e=>{e.date_ranges.sort(((e,a)=>new Date(a.date_range.split(" - ")[0])-new Date(e.date_range.split(" - ")[0])))}));const e=this.organizedLoopsData.map((e=>{const a=[e.date_ranges[0]];let t=[];if(1===this.currentPage)t=e.date_ranges.slice(1,3);else{const a=1+3*(this.currentPage-2)+2,r=a+3;t=e.date_ranges.slice(a,r)}return{loop_name:e.loop_name,date_ranges:[...a,...t]}}));return e},paginatedDateRanges(){const e=(this.currentPage-1)*this.perPage,a=e+this.perPage,t=this.allDateRanges.sort(((e,a)=>new Date(a.split(" - ")[0])-new Date(e.split(" - ")[0]))),r=t[0];let o=t.slice(e,a);return o.includes(r)||(o=[r,...o].slice(0,a-e+1)),o},organizedLoopsData(){const e=[],a=new Map;let t=[];return this.showDetails?"quarter"===this.timeMode?t=this.quarterTableData:"week"===this.timeMode&&(t=this.weekTableData):t=this.TableData,t.forEach((e=>{const{loop_name:t,construction_status:r,date_range:o,actual:n,expected:l,year:s,quarter:c,week:d}=e;a.has(t)||a.set(t,{loop_name:t,date_ranges:[]});const u=a.get(t);let i=u.date_ranges.find((e=>e.date_range===o));i||(i={date_range:o,construction_status:r,records:[],year:s,quarter:c,week:d},u.date_ranges.push(i)),i.records.push({actual:n,expected:l})})),a.forEach((a=>{a.date_ranges.sort(((e,a)=>{const t=new Date(e.date_range.split(" - ")[0]),r=new Date(a.date_range.split(" - ")[0]);return r-t})),e.push(a)})),e},enorganizedLoopsData(){const e=[],a=new Map;let t=[];return"civil"===this.tab&&(this.enshowDetails?"quarter"===this.entimeMode?t=this.civilquarterTableData:"week"===this.entimeMode&&(t=this.civilweekTableData):t=this.civilTableData),t.forEach((e=>{const{loop_name:t,construction_status:r,date_range:o,actual:n,expected:l,year:s,quarter:c,week:d}=e;a.has(t)||a.set(t,{loop_name:t,date_ranges:[]});const u=a.get(t);let i=u.date_ranges.find((e=>e.date_range===o));i||(i={date_range:o,construction_status:r,records:[],year:s,quarter:c,week:d},u.date_ranges.push(i)),i.records.push({actual:n,expected:l})})),a.forEach((a=>{a.date_ranges.sort(((e,a)=>{const t=new Date(e.date_range.split(" - ")[0]),r=new Date(a.date_range.split(" - ")[0]);return r-t})),e.push(a)})),e},enallDateRanges(){const e=new Set;return this.enorganizedLoopsData.forEach((a=>{a.date_ranges.forEach((a=>{e.add(a.date_range)}))})),Array.from(e)},enquarterSummary(){let e=this.enorganizedLoopsData;if(console.log(e),!e.length)return[];const a=new Set;return e.forEach((e=>{e.date_ranges.forEach((e=>{const t=`${e.year}-Q${e.quarter}-${e.week}`;a.add(t)}))})),Array.from(a).map((e=>{const[a,t,r]=e.split("-");return{year:a,quarter:t.replace("Q",""),week:r}}))},enpaginatedData(){this.enorganizedLoopsData.forEach((e=>{e.date_ranges.sort(((e,a)=>new Date(a.date_range.split(" - ")[0])-new Date(e.date_range.split(" - ")[0])))}));const e=this.enorganizedLoopsData.map((e=>{const a=[e.date_ranges[0]];let t=[];if(1===this.currentPage)t=e.date_ranges.slice(1,3);else{const a=1+3*(this.currentPage-2)+2,r=a+3;t=e.date_ranges.slice(a,r)}return{loop_name:e.loop_name,date_ranges:[...a,...t]}}));return e},enpaginatedDateRanges(){const e=(this.currentPage-1)*this.perPage,a=e+this.perPage,t=this.enallDateRanges.sort(((e,a)=>new Date(a.split(" - ")[0])-new Date(e.split(" - ")[0]))),r=t[0];let o=t.slice(e,a);return o.includes(r)||(o=[r,...o].slice(0,a-e+1)),o}},methods:{goBack(){this.$router.go(-1)},scrollToSection(e){const a=this.$refs[e];if(a){const e=a.offsetTop-100;window.scrollTo({top:e,behavior:"smooth"})}},toggleDisplayMode(){"table"===this.displayMode?(this.previousTimeMode=this.timeMode,this.previousShowDetails=this.showDetails,this.displayMode="report"):(this.displayMode="table",this.timeMode=this.previousTimeMode,this.showDetails=this.previousShowDetails)},toggleProjectType(){this.projectType="engineering"===this.projectType?"bank":"engineering"},formatPercentage(e){return`${(100*Number(e)).toFixed(2)}%`},toggleEnDisplayMode(){"table"===this.endisplayMode?(this.enpreviousTimeMode=this.entimeMode,this.enpreviousShowDetails=this.enshowDetails,this.endisplayMode="report"):(this.endisplayMode="table",this.entimeMode=this.enpreviousTimeMode,this.enshowDetails=this.enpreviousShowDetails)},generateChartData(){const e=(new Date).getFullYear(),a=this.TableData.filter((a=>a.year===e)),t=new Set(a.map((e=>`Q${e.quarter}`))),r=Array.from(t).sort(),o=new Map;a.forEach((e=>{const a=`Q${e.quarter}`,t=e.loop_name;o.has(t)||o.set(t,{actual:Array(r.length).fill(null),expected:Array(r.length).fill(null)});const n=o.get(t),l=r.indexOf(a);-1!==l&&(n.actual[l]=100*e.actual,n.expected[l]=100*e.expected)}));const n=[{color:"rgba(255, 99, 132, 0.2)"},{color:"rgba(75, 192, 192, 0.2)"},{color:"rgba(255, 206, 86, 0.2)"},{color:"rgba(153, 102, 255, 0.2)"},{color:"rgba(255, 159, 64, 0.2)"},{color:"rgba(54, 162, 235, 0.2)"},{color:"rgba(104, 132, 245, 0.2)"},{color:"rgba(164, 206, 78, 0.2)"},{color:"rgba(215, 86, 255, 0.2)"}];let l=0;const s=[];return o.forEach(((e,a)=>{const t=n[l++%n.length].color;s.push({label:`${a} Actual`,data:e.actual,backgroundColor:t,borderColor:t.replace("0.2","1"),borderWidth:5}),s.push({label:`${a} Expected`,data:e.expected,backgroundColor:t,borderColor:t.replace("0.2","1"),borderDash:[5,5]})})),{labels:r,datasets:s}},generateyearChartData(){const e=(new Date).getFullYear(),a=this.quarterTableData.filter((a=>a.year===e)),t=[...new Set(a.map((e=>`${e.year}Q${e.quarter}`)))].sort(),r=new Map;a.forEach((e=>{const a=`${e.year}Q${e.quarter}`,o=e.loop_name;r.has(o)||r.set(o,{actual:Array(t.length).fill(null),expected:Array(t.length).fill(null)});const n=r.get(o),l=t.indexOf(a);-1!==l&&(n.actual[l]=100*e.actual,n.expected[l]=100*e.expected)}));const o=[{color:"rgba(255, 99, 132, 0.2)"},{color:"rgba(75, 192, 192, 0.2)"},{color:"rgba(255, 206, 86, 0.2)"},{color:"rgba(153, 102, 255, 0.2)"},{color:"rgba(255, 159, 64, 0.2)"},{color:"rgba(54, 162, 235, 0.2)"},{color:"rgba(104, 132, 245, 0.2)"},{color:"rgba(164, 206, 78, 0.2)"},{color:"rgba(215, 86, 255, 0.2)"}];let n=0;const l=[];return r.forEach(((e,a)=>{const t=o[n++%o.length].color;l.push({label:`${a} Actual`,data:e.actual,backgroundColor:t,borderColor:t.replace("0.2","1"),borderWidth:5}),l.push({label:`${a} Expected`,data:e.expected,backgroundColor:t,borderColor:t.replace("0.2","1"),borderDash:[5,5]})})),{labels:t,datasets:l}},generatedaterangeChartData(){(new Date).getFullYear();const e=this.weekTableData,a=[...new Set(e.map((e=>e.date_range)))].sort(),t=new Map;e.forEach((e=>{const r=e.date_range,o=e.loop_name;t.has(o)||t.set(o,{actual:Array(a.length).fill(null),expected:Array(a.length).fill(null)});const n=t.get(o),l=a.indexOf(r);-1!==l&&(n.actual[l]=100*e.actual,n.expected[l]=100*e.expected)}));const r=[{color:"rgba(255, 99, 132, 0.2)"},{color:"rgba(75, 192, 192, 0.2)"},{color:"rgba(255, 206, 86, 0.2)"},{color:"rgba(153, 102, 255, 0.2)"},{color:"rgba(255, 159, 64, 0.2)"},{color:"rgba(54, 162, 235, 0.2)"},{color:"rgba(104, 132, 245, 0.2)"},{color:"rgba(164, 206, 78, 0.2)"},{color:"rgba(215, 86, 255, 0.2)"}];let o=0;const n=[];return t.forEach(((e,a)=>{const t=r[o++%r.length].color;n.push({label:`${a} Actual`,data:e.actual,backgroundColor:t,borderColor:t.replace("0.2","1"),borderWidth:5}),n.push({label:`${a} Expected`,data:e.expected,backgroundColor:t,borderColor:t.replace("0.2","1"),borderDash:[5,5]})})),{labels:a,datasets:n}},updateChartData(){this.showDetails?"quarter"===this.timeMode?this.chartData=this.generateyearChartData():"week"===this.timeMode&&(this.chartData=this.generatedaterangeChartData()):this.chartData=this.generateChartData()},engenerateChartData(){const e=(new Date).getFullYear(),a=this.civilTableData.filter((a=>a.year===e)),t=new Set(a.map((e=>`Q${e.quarter}`))),r=Array.from(t).sort(),o=new Map;a.forEach((e=>{const a=`Q${e.quarter}`,t=e.loop_name;o.has(t)||o.set(t,{actual:Array(r.length).fill(null),expected:Array(r.length).fill(null)});const n=o.get(t),l=r.indexOf(a);-1!==l&&(n.actual[l]=100*e.actual,n.expected[l]=100*e.expected)}));const n=[{color:"rgba(255, 99, 132, 0.2)"},{color:"rgba(75, 192, 192, 0.2)"},{color:"rgba(255, 206, 86, 0.2)"},{color:"rgba(153, 102, 255, 0.2)"},{color:"rgba(255, 159, 64, 0.2)"},{color:"rgba(54, 162, 235, 0.2)"},{color:"rgba(104, 132, 245, 0.2)"},{color:"rgba(164, 206, 78, 0.2)"},{color:"rgba(215, 86, 255, 0.2)"}];let l=0;const s=[];return o.forEach(((e,a)=>{const t=n[l++%n.length].color;s.push({label:`${a} Actual`,data:e.actual,backgroundColor:t,borderColor:t.replace("0.2","1"),borderWidth:5}),s.push({label:`${a} Expected`,data:e.expected,backgroundColor:t,borderColor:t.replace("0.2","1"),borderDash:[5,5]})})),{labels:r,datasets:s}},engenerateyearChartData(){const e=(new Date).getFullYear(),a=this.civilquarterTableData.filter((a=>a.year===e)),t=[...new Set(a.map((e=>`${e.year}Q${e.quarter}`)))].sort(),r=new Map;a.forEach((e=>{const a=`${e.year}Q${e.quarter}`,o=e.loop_name;r.has(o)||r.set(o,{actual:Array(t.length).fill(null),expected:Array(t.length).fill(null)});const n=r.get(o),l=t.indexOf(a);-1!==l&&(n.actual[l]=100*e.actual,n.expected[l]=100*e.expected)}));const o=[{color:"rgba(255, 99, 132, 0.2)"},{color:"rgba(75, 192, 192, 0.2)"},{color:"rgba(255, 206, 86, 0.2)"},{color:"rgba(153, 102, 255, 0.2)"},{color:"rgba(255, 159, 64, 0.2)"},{color:"rgba(54, 162, 235, 0.2)"},{color:"rgba(104, 132, 245, 0.2)"},{color:"rgba(164, 206, 78, 0.2)"},{color:"rgba(215, 86, 255, 0.2)"}];let n=0;const l=[];return r.forEach(((e,a)=>{const t=o[n++%o.length].color;l.push({label:`${a} Actual`,data:e.actual,backgroundColor:t,borderColor:t.replace("0.2","1"),borderWidth:5}),l.push({label:`${a} Expected`,data:e.expected,backgroundColor:t,borderColor:t.replace("0.2","1"),borderDash:[5,5]})})),{labels:t,datasets:l}},engeneratedaterangeChartData(){(new Date).getFullYear();const e=this.civilweekTableData,a=[...new Set(e.map((e=>e.date_range)))].sort(),t=new Map;e.forEach((e=>{const r=e.date_range,o=e.loop_name;t.has(o)||t.set(o,{actual:Array(a.length).fill(null),expected:Array(a.length).fill(null)});const n=t.get(o),l=a.indexOf(r);-1!==l&&(n.actual[l]=100*e.actual,n.expected[l]=100*e.expected)}));const r=[{color:"rgba(255, 99, 132, 0.2)"},{color:"rgba(75, 192, 192, 0.2)"},{color:"rgba(255, 206, 86, 0.2)"},{color:"rgba(153, 102, 255, 0.2)"},{color:"rgba(255, 159, 64, 0.2)"},{color:"rgba(54, 162, 235, 0.2)"},{color:"rgba(104, 132, 245, 0.2)"},{color:"rgba(164, 206, 78, 0.2)"},{color:"rgba(215, 86, 255, 0.2)"}];let o=0;const n=[];return t.forEach(((e,a)=>{const t=r[o++%r.length].color;n.push({label:`${a} Actual`,data:e.actual,backgroundColor:t,borderColor:t.replace("0.2","1"),borderWidth:5}),n.push({label:`${a} Expected`,data:e.expected,backgroundColor:t,borderColor:t.replace("0.2","1"),borderDash:[5,5]})})),{labels:a,datasets:n}},enupdateChartData(){this.enshowDetails?"quarter"===this.entimeMode?this.enchartData=this.engenerateyearChartData():"week"===this.timeMode&&(this.enchartData=this.engeneratedaterangeChartData()):this.enchartData=this.engenerateChartData()}}},re=t(3744);const oe=(0,re.Z)(te,[["render",G],["__scopeId","data-v-bd4a3f56"]]);var ne=oe}}]);
//# sourceMappingURL=857.ff712797.js.b99666700792.map