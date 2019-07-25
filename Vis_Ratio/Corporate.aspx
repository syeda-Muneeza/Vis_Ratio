<%@ Page Title="" Language="C#" MasterPageFile="~/RatioForm.Master" AutoEventWireup="true" CodeBehind="Corporate.aspx.cs" Inherits="Vis_Ratio.Corporate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Corporates" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <link href="css/table.css" rel="stylesheet" /> 
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
   <script type="text/javascript" language="javascript">
   $('form').bind("keypress", function(e) {
  if (e.keyCode == 13) {               
    e.preventDefault();
    return false;
  }
});
</script>
    <div>
        <asp:Button ID="btn" runat="server" Text="Edit" OnClick="btn_Click" />
    <table style=" border: 1px solid #1C6EA4;
    background-color: #EEEEEE;
    width: 100%;
    text-align: left;">
       
   <caption>Corporates</caption>
   
            <tr>
               
                <th colspan="2">BALANCE SHEET</th>
       
                <th colspan="2">INCOME STATEMENT AND CASH FLOW</th>
              
                <th colspan="2">RATIO ANALYSIS</th>
               
            </tr>
     <tr>
           
                   
             
                <td><asp:label ID="label22" runat="server" Text="Company Name"></asp:label></td>
                <td><asp:DropDownList ID="Drpcompany" runat="server" AppendDataBoundItems="true"
                    DataTextField="Company_name" DataValueField="Company_code" style="overflow:auto; width:200px; height:auto">

                       <asp:ListItem Value="0">0</asp:ListItem>
                    </asp:DropDownList></td>
              
          <td><asp:label ID="label48" runat="server" Text="LT Rating"></asp:label></td>
                <td><asp:DropDownList ID="Drpltrating" runat="server" TabIndex="1">
                    <asp:ListItem Value="0">0</asp:ListItem>
                    <asp:ListItem Value="1">A</asp:ListItem>
<asp:ListItem Value="2">A(f)</asp:ListItem>
<asp:ListItem Value="3">A(MQ)</asp:ListItem>
<asp:ListItem Value="4">A(p)</asp:ListItem>
<asp:ListItem Value="5">A+</asp:ListItem>
<asp:ListItem Value="6">A+(f)</asp:ListItem>
<asp:ListItem Value="7">A-</asp:ListItem>
<asp:ListItem Value="8">A-(f)</asp:ListItem>
<asp:ListItem Value="9">AA</asp:ListItem>
<asp:ListItem Value="10">AA (cpf)</asp:ListItem>
<asp:ListItem Value="11">AA (MQ)</asp:ListItem>
<asp:ListItem Value="12">AA(f)</asp:ListItem>
<asp:ListItem Value="13">AA(MQ)</asp:ListItem>
<asp:ListItem Value="14">AA(p)</asp:ListItem>
<asp:ListItem Value="15">AA+</asp:ListItem>
<asp:ListItem Value="16">AA+(cpf)</asp:ListItem>
<asp:ListItem Value="17">AA-</asp:ListItem>
<asp:ListItem Value="18">AAA</asp:ListItem>
<asp:ListItem Value="19">B</asp:ListItem>
<asp:ListItem Value="20">B-</asp:ListItem>
<asp:ListItem Value="21">B-3</asp:ListItem>
<asp:ListItem Value="22">BB</asp:ListItem>
<asp:ListItem Value="23">BB+</asp:ListItem>
<asp:ListItem Value="24">BB-</asp:ListItem>
<asp:ListItem Value="25">BBB</asp:ListItem>
<asp:ListItem Value="26">BBB+</asp:ListItem>
<asp:ListItem Value="27">BBB+(f)</asp:ListItem>
<asp:ListItem Value="28">BBB-</asp:ListItem>
<asp:ListItem Value="29">CGR-8</asp:ListItem>
<asp:ListItem Value="30">CGR-9</asp:ListItem>
<asp:ListItem Value="31">MFR 5-Star</asp:ListItem>
<asp:ListItem Value="32">PE-3+</asp:ListItem>
<asp:ListItem Value="33">MFR 4-Star</asp:ListItem>
<asp:ListItem Value="34">AM1</asp:ListItem>
<asp:ListItem Value="35">AM2</asp:ListItem>
<asp:ListItem Value="36">AM3</asp:ListItem>
<asp:ListItem Value="37">AM4</asp:ListItem>
<asp:ListItem Value="38">AM5</asp:ListItem>
<asp:ListItem Value="39">C</asp:ListItem>
<asp:ListItem Value="40">MFR 3-Star</asp:ListItem>
<asp:ListItem Value="41">MFR 2-Star</asp:ListItem>
<asp:ListItem Value="42">MFR 1-Star</asp:ListItem>
<asp:ListItem Value="43">GR-8</asp:ListItem>
<asp:ListItem Value="44">B+</asp:ListItem>
<asp:ListItem Value="45">AM2+</asp:ListItem>
<asp:ListItem Value="46">AM2-</asp:ListItem>
<asp:ListItem Value="47">AM3+</asp:ListItem>
<asp:ListItem Value="48">AM3-</asp:ListItem>
<asp:ListItem Value="49">AM4+</asp:ListItem>
<asp:ListItem Value="50">AM4-</asp:ListItem>
<asp:ListItem Value="51">AM5+</asp:ListItem>
<asp:ListItem Value="52">AM5-</asp:ListItem>
<asp:ListItem Value="53">AA- (f)</asp:ListItem>
<asp:ListItem Value="54">PE1</asp:ListItem>
<asp:ListItem Value="55">PE1+</asp:ListItem>
<asp:ListItem Value="56">PE1-</asp:ListItem>
<asp:ListItem Value="57">PE2</asp:ListItem>
<asp:ListItem Value="58">PE2+</asp:ListItem>
<asp:ListItem Value="59">PE2-</asp:ListItem>
<asp:ListItem Value="60">PE3</asp:ListItem>
<asp:ListItem Value="61">PE3+</asp:ListItem>
<asp:ListItem Value="62">PE3-</asp:ListItem>
<asp:ListItem Value="63">PE4</asp:ListItem>
<asp:ListItem Value="64">PE4+</asp:ListItem>
<asp:ListItem Value="65">PE4-</asp:ListItem>
<asp:ListItem Value="66">PE5</asp:ListItem>
<asp:ListItem Value="67">PE5+</asp:ListItem>
<asp:ListItem Value="68">PE5-</asp:ListItem>
<asp:ListItem Value="69">D</asp:ListItem>
<asp:ListItem Value="70">CCC</asp:ListItem>
<asp:ListItem Value="71">AM-DS</asp:ListItem>
<asp:ListItem Value="72">CGR-7</asp:ListItem>
<asp:ListItem Value="73">BB(f)</asp:ListItem>
<asp:ListItem Value="74">BBB(f)</asp:ListItem>
<asp:ListItem Value="75">AA+(f)</asp:ListItem>
<asp:ListItem Value="76">CC</asp:ListItem>
<asp:ListItem Value="77">BB+(f)</asp:ListItem>
<asp:ListItem Value="78">CGR 9++</asp:ListItem>
<asp:ListItem Value="79">CGR 9+</asp:ListItem>
<asp:ListItem Value="80">CGR 9</asp:ListItem>
<asp:ListItem Value="81">CGR 8++</asp:ListItem>
<asp:ListItem Value="82">CGR 8+</asp:ListItem>
<asp:ListItem Value="83">CGR 8</asp:ListItem>
<asp:ListItem Value="84">CGR 7++</asp:ListItem>
<asp:ListItem Value="85">CGR 7+</asp:ListItem>
<asp:ListItem Value="86">CGR 7</asp:ListItem>
<asp:ListItem Value="87">CGR 6++</asp:ListItem>
<asp:ListItem Value="88">CGR 6+</asp:ListItem>
<asp:ListItem Value="89">CGR 6</asp:ListItem>
<asp:ListItem Value="90">GR 9++</asp:ListItem>
<asp:ListItem Value="91">GR 9+</asp:ListItem>
<asp:ListItem Value="92">GR 9</asp:ListItem>
<asp:ListItem Value="93">GR 8++</asp:ListItem>
<asp:ListItem Value="94">GR 8+</asp:ListItem>
<asp:ListItem Value="95">GR 8</asp:ListItem>
<asp:ListItem Value="96">GR 7++</asp:ListItem>
<asp:ListItem Value="97">GR 7+</asp:ListItem>
<asp:ListItem Value="98">GR 7</asp:ListItem>
<asp:ListItem Value="99">GR 6++</asp:ListItem>
<asp:ListItem Value="100">GR 6+</asp:ListItem>
<asp:ListItem Value="101">GR 6</asp:ListItem>
<asp:ListItem Value="102">BBB-(f)</asp:ListItem>
<asp:ListItem Value="103">1%</asp:ListItem>
<asp:ListItem Value="104">2%</asp:ListItem>
<asp:ListItem Value="105">3%</asp:ListItem>
<asp:ListItem Value="106">4%</asp:ListItem>
<asp:ListItem Value="107">5%</asp:ListItem>
<asp:ListItem Value="108">6%</asp:ListItem>
<asp:ListItem Value="109">7%</asp:ListItem>
<asp:ListItem Value="110">8%</asp:ListItem>
<asp:ListItem Value="111">9%</asp:ListItem>
<asp:ListItem Value="112">10%</asp:ListItem>
<asp:ListItem Value="113">11%</asp:ListItem>
<asp:ListItem Value="114">12%</asp:ListItem>
<asp:ListItem Value="115">13%</asp:ListItem>
<asp:ListItem Value="116">14%</asp:ListItem>
<asp:ListItem Value="117">15%</asp:ListItem>
<asp:ListItem Value="118">16%</asp:ListItem>
<asp:ListItem Value="119">17%</asp:ListItem>
<asp:ListItem Value="120">18%</asp:ListItem>
<asp:ListItem Value="121">19%</asp:ListItem>
<asp:ListItem Value="122">20%</asp:ListItem>
<asp:ListItem Value="123">21%</asp:ListItem>
<asp:ListItem Value="124">22%</asp:ListItem>
<asp:ListItem Value="125">23%</asp:ListItem>
<asp:ListItem Value="126">24%</asp:ListItem>
<asp:ListItem Value="127">25%</asp:ListItem>
<asp:ListItem Value="128">26%</asp:ListItem>
<asp:ListItem Value="129">27%</asp:ListItem>
<asp:ListItem Value="130">28%</asp:ListItem>
<asp:ListItem Value="131">29%</asp:ListItem>
<asp:ListItem Value="132">30%</asp:ListItem>
<asp:ListItem Value="133">31%</asp:ListItem>
<asp:ListItem Value="134">32%</asp:ListItem>
<asp:ListItem Value="135">33%</asp:ListItem>
<asp:ListItem Value="136">34%</asp:ListItem>
<asp:ListItem Value="137">35%</asp:ListItem>
<asp:ListItem Value="138">36%</asp:ListItem>
<asp:ListItem Value="139">37%</asp:ListItem>
<asp:ListItem Value="140">38%</asp:ListItem>
<asp:ListItem Value="141">39%</asp:ListItem>
<asp:ListItem Value="142">40%</asp:ListItem>
<asp:ListItem Value="143">41%</asp:ListItem>
<asp:ListItem Value="144">42%</asp:ListItem>
<asp:ListItem Value="145">43%</asp:ListItem>
<asp:ListItem Value="146">44%</asp:ListItem>
<asp:ListItem Value="147">45%</asp:ListItem>
<asp:ListItem Value="148">46%</asp:ListItem>
<asp:ListItem Value="149">47%</asp:ListItem>
<asp:ListItem Value="150">48%</asp:ListItem>
<asp:ListItem Value="151">49%</asp:ListItem>
<asp:ListItem Value="152">50%</asp:ListItem>
<asp:ListItem Value="153">51%</asp:ListItem>
<asp:ListItem Value="154">52%</asp:ListItem>
<asp:ListItem Value="155">53%</asp:ListItem>
<asp:ListItem Value="156">54%</asp:ListItem>
<asp:ListItem Value="157">55%</asp:ListItem>
<asp:ListItem Value="158">56%</asp:ListItem>
<asp:ListItem Value="159">57%</asp:ListItem>
<asp:ListItem Value="160">58%</asp:ListItem>
<asp:ListItem Value="161">59%</asp:ListItem>
<asp:ListItem Value="162">60%</asp:ListItem>
<asp:ListItem Value="163">61%</asp:ListItem>
<asp:ListItem Value="164">62%</asp:ListItem>
<asp:ListItem Value="165">63%</asp:ListItem>
<asp:ListItem Value="166">64%</asp:ListItem>
<asp:ListItem Value="167">65%</asp:ListItem>
<asp:ListItem Value="168">66%</asp:ListItem>
<asp:ListItem Value="169">67%</asp:ListItem>
<asp:ListItem Value="170">68%</asp:ListItem>
<asp:ListItem Value="171">69%</asp:ListItem>
<asp:ListItem Value="172">70%</asp:ListItem>
<asp:ListItem Value="173">71%</asp:ListItem>
<asp:ListItem Value="174">72%</asp:ListItem>
<asp:ListItem Value="175">73%</asp:ListItem>
<asp:ListItem Value="176">74%</asp:ListItem>
<asp:ListItem Value="177">75%</asp:ListItem>
<asp:ListItem Value="178">76%</asp:ListItem>
<asp:ListItem Value="179">77%</asp:ListItem>
<asp:ListItem Value="180">78%</asp:ListItem>
<asp:ListItem Value="181">79%</asp:ListItem>
<asp:ListItem Value="182">80%</asp:ListItem>
<asp:ListItem Value="183">81%</asp:ListItem>
<asp:ListItem Value="184">82%</asp:ListItem>
<asp:ListItem Value="185">83%</asp:ListItem>
<asp:ListItem Value="186">84%</asp:ListItem>
<asp:ListItem Value="187">85%</asp:ListItem>
<asp:ListItem Value="188">86%</asp:ListItem>
<asp:ListItem Value="189">87%</asp:ListItem>
<asp:ListItem Value="190">88%</asp:ListItem>
<asp:ListItem Value="191">89%</asp:ListItem>
<asp:ListItem Value="192">9%</asp:ListItem>
<asp:ListItem Value="193">91%</asp:ListItem>
<asp:ListItem Value="194">92%</asp:ListItem>
<asp:ListItem Value="195">93%</asp:ListItem>
<asp:ListItem Value="196">94%</asp:ListItem>
<asp:ListItem Value="197">95%</asp:ListItem>
<asp:ListItem Value="198">96%</asp:ListItem>
<asp:ListItem Value="199">97%</asp:ListItem>
<asp:ListItem Value="200">98%</asp:ListItem>
<asp:ListItem Value="201">99%</asp:ListItem>
<asp:ListItem Value="202">100%</asp:ListItem>
<asp:ListItem Value="203">AAA (SO)</asp:ListItem>
<asp:ListItem Value="204">AA+ (SO)</asp:ListItem>
<asp:ListItem Value="205">AA (SO)</asp:ListItem>
<asp:ListItem Value="206">AA- (SO)</asp:ListItem>
<asp:ListItem Value="207">A+ (SO)</asp:ListItem>
<asp:ListItem Value="208">A (SO)</asp:ListItem>
<asp:ListItem Value="209">A- (SO)</asp:ListItem>
<asp:ListItem Value="210">BBB(SO)</asp:ListItem>
<asp:ListItem Value="211">BBB+(SO)</asp:ListItem>
<asp:ListItem Value="212">BBB- (SO)</asp:ListItem>
<asp:ListItem Value="213">BB+ (SO)</asp:ListItem>
<asp:ListItem Value="214">BB (SO)</asp:ListItem>
<asp:ListItem Value="215">BB- (SO)</asp:ListItem>
<asp:ListItem Value="216">B+ (SO)</asp:ListItem>
<asp:ListItem Value="217">B (SO)</asp:ListItem>
<asp:ListItem Value="218">B- (SO)</asp:ListItem>
<asp:ListItem Value="219">CCC (SO)</asp:ListItem>
<asp:ListItem Value="220">CC (SO)</asp:ListItem>
<asp:ListItem Value="221">C (SO)</asp:ListItem>
<asp:ListItem Value="222">D (SO)</asp:ListItem>
<asp:ListItem Value="223">AAA (cpf)</asp:ListItem>
<asp:ListItem Value="224">AM1- (IA) </asp:ListItem>
<asp:ListItem Value="225">AM1 (IA) </asp:ListItem>
<asp:ListItem Value="226">AM1+ (IA) </asp:ListItem>
<asp:ListItem Value="227">AM2- (IA) </asp:ListItem>
<asp:ListItem Value="228">AM2 (IA) </asp:ListItem>
<asp:ListItem Value="229">AM2+ (IA) </asp:ListItem>
<asp:ListItem Value="230">AM3- (IA)</asp:ListItem>
<asp:ListItem Value="231">AM3 (IA)</asp:ListItem>
<asp:ListItem Value="232">AM3+ (IA)</asp:ListItem>
<asp:ListItem Value="233">AM4- (IA)</asp:ListItem>
<asp:ListItem Value="234">AM4 (IA)</asp:ListItem>
<asp:ListItem Value="235">AM4+ (IA)</asp:ListItem>
<asp:ListItem Value="236">AM5- (IA)</asp:ListItem>
<asp:ListItem Value="237">AM5 (IA)</asp:ListItem>
<asp:ListItem Value="238">AM5+ (IA)</asp:ListItem>
<asp:ListItem Value="239">RR1+</asp:ListItem>
<asp:ListItem Value="240">RR1</asp:ListItem>
<asp:ListItem Value="241">RR1-</asp:ListItem>
<asp:ListItem Value="242">RR2+</asp:ListItem>
<asp:ListItem Value="243">RR2</asp:ListItem>
<asp:ListItem Value="244">RR2-</asp:ListItem>
<asp:ListItem Value="245">RR3+</asp:ListItem>
<asp:ListItem Value="246">RR3</asp:ListItem>
<asp:ListItem Value="247">RR3-</asp:ListItem>
<asp:ListItem Value="248">RR4+</asp:ListItem>
<asp:ListItem Value="249">RR4</asp:ListItem>
<asp:ListItem Value="250">RR4-</asp:ListItem>
<asp:ListItem Value="251">RR5+</asp:ListItem>
<asp:ListItem Value="252">RR5</asp:ListItem>
<asp:ListItem Value="253">RR5-</asp:ListItem>
<asp:ListItem Value="254">AM1 (IA)</asp:ListItem>
<asp:ListItem Value="255">AM2 (IA)</asp:ListItem>
<asp:ListItem Value="256">AM3 (IA)</asp:ListItem>
<asp:ListItem Value="257">AM4 (IA)</asp:ListItem>
<asp:ListItem Value="258">AM5 (IA)</asp:ListItem>
<asp:ListItem Value="259">AM1 (RMC)</asp:ListItem>
<asp:ListItem Value="260">AM2 (RMC)</asp:ListItem>
<asp:ListItem Value="261">AM3 (RMC)</asp:ListItem>
<asp:ListItem Value="262">AM4 (RMC)</asp:ListItem>
<asp:ListItem Value="263">AM5 (RMC)</asp:ListItem>
<asp:ListItem Value="264">AM2 +(IA)</asp:ListItem>
<asp:ListItem Value="265">AM2 (IA)</asp:ListItem>
<asp:ListItem Value="266">AM2 -(IA)</asp:ListItem>
<asp:ListItem Value="267">AM3 +(IA)</asp:ListItem>
<asp:ListItem Value="268">AM3 (IA)</asp:ListItem>
<asp:ListItem Value="269">AM3 -(IA)</asp:ListItem>
<asp:ListItem Value="270">AM4 +(IA)</asp:ListItem>
<asp:ListItem Value="271">AM4 (IA)</asp:ListItem>
<asp:ListItem Value="272">AM4 -(IA)</asp:ListItem>
<asp:ListItem Value="273">AM5 +(IA)</asp:ListItem>
<asp:ListItem Value="274">AM5 (IA)</asp:ListItem>
<asp:ListItem Value="275">AM5 -(IA)</asp:ListItem>
<asp:ListItem Value="276">AM2 +(RMC)</asp:ListItem>
<asp:ListItem Value="277">AM2 (RMC)</asp:ListItem>
<asp:ListItem Value="278">AM2 -(RMC)</asp:ListItem>
<asp:ListItem Value="279">AM3 +(RMC)</asp:ListItem>
<asp:ListItem Value="280">AM3 (RMC)</asp:ListItem>
<asp:ListItem Value="281">AM3 -(RMC)</asp:ListItem>
<asp:ListItem Value="282">AM4 +(RMC)</asp:ListItem>
<asp:ListItem Value="283">AM4 (RMC)</asp:ListItem>
<asp:ListItem Value="284">AM4 -(RMC)</asp:ListItem>
<asp:ListItem Value="285">AM5 +(RMC)</asp:ListItem>
<asp:ListItem Value="286">AM5 (RMC)</asp:ListItem>
<asp:ListItem Value="287">AM5 -(RMC)</asp:ListItem>
<asp:ListItem Value="288">CP1+</asp:ListItem>
<asp:ListItem Value="289">CP1</asp:ListItem>
<asp:ListItem Value="290">CP2+</asp:ListItem>
<asp:ListItem Value="291">CP2</asp:ListItem>
<asp:ListItem Value="292">CP3+</asp:ListItem>
<asp:ListItem Value="293">CP3</asp:ListItem>
<asp:ListItem Value="294">CP4+</asp:ListItem>
<asp:ListItem Value="295">CP4</asp:ListItem>
<asp:ListItem Value="296">CP5+</asp:ListItem>
<asp:ListItem Value="297">CP5</asp:ListItem>
<asp:ListItem Value="298">AAA (blr)</asp:ListItem>
<asp:ListItem Value="299">AAA</asp:ListItem>
<asp:ListItem Value="300">AA+ (blr)</asp:ListItem>
<asp:ListItem Value="301">A</asp:ListItem>
<asp:ListItem Value="302">AA (blr)</asp:ListItem>
<asp:ListItem Value="303">AA (blr)</asp:ListItem>
<asp:ListItem Value="304">AA- (blr)</asp:ListItem>
<asp:ListItem Value="305">A+ (blr)</asp:ListItem>
<asp:ListItem Value="306">A (blr)</asp:ListItem>
<asp:ListItem Value="307">A- (blr)</asp:ListItem>
<asp:ListItem Value="308">BBB(blr)</asp:ListItem>
<asp:ListItem Value="309">BBB+(blr)</asp:ListItem>
<asp:ListItem Value="310">BBB- (blr)</asp:ListItem>
<asp:ListItem Value="311">BB+ (blr)</asp:ListItem>
<asp:ListItem Value="312">BB (blr)</asp:ListItem>
<asp:ListItem Value="313">BB- (blr)</asp:ListItem>
<asp:ListItem Value="314">B+ (blr)</asp:ListItem>
<asp:ListItem Value="315">B (blr)</asp:ListItem>
<asp:ListItem Value="316">B- (blr)</asp:ListItem>
<asp:ListItem Value="317">CCC (blr)</asp:ListItem>
<asp:ListItem Value="318">CC (blr)</asp:ListItem>
<asp:ListItem Value="319">C (blr)</asp:ListItem>
<asp:ListItem Value="320">D (blr)</asp:ListItem>
<asp:ListItem Value="321">BB- (f)</asp:ListItem>
<asp:ListItem Value="322">AM2++</asp:ListItem>
<asp:ListItem Value="323">AM3++</asp:ListItem>
<asp:ListItem Value="324">AM4++</asp:ListItem>
<asp:ListItem Value="325">AM2++(IA)</asp:ListItem>
<asp:ListItem Value="326">AM3++(IA)</asp:ListItem>
<asp:ListItem Value="327">AM4++(IA)</asp:ListItem>
<asp:ListItem Value="328">AM2++(RMC)</asp:ListItem>
<asp:ListItem Value="329">AM3++(RMC)</asp:ListItem>
<asp:ListItem Value="330">AM4++(RMC)</asp:ListItem>
<asp:ListItem Value="331">BMR1A</asp:ListItem>
<asp:ListItem Value="332">BMR1++</asp:ListItem>
<asp:ListItem Value="333">BMR1+</asp:ListItem>
<asp:ListItem Value="334">BMR1</asp:ListItem>
<asp:ListItem Value="335">BMR2++</asp:ListItem>
<asp:ListItem Value="336">BMR2+</asp:ListItem>
<asp:ListItem Value="337">BMR2</asp:ListItem>
<asp:ListItem Value="338">BMR3++</asp:ListItem>
<asp:ListItem Value="339">BMR3+</asp:ListItem>
<asp:ListItem Value="340">BMR3</asp:ListItem>
<asp:ListItem Value="341">BMR4++</asp:ListItem>
<asp:ListItem Value="342">BMR4+</asp:ListItem>
<asp:ListItem Value="343">BMR4</asp:ListItem>
<asp:ListItem Value="344">BMR5++</asp:ListItem>
<asp:ListItem Value="345">BMR5+</asp:ListItem>
<asp:ListItem Value="346">BMR5</asp:ListItem>

                    </asp:DropDownList></td>
       
         <td><asp:label ID="label49" runat="server" Text="ST Rating"></asp:label></td>
             <td><asp:DropDownList ID="Drpst" runat="server" TabIndex="2">
                    <asp:ListItem Value="0">0</asp:ListItem>
          
            <asp:ListItem Value="1">A-1</asp:ListItem>
            <asp:ListItem Value="2">A-1+</asp:ListItem>
            <asp:ListItem Value="3">A-2</asp:ListItem>
            <asp:ListItem Value="4">A-3</asp:ListItem>
            <asp:ListItem Value="5">B</asp:ListItem>
            <asp:ListItem Value="6">C</asp:ListItem>
            <asp:ListItem Value="7">MFR 1-Star</asp:ListItem>
            <asp:ListItem Value="8">MFR 2-Star</asp:ListItem>
            <asp:ListItem Value="9">MFR 3-Star</asp:ListItem>
            <asp:ListItem Value="10">MFR 4-Star</asp:ListItem>
                 
            <asp:ListItem Value="11">MFR 5-Star</asp:ListItem>
            <asp:ListItem Value="12">A-1+ (SO)</asp:ListItem>
            <asp:ListItem Value="13">A-1 (SO)</asp:ListItem>
            <asp:ListItem Value="14">A-2 (SO)</asp:ListItem>
            <asp:ListItem Value="15">A-3 (SO)</asp:ListItem>
            <asp:ListItem Value="16">B (SO)</asp:ListItem>
            <asp:ListItem Value="17">C (SO)</asp:ListItem>
          
                  
                    </asp:DropDownList></td>
       
            </tr>

       <tr>
              
             <td><asp:label ID="label47" runat="server" Text="Rating Type"></asp:label></td>
             <td><asp:DropDownList ID="Drpratingtype" runat="server" TabIndex="3">
                    <asp:ListItem Value="0">0</asp:ListItem>
            


            <asp:ListItem Value="1">Entity</asp:ListItem>
            <asp:ListItem Value="2">Capital Protected Fund</asp:ListItem>
            <asp:ListItem Value="3">CGR</asp:ListItem>
            <asp:ListItem Value="4">Developer Grading</asp:ListItem>
            <asp:ListItem Value="5">Equity</asp:ListItem>
            <asp:ListItem Value="6">Fund Stability</asp:ListItem>
            <asp:ListItem Value="7">IFS</asp:ListItem>
            <asp:ListItem Value="8">Management Quality</asp:ListItem>
            <asp:ListItem Value="9">MF Performance</asp:ListItem>
            <asp:ListItem Value="10">MFP Ranking</asp:ListItem>
                 
            <asp:ListItem Value="11">NPO-GR</asp:ListItem>
            <asp:ListItem Value="12">PTC 1</asp:ListItem>
            <asp:ListItem Value="13">Secured Debt</asp:ListItem>
            <asp:ListItem Value="14">Securitization</asp:ListItem>
            <asp:ListItem Value="15">Sukuk 1</asp:ListItem>
            <asp:ListItem Value="16">TFC-1</asp:ListItem>
            <asp:ListItem Value="17">TFC-2</asp:ListItem>
            <asp:ListItem Value="18">TFC-3</asp:ListItem>
            <asp:ListItem Value="19">TFC-4</asp:ListItem>
            <asp:ListItem Value="20">PICG (CG)</asp:ListItem>
                 
            <asp:ListItem Value="21">BFR</asp:ListItem>
            <asp:ListItem Value="22">BLR</asp:ListItem>
            <asp:ListItem Value="23">COI</asp:ListItem>
            <asp:ListItem Value="24">CP</asp:ListItem>
            <asp:ListItem Value="25">CPF Rating</asp:ListItem>
            <asp:ListItem Value="26">Debt Instrument Rating</asp:ListItem>
            <asp:ListItem Value="27">Financial Risk Appraisal</asp:ListItem>
            <asp:ListItem Value="28">Pref Share</asp:ListItem>
            <asp:ListItem Value="29">Fiduciary Ratings</asp:ListItem>
            <asp:ListItem Value="30">Govt. Guaranteed Obligations</asp:ListItem>
                     
            <asp:ListItem Value="31">Sukuk 2</asp:ListItem>
            <asp:ListItem Value="32">Sukuk 3</asp:ListItem>
            <asp:ListItem Value="33">PTC 2</asp:ListItem>
            <asp:ListItem Value="34">Sukuk 4</asp:ListItem>
            <asp:ListItem Value="35">TFC-5</asp:ListItem>
            <asp:ListItem Value="36">REIT Rating</asp:ListItem>
            <asp:ListItem Value="37">BMR</asp:ListItem>
            <asp:ListItem Value="38">CP-2</asp:ListItem>
            <asp:ListItem Value="39">CP-3</asp:ListItem>
          
                  
                    </asp:DropDownList></td>
                
                <td><asp:Label ID="Label2" runat="server" Text="Outlook"></asp:Label></td>
                <td><asp:DropDownList ID="Drpoutlook" runat="server" TabIndex="4">
                    <asp:ListItem Value="0">0</asp:ListItem>
            


            <asp:ListItem Value="1">Negative</asp:ListItem>
            <asp:ListItem Value="2">Positive</asp:ListItem>
            <asp:ListItem Value="3">Rating Watch</asp:ListItem>
            <asp:ListItem Value="4">Rating Watch - Developing</asp:ListItem>
            <asp:ListItem Value="5">Rating Watch - Negative</asp:ListItem>
            <asp:ListItem Value="6">Rating Watch - Positive</asp:ListItem>
            <asp:ListItem Value="7">Stable</asp:ListItem>
          
                 
           
                    </asp:DropDownList></td>

         <td><asp:label ID="label25" runat="server" Text="Sub Sector"></asp:label></td> 
          <td><asp:DropDownList ID="Drpsub" runat="server" style="overflow:auto; width:200px; height:auto" TabIndex="5">
                    <asp:ListItem Value="0">0</asp:ListItem>
          
            <asp:ListItem Value="1">AUTO & ALLIED</asp:ListItem>
            <asp:ListItem Value="2">CHEMICALS & PHARMA</asp:ListItem>
            <asp:ListItem Value="3">CEMENT & CONSTRUCTION</asp:ListItem>
            <asp:ListItem Value="4">COMMUNICATION</asp:ListItem>
            <asp:ListItem Value="5">CONSUMER GOODS</asp:ListItem>
            <asp:ListItem Value="6">ENGINEERING</asp:ListItem>
            <asp:ListItem Value="7">FERTILIZERS</asp:ListItem>
            <asp:ListItem Value="8">MISCELLANEOUS</asp:ListItem>
            <asp:ListItem Value="9">OIL & GAS</asp:ListItem>
            <asp:ListItem Value="10">PAPER & PACKAGING</asp:ListItem>
                 
            <asp:ListItem Value="11">POWER COMPANIES</asp:ListItem>
            <asp:ListItem Value="12">STEEL & ALLIED PRODUCTS</asp:ListItem>
            <asp:ListItem Value="13">SUGAR</asp:ListItem>
            <asp:ListItem Value="14">TANNERIES AND LEATHER PRODUCTS</asp:ListItem>
            <asp:ListItem Value="15">TEXTILES</asp:ListItem>
            <asp:ListItem Value="16">TRANSPORT</asp:ListItem>
           
          
                  
                    </asp:DropDownList></td>

            </tr>

       <tr>
              
            <td><asp:Label ID="Label1" runat="server" Text="Account type"></asp:Label></td>
                <td><asp:DropDownList ID="Drpac" runat="server" TabIndex="6">
                    <asp:ListItem Value="0">0</asp:ListItem>
            
             <asp:ListItem Value="1">Q1</asp:ListItem>
             <asp:ListItem Value="2">Hy</asp:ListItem>
             <asp:ListItem Value="3">Q3</asp:ListItem>
             <asp:ListItem Value="4">Fy</asp:ListItem>
             <asp:ListItem Value="5">Cy</asp:ListItem>
             <asp:ListItem Value="6">My</asp:ListItem>
             
             </asp:DropDownList></td>

             <td><asp:Label ID="Label19" runat="server" Text="Year"></asp:Label></td>
             <td><asp:TextBox ID="txtMyDate" runat="server" TabIndex="18"></asp:TextBox></td>
             <td><asp:Label ID="Label3" runat="server" Text="Gross Margin (%)"></asp:Label></td>
             <td><asp:TextBox ID="GrossMargin" runat="server" TabIndex="30"></asp:TextBox></td>
           
       </tr>
    
       <tr>
          
             <td><asp:Label ID="Label31" runat="server" Text="Fixed Assets"></asp:Label></td>
             <td><asp:TextBox ID="FixedAssets" runat="server" TabIndex="7"></asp:TextBox></td>
             <td><asp:Label ID="Label28" runat="server" Text="Net Sales"></asp:Label></td>
             <td>  <asp:TextBox ID="NeSales" runat="server" TabIndex="19"></asp:TextBox></td>
            
                
              <td><asp:Label ID="Label6" runat="server" Text="Net Margin(%)"></asp:Label></td>
              <td><asp:TextBox ID="NetMargin" runat="server" TabIndex="31"></asp:TextBox></td>
           
       </tr> 

       <tr>
              <td><asp:Label ID="Label4" runat="server" Text="Long term Deposits"></asp:Label></td>
              <td><asp:TextBox ID="LongDeposits" runat="server" TabIndex="8"></asp:TextBox></td>
              <td><asp:Label ID="Label5" runat="server" Text="Gross Profit"></asp:Label></td>
              <td><asp:TextBox ID="GrossProfit" runat="server" TabIndex="20"></asp:TextBox></td>
                             
              
                   <td><asp:Label ID="Label9" runat="server" Text="FFO to Total Debt (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="FFODebt" runat="server" TabIndex="32"></asp:TextBox></td>  
            </tr>
       
       <tr> <td><asp:Label ID="Label7" runat="server" Text="Stock-in-Trade"></asp:Label></td>
                <td><asp:TextBox ID="Stocktrade" runat="server" TabIndex="9"></asp:TextBox></td>
               <td><asp:Label ID="Label8" runat="server" Text="Profit Before Tax"></asp:Label></td>
                <td>  <asp:TextBox ID="ProfitTax" runat="server" TabIndex="21"></asp:TextBox></td>
               
               
                
                 <td><asp:Label ID="Label12" runat="server" Text="FFO to Long Term Debt (%)"></asp:Label></td>
                <td>  <asp:TextBox ID="FFOTermDebt" runat="server" TabIndex="33"></asp:TextBox></td>    
            </tr>

       <tr> 
               <td><asp:Label ID="Label10" runat="server" Text="Trade Debts"></asp:Label></td>
                <td><asp:TextBox ID="TradeDebts" runat="server" TabIndex="10"></asp:TextBox></td>
             <td><asp:Label ID="Label11" runat="server" Text="Profit After Tax"></asp:Label></td>
                <td><asp:TextBox ID="ProfitAfter" runat="server" TabIndex="22"></asp:TextBox></td>
               
             
                <td><asp:Label ID="Label15" runat="server" Text="Debt Servicing Coverage Ratio (x)"></asp:Label></td>
                <td><asp:TextBox ID="Debtoverage" runat="server" TabIndex="34"></asp:TextBox></td>
           
           
                </tr> 
        <tr>
             <td><asp:Label ID="Label13" runat="server" Text="Cash & Bank Balances"></asp:Label></td>
                <td><asp:TextBox ID="CashBalances" runat="server" TabIndex="11"></asp:TextBox></td>  
              
                  <td><asp:Label ID="Label14" runat="server" Text="FFO"></asp:Label></td>
                <td><asp:TextBox ID="FFO" runat="server" TabIndex="23"></asp:TextBox></td>
            
                 <td><asp:Label ID="Label18" runat="server" Text="ROAA (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAA" runat="server" TabIndex="35"></asp:TextBox></td>
            </tr>

        


        <tr>
             <td><asp:Label ID="Label16" runat="server" Text="Total Assets"></asp:Label></td>
                <td><asp:TextBox ID="TotalAssets" runat="server" TabIndex="12"></asp:TextBox></td>
            
                
                 <td><asp:Label ID="Label20" runat="server" Text="ROAE (%)"></asp:Label></td>
                <td><asp:TextBox ID="ROAE" runat="server" TabIndex="24"></asp:TextBox></td>
               
                    <td></td>
         
                  
                     <td><asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" CssClass="button" TabIndex="38" /></td>
 
            </tr>
        <tr>  <td><asp:Label ID="Label17" runat="server" Text="Trade and Other Payables"></asp:Label></td>
                <td><asp:TextBox ID="Trade" runat="server" TabIndex="13"></asp:TextBox></td>  
             
               
                 <td><asp:Label ID="Label23" runat="server" Text="Gearing(X)"></asp:Label></td>
                <td><asp:TextBox ID="Gearing" runat="server" TabIndex="25"></asp:TextBox></td>
                
                    
            </tr>
        <tr>
             <td><asp:Label ID="Label21" runat="server" Text="Long Term Debt"></asp:Label></td>
                <td><asp:TextBox ID="LongDebt" runat="server" TabIndex="14"></asp:TextBox></td>  
               
               
                 <td><asp:Label ID="Label26" runat="server" Text="Leverage(X)"></asp:Label></td>
                <td><asp:TextBox ID="Leverage" runat="server" TabIndex="26"></asp:TextBox></td>
               
                    
            </tr>
        <tr>
            <td><asp:Label ID="Label24" runat="server" Text="Short Term Debt"></asp:Label></td>
                <td><asp:TextBox ID="ShortDebt" runat="server" TabIndex="15"></asp:TextBox></td>  
              
               
                 <td><asp:Label ID="Label29" runat="server" Text="(Stock in Trade + Trade Debts)/ Short Term Borrowings"></asp:Label></td>
                <td><asp:TextBox ID="Stock" runat="server" TabIndex="27"></asp:TextBox></td>
               
                    
            </tr>
        <tr>
             <td><asp:Label ID="Label27" runat="server" Text="Total Debt"></asp:Label></td>
                <td><asp:TextBox ID="TotalDebt" runat="server" TabIndex="16"></asp:TextBox></td>  
               
                 <td><asp:Label ID="Label32" runat="server" Text="Current Ratio(X)"></asp:Label></td>
                <td><asp:TextBox ID="CurrentRatio" runat="server" TabIndex="28"></asp:TextBox></td>
            
            
           
                           </tr>
      <tr><td><asp:Label ID="Label30" runat="server" Text="Total Liabilities"></asp:Label></td>
                <td><asp:TextBox ID="TotalLiabilities" runat="server" TabIndex="17"></asp:TextBox></td>  
         
           <td><asp:Label ID="Label33" runat="server" Text="Total Equity"></asp:Label></td>
                <td><asp:TextBox ID="TotalEquity" runat="server" TabIndex="29"></asp:TextBox></td>  
      </tr>
    </table>
  


   
</div>


</asp:Content>
