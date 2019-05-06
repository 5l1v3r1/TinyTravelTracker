<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1556681619487" ID="ID_1540936311" MODIFIED="1556681656769" TEXT="ttt">
<node CREATED="1556681657696" ID="ID_74087139" MODIFIED="1556760199556" POSITION="right" TEXT="2019/5/2">
<node CREATED="1556760200628" ID="ID_254337593" MODIFIED="1556760201312" TEXT="todo">
<node CREATED="1556760202154" ID="ID_1405293391" MODIFIED="1556760208630" TEXT="get rid of onsceneready hack">
<node CREATED="1556760783605" ID="ID_1089431796" MODIFIED="1556760784187" TEXT="done"/>
</node>
<node CREATED="1556760208954" ID="ID_978724935" MODIFIED="1556760216749" TEXT="fix timeline movement not working">
<node CREATED="1556760780828" ID="ID_390793880" MODIFIED="1556760781672" TEXT="done"/>
</node>
<node CREATED="1556760217060" ID="ID_1105625448" MODIFIED="1556760231868" TEXT="long press select points">
<node CREATED="1556764391988" ID="ID_503221133" MODIFIED="1556764402272" TEXT="the problem is that longpress normally doesn&apos;t work with pan">
<node CREATED="1556764403190" ID="ID_943432033" MODIFIED="1556764413110" TEXT="pan won&apos;t activate after a long press has been detected"/>
</node>
<node CREATED="1556764046206" ID="ID_946320077" MODIFIED="1556764389590" TEXT="mytouchinput will create its own gesturelistener just for long press"/>
</node>
<node CREATED="1556760238747" ID="ID_746794742" MODIFIED="1556760240980" TEXT="search for fixmes"/>
</node>
</node>
<node CREATED="1557104818549" ID="ID_1808752345" MODIFIED="1557104830017" POSITION="right" TEXT="2019/5/6">
<node CREATED="1557104831310" ID="ID_106721565" MODIFIED="1557104841546" TEXT="font scaling">
<node CREATED="1557104845458" ID="ID_1336549839" MODIFIED="1557104849181" TEXT="create custom map">
<node CREATED="1557104853069" ID="ID_1306576423" MODIFIED="1557104860507" TEXT="hard code font scaling and double it or whatever"/>
<node CREATED="1557104862242" ID="ID_794611790" MODIFIED="1557104868915" TEXT="create functions for all fonts"/>
</node>
<node CREATED="1557104876749" ID="ID_669032642" MODIFIED="1557104884939" TEXT="multiply opengl matrix">
<node CREATED="1557104886613" ID="ID_1482547786" MODIFIED="1557104897356" TEXT="This would make all maps automatically scaled"/>
<node CREATED="1557106153834" ID="ID_1917924276" MODIFIED="1557106170988" TEXT="We could piggyback this to render our points directly on the gl surface rather than use the crappy ui way"/>
<node CREATED="1557104944332" ID="ID_1570017006" MODIFIED="1557104958562" TEXT="panning would be affected"/>
<node CREATED="1557105474469" ID="ID_361732594" MODIFIED="1557105990962" TEXT="In the map view">
<node CREATED="1557105482559" ID="ID_1402187713" MODIFIED="1557105500952" TEXT="GlViewHolderFactory"/>
<node CREATED="1557105518308" ID="ID_810165955" MODIFIED="1557105522238" TEXT="GLViewHolder"/>
<node CREATED="1557105990957" ID="ID_511805009" MODIFIED="1557105993648" TEXT="GLSurfaceView">
<node CREATED="1557105865254" ID="ID_1628774574" MODIFIED="1557105869374" TEXT="setGLWrapper">
<node CREATED="1557105917833" ID="ID_1942626161" MODIFIED="1557105926147" TEXT="wraps a GL interface in another GL interface"/>
</node>
<node CREATED="1557105994342" ID="ID_256740864" MODIFIED="1557105999762" TEXT="setRenderer">
<node CREATED="1557106001126" ID="ID_1574469694" MODIFIED="1557106003922" TEXT="must only be called once"/>
</node>
</node>
</node>
<node CREATED="1557106053144" ID="ID_14619739" MODIFIED="1557106055887" TEXT="replace renderer">
<node CREATED="1557106136376" ID="ID_1944958580" MODIFIED="1557106150792" TEXT="override onMapInitUIThread">
<node CREATED="1557106213427" ID="ID_1221869715" MODIFIED="1557106216794" TEXT="in MapView"/>
<node CREATED="1557106217230" ID="ID_1949084958" MODIFIED="1557106249559" TEXT="we can pass our own GLViewHolderFactory">
<node CREATED="1557106436091" ID="ID_1556632149" MODIFIED="1557106448661" TEXT="The implementation of this is GLSurfaceViewHolderFactory"/>
</node>
<node CREATED="1557106356722" ID="ID_1076879531" MODIFIED="1557106540512" TEXT="MapController calls GlSurfaceViewHolder.setRenderer()">
<node CREATED="1557106577982" ID="ID_1129331985" MODIFIED="1557106587943" TEXT="In UIThreadInit">
<node CREATED="1557106588745" ID="ID_496005786" MODIFIED="1557106592605" TEXT="package viewable method"/>
<node CREATED="1557106596101" ID="ID_95928535" MODIFIED="1557106599587" TEXT="Called by MapView">
<node CREATED="1557106658790" ID="ID_865036701" MODIFIED="1557106660762" TEXT="In onMapInitOnUIThread">
<node CREATED="1557106663318" ID="ID_467668961" MODIFIED="1557106665030" TEXT="protected"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1557106737367" ID="ID_1144243620" MODIFIED="1557106751233" TEXT="Override onDrawFrame in MapController">
<node CREATED="1557106751843" ID="ID_549147672" MODIFIED="1557106758115" TEXT="we already have MyMapController"/>
<node CREATED="1557106758403" ID="ID_1594787119" MODIFIED="1557106800567" TEXT="We just call glMultMatrix?"/>
<node CREATED="1557106951587" ID="ID_1272630953" MODIFIED="1557106953771" TEXT="glScale"/>
<node CREATED="1557107489319" ID="ID_1431270730" MODIFIED="1557107508520" TEXT="doesn&apos;t work, nativeRender or nativeUpdate must be resetting it"/>
</node>
<node CREATED="1557107885859" ID="ID_155437269" MODIFIED="1557107893561" TEXT="update pixel scale?">
<node CREATED="1557107896399" ID="ID_1524058659" MODIFIED="1557107901083" TEXT="inside mapcontroller">
<node CREATED="1557107902895" ID="ID_59211368" MODIFIED="1557107905551" TEXT="onSurfaceChanged"/>
<node CREATED="1557107986194" ID="ID_1612249459" MODIFIED="1557107992130" TEXT="can&apos;t call native methods">
<node CREATED="1557107993474" ID="ID_618023000" MODIFIED="1557107996644" TEXT="this is the only way to call"/>
</node>
</node>
</node>
<node CREATED="1557108210848" ID="ID_405027497" MODIFIED="1557108215445" TEXT="alter displaymetrics?">
<node CREATED="1557108217559" ID="ID_103749665" MODIFIED="1557108222451" TEXT="this is a private field in mapcontroller"/>
<node CREATED="1557108223231" ID="ID_1271344471" MODIFIED="1557108229191" TEXT="populated with">
<node CREATED="1557108245995" ID="ID_1586903230" MODIFIED="1557108247487" TEXT="        displayMetrics = context.getResources().getDisplayMetrics(); "/>
</node>
<node CREATED="1557108417023" ID="ID_284504717" MODIFIED="1557108423128" TEXT="we can modify this, but it&apos;s very hacky">
<node CREATED="1557108425949" ID="ID_1463488891" MODIFIED="1557108440254" TEXT="we&apos;d be updating for the entire app, not so nice"/>
</node>
</node>
<node CREATED="1557108790361" ID="ID_1005505005" MODIFIED="1557108802284" TEXT="create our own jni c class that mucks with the map">
<node CREATED="1557108805850" ID="ID_970933001" MODIFIED="1557108811220" TEXT="we need mapPointer"/>
</node>
</node>
<node CREATED="1557104905934" ID="ID_493419586" MODIFIED="1557104917946" TEXT="camera manipulations?"/>
<node CREATED="1557104923768" ID="ID_632812551" MODIFIED="1557104930792" TEXT="zoom level muckery?"/>
</node>
</node>
</node>
</map>