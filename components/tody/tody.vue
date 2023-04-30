<template>
	<view>
		<view class="tody">
			<view class="title">
				<text class="leftItem">Today</text>
				<text class="rightItem" @click="gotoNextweek()">Next 7 Days ></text>
			</view>
			<view class="other">
				<view class="blur"></view>
				<view class="otherItem">
					<image src="../../static/weatherImages/rainfall.png" class="icon"></image>
					<text class="num">{{weather.humidity}}</text>
					<text class="iconText">湿度</text>
				</view>
				<view class="otherItem">
					<image src="../../static/weatherImages/air.png" class="icon"></image>
					<text class="num">{{weather.air}}</text>
					<text class="iconText">空气</text>
				</view>
				<view class="otherItem">
					<image src="../../static/weatherImages/win.png" class="icon"></image>
					<text class="num">{{weather.win_speed}}</text>
					<text class="iconText">风力</text>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: "tody",
		props: {
			weather: {
				type: Object,
			}
		},
		data() {
			return {

			};
		},
		methods: {
			gotoNextweek() {
				uni.navigateTo({
					url: "../../pages/nextWeek/nextWeek",
					animationType: 'pop-in',
					animationDuration: 200
				})
			}
		},
	}
</script>

<style lang="scss">
	.tody {
		position: relative;
		height: 318rpx;
		width: 650rpx;
		margin: 20rpx auto;

		.title {
			display: flex;
			justify-content: space-between;
			align-items: center;
			height: 44rpx;

			.leftItem {
				font-size: 40rpx;
				font-weight: 600;
				line-height: 44rpx;
				color: rgba(53, 53, 53, 1);
			}

			.rightItem {
				font-size: 24rpx;
				font-weight: 500;
				line-height: 44rpx;
				color: rgba(102, 82, 241, 1);
			}

			.rightItem:active {
				color: rgba(55, 55, 241, 1.0);
			}
		}

		.other {
			position: absolute;
			width: 650rpx;
			height: 244rpx;
			margin-top: 30rpx;
			border-radius: 40rpx;
			border: 2rpx solid white;
			background: rgba(255, 255, 255, 1);
			display: flex;
			justify-content: space-around;
			align-items: center;

			.otherItem {
				display: flex;
				flex-direction: column;
				justify-content: space-evenly;
				align-items: center;
				width: 148rpx;
				height: 204rpx;
				border-radius: 32rpx;
				background: linear-gradient(208.92deg, rgba(102, 82, 241, 0.53) 0%, rgba(102, 82, 241, 1) 100%);

				.icon {
					width: 148rpx;
					height: 106rpx;
				}

				.num {
					font-size: 26rpx;
					font-weight: 600;
					color: rgba(255, 255, 255, 1);
					text-align: center;
					vertical-align: middle;
				}

				.iconText {
					font-size: 14rpx;
					font-weight: 600;
					color: rgba(255, 255, 255, 0.62);
					text-align: center;
					vertical-align: middle;
				}
			}

			.blur {
				position: absolute;
				left: 34rpx;
				top: 80rpx;
				width: 580rpx;
				height: 226rpx;
				opacity: 1;
				border-radius: 40rpx;
				background: rgba(102, 82, 241, 0.3);
				filter: blur(120rpx);
			}
		}
	}
</style>