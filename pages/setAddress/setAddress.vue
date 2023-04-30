<template>
	<view>
		<topTwoIcons :leftImageUrl="leftImageUrl" @goback="goback" />
		<view class="searcher">
			<input type="text" class="input" v-model="inputText" placeholder="在此输入城市(不要带市和区)"
				placeholder-class="inputText" @input="search()">
		</view>
		<view class="addresses">
			<view class="addressItem" v-for="(item,index) in cityData" @click="setCity(item)" :key="item.id"
				v-if="index<100">
				{{item.cityZh}}
			</view>
		</view>
	</view>
</template>

<script>
	import Data from "../../static/json/city.json"
	export default {
		data() {
			return {
				leftImageUrl: "../../static/icon_back_white1.png",
				cityData: Data,
				inputText: ''
			};
		},
		onLoad() {

		},
		methods: {
			goback() {
				uni.navigateBack({
					delta: 1,
					animationType: 'pop-out',
					animationDuration: 200
				})
			},
			search() {
				if (this.inputText == "") {
					this.cityData = Data
				}
				this.cityData = Data.filter(item =>
					item.cityZh.indexOf(this.inputText) !== -1
				)
			},
			setCity(city) {
				uni.setStorageSync('city_key', city.id);
				uni.navigateTo({
					url: "/pages/index/index",
					animationType: 'pop-in',
					animationDuration: 200
				})
			}
		},

	}
</script>

<style lang="scss" scoped>
	.inputText {
		text-align: center;

	}

	.searcher {
		margin: 0 auto;
		width: 650rpx;
		height: 80rpx;
		display: flex;
		justify-content: center;
		align-items: center;
		margin-bottom: 48rpx;

		.input {
			text-align: center;
			width: 618rpx;
			height: 106rpx;
			border-radius: 32rpx;
			background: rgba(245, 245, 245, 1);
			box-shadow: 0px 25px 40px 0px rgba(0, 0, 0, 0.03);
		}
	}

	.addresses {
		.addressItem {
			text-align: center;
			font-size: 36rpx;
			height: 60rpx;
			margin: 0 auto;
			width: 400rpx;
			line-height: 60rpx;
			border-bottom: 2rpx solid rgb(124, 107, 243);
		}

		.addressItem:active {
			background-color: rgba(172, 177, 198, 1);
		}
	}
</style>