<view class="lifeQuality data-v-6a4fdd5a"><top-two-icons vue-id="3aed7f18-1" leftImageUrl="{{leftImageUrl}}" isShow="{{isShow}}" data-event-opts="{{[['^goback',[['goback']]]]}}" bind:goback="__e" class="data-v-6a4fdd5a" bind:__l="__l"></top-two-icons><view class="searchBox data-v-6a4fdd5a"><input type="text" placeholder="搜索关注的生活指数" data-event-opts="{{[['input',[['__set_model',['','inputText','$event',[]]]]]]}}" value="{{inputText}}" bindinput="__e" class="data-v-6a4fdd5a"/><view class="button data-v-6a4fdd5a">搜索</view></view><view class="service data-v-6a4fdd5a"><block qq:for="{{$root.l0}}" qq:for-item="item" qq:for-index="__i0__" qq:key="name"><block qq:if="{{item.g0!==-1}}"><view class="serviceItem data-v-6a4fdd5a"><view class="serviceItemTop data-v-6a4fdd5a"><view class="_h6 data-v-6a4fdd5a">{{item.$orig.name}}</view></view><view class="serviceItemButton data-v-6a4fdd5a"><view class="_h6 data-v-6a4fdd5a">{{item.$orig.type}}</view></view><view class="serviceItemButton data-v-6a4fdd5a"><view class="_h6 data-v-6a4fdd5a">{{item.$orig.info}}</view></view></view></block></block></view></view>