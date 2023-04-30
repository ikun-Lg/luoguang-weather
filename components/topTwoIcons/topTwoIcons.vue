<template>
	<view>
		<view class="topTwoIcons">
			<view class="iconItem" @click="goback();gotoSetAddress()">
				<image :src=" leftImageUrl" mode="" class="iconItemLeft">
				</image>
			</view>
			<view class="iconItem" v-if="!isShow" @click="gotoLifeQuality()">
				<image src="../../static/icon_notifications_outline.png" mode="" class="iconItemLeft"></image>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: "topTwoIcons",
		props: ["leftImageUrl", "isShow"],
		data() {
			return {};
		},
		methods: {
			goback() {
				this.$emit('goback')
			},
			gotoSetAddress() {
				this.$emit('gotoSetAddress')
			},
			gotoLifeQuality() {
				uni.navigateTo({
					url: "/pages/lifeQuality/lifeQuality"
				})
			}
		},
	}
</script>

<style lang="scss" scoped>
	.topTwoIcons {
		margin: 80rpx auto 90rpx auto;
		height: 100rpx;
		width: 650rpx;

		display: flex;
		justify-content: space-between;

		.iconItem {
			height: 100rpx;
			width: 100rpx;
			border-radius: 30rpx;
			border: 2rpx solid rgba(0, 0, 0, 0.25);
			display: flex;
			justify-content: center;
			align-items: center;

			image {
				width: 48rpx;
				height: 48rpx;
			}

			image:nth-child(1) {
				width: 48rpx;
				height: 48rpx;
			}
		}

		.iconItem:active {
			border: 2rpx solid rgb(124, 107, 243);
		}


	}
</style>