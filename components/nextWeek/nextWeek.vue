<template>
	<view>
		<view class="temperature">
			<view class="title">
				<text class="leftItem">Next Week</text>
			</view>
			<view class="other">
				<view class="blur"></view>
				<view class="otherItem" v-for="(item,index) in weekWeather" v-if="index>2">
					<image v-if="item.wea_img == 'yin'" src="../../static/weatherImages/yin.png" class="icon"></image>
					<image v-if="item.wea_img == 'lei'" src="../../static/weatherImages/lei.png" class="icon"></image>
					<image v-if="item.wea_img == 'yu'" src="../../static/weatherImages/yu.png" class="icon"></image>
					<image v-if="item.wea_img == 'qing'" src="../../static/weatherImages/qing.png" class="icon"></image>
					<image v-if="item.wea_img == 'wu'" src="../../static/weatherImages/wu.png" class="icon"></image>
					<image v-if="item.wea_img == 'shachen'" src="../../static/weatherImages/shachen.png" class="icon">
					</image>
					<image v-if="item.wea_img == 'bingbao'" src="../../static/weatherImages/bingbao.png" class="icon">
					</image>
					<image v-if="item.wea_img == 'yun'" src="../../static/weatherImages/yun.png" class="icon"></image>
					<image v-if="item.wea_img == 'xue'" src="../../static/weatherImages/xue.png" class="icon"></image>
					<text class="num">{{(parseInt(item.tem_day)+parseInt(item.tem_night))/2}}&#8451</text>
					<text class="iconText">{{item.date.slice(5)}}</text>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: "nextWeek",
		props: {
			weekWeather: {

			}
		},
		data() {
			return {

			};
		}
	}
</script>

<style lang="scss">
	.temperature {
		position: relative;
		height: 318rpx;
		width: 650rpx;
		margin: 0rpx auto;

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
			justify-content: space-between;
			align-items: center;


			.otherItem {
				display: flex;
				flex-direction: column;
				justify-content: space-between;
				align-items: center;
				width: 118rpx;
				height: 168rpx;
				border-radius: 32rpx;
				background: linear-gradient(208.92deg, rgba(102, 82, 241, 0.53) 0%, rgba(102, 82, 241, 1) 100%);

				.icon {
					width: 148rpx;
					height: 106rpx;
				}

				.num {
					font-size: 20rpx;
					font-weight: 700;
					color: rgba(245, 245, 245, 1);
					text-align: center;
					vertical-align: middle;
				}

				.iconText {
					font-size: 14rpx;
					font-weight: 600;
					color: rgba(245, 245, 245, 1);
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