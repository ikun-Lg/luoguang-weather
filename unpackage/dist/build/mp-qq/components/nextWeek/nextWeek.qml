<view><view class="temperature"><view class="title"><text class="leftItem">Next Week</text></view><view class="other"><view class="blur"></view><block qq:for="{{$root.l0}}" qq:for-item="item" qq:for-index="index"><block qq:if="{{index>2}}"><view class="otherItem"><block qq:if="{{item.$orig.wea_img=='yin'}}"><image class="icon" src="../../static/weatherImages/yin.png"></image></block><block qq:if="{{item.$orig.wea_img=='lei'}}"><image class="icon" src="../../static/weatherImages/lei.png"></image></block><block qq:if="{{item.$orig.wea_img=='yu'}}"><image class="icon" src="../../static/weatherImages/yu.png"></image></block><block qq:if="{{item.$orig.wea_img=='qing'}}"><image class="icon" src="../../static/weatherImages/qing.png"></image></block><block qq:if="{{item.$orig.wea_img=='wu'}}"><image class="icon" src="../../static/weatherImages/wu.png"></image></block><block qq:if="{{item.$orig.wea_img=='shachen'}}"><image class="icon" src="../../static/weatherImages/shachen.png"></image></block><block qq:if="{{item.$orig.wea_img=='bingbao'}}"><image class="icon" src="../../static/weatherImages/bingbao.png"></image></block><block qq:if="{{item.$orig.wea_img=='yun'}}"><image class="icon" src="../../static/weatherImages/yun.png"></image></block><block qq:if="{{item.$orig.wea_img=='xue'}}"><image class="icon" src="../../static/weatherImages/xue.png"></image></block><text class="num">{{(item.m0+item.m1)/2+"℃"}}</text><text class="iconText">{{item.g0}}</text></view></block></block></view></view></view>