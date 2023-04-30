<template>
	<view>
		<view class="potentialWeather">
			<text class="topText">Potential Weather</text>
			<view class="threeItems">
				<view class="itemWeather" v-for="(item,index) in weekWeather" v-if="index<3" :key="item.id">
					<view class="temNum">{{(parseInt(item.tem_day)+parseInt(item.tem_night))/2}}&#8451</view>
					<view class="date">
						<text class="dateTop">{{days[index]}}</text>
						<text class="dateButtom">{{item.date.slice(5)}}</text>
					</view>
					<view class="weatherImage">
						<image v-if="item.wea_img == 'yin'" src="../../static/weatherImages/yin.png" class="icon">
						</image>
						<image v-if="item.wea_img == 'lei'" src="../../static/weatherImages/lei.png" class="icon">
						</image>
						<image v-if="item.wea_img == 'yu'" src="../../static/weatherImages/yu.png" class="icon"></image>
						<image v-if="item.wea_img == 'qing'" src="../../static/weatherImages/qing.png" class="icon">
						</image>
						<image v-if="item.wea_img == 'wu'" src="../../static/weatherImages/wu.png" class="icon"></image>
						<image v-if="item.wea_img == 'shachen'" src="../../static/weatherImages/shachen.png"
							class="icon">
						</image>
						<image v-if="item.wea_img == 'bingbao'" src="../../static/weatherImages/bingbao.png"
							class="icon">
						</image>
						<image v-if="item.wea_img == 'yun'" src="../../static/weatherImages/yun.png" class="icon">
						</image>
						<image v-if="item.wea_img == 'xue'" src="../../static/weatherImages/xue.png" class="icon">
						</image>
					</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: "potentialWeather",
		data() {
			return {
				days: ["今天", "明天", "后天"]
			};
		},
		props: {
			weekWeather: {

			}
		}
	}
</script>

<style lang="scss" scoped>
	.potentialWeather {
		position: relative;
		width: 650rpx;
		height: 660rpx;
		margin: 0 auto;
		margin-top: 56rpx;
		opacity: 1;
		border-radius: 50rpx;
		background: rgba(102, 82, 241, 1);

		.topText {
			position: absolute;
			top: 40rpx;
			left: 168rpx;
			font-size: 36rpx;
			font-weight: 600;
			color: rgba(255, 255, 255, 1);
			text-align: center;
			vertical-align: middle;
		}

		.threeItems {
			position: absolute;
			bottom: 30rpx;
			left: 70rpx;
			height: 486rpx;
			width: 510rpx;
			display: flex;
			flex-direction: column;
			justify-content: space-between;
			align-items: center;

			.itemWeather {
				height: 162rpx;
				width: 510rpx;
				margin: 0 auto;
				border-bottom: 2rpx solid rgba(224, 224, 224, 1);
				display: flex;
				justify-content: space-between;
				align-items: center;

				.temNum {
					font-size: 68rpx;
					font-weight: 600;
					color: rgba(255, 255, 255, 1);
				}

				.date {
					display: flex;
					flex-direction: column;
					justify-content: flex-start;
					align-items: flex-start;

					.dateTop {
						font-size: 26rpx;
						font-weight: 700;
						color: rgba(255, 255, 255, 1);
						text-align: left;
						vertical-align: middle;
					}

					.dateButtom {
						font-size: 26rpx;
						font-weight: 600;
						color: rgba(221, 219, 243, 1);
					}
				}

				.weatherImage {
					width: 234rpx;
					height: 234rpx;

					image {
						width: 100%;
						height: 100%;
					}
				}
			}
		}

	}
</style>