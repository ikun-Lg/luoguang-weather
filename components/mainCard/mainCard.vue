<template>
	<view>
		<view class="mainCard">
			<view class="mainCardTop">
				<view class="leftItem">
					<text class="date">{{weather.week}} {{weather.date}}</text>
					<p></p>
					<text class="address">{{weather.city}}</text>
				</view>
				<view class="rightItem">
					<text class="tody">Today</text>
					<p></p>
					<text class="time">{{weather.update_time}}</text>
				</view>
			</view>
			<view class="mainCardBottom">
				<view class="leftItem">
					<view class="temperature">{{weather.tem}}
						<view class="deg">&#8451</view>
					</view>
					<view class="weather">{{weather.wea}}</view>
				</view>
				<view class="rightItem" v-if="weather.wea_img == 'yun'"
					:style="{background: 'url(../../static/weatherImages/yun.png)',backgroundSize:'contain'}">
				</view>
				<view class="rightItem" v-if="weather.wea_img == 'xue'"
					:style="{background: 'url(../../static/weatherImages/xue.png)',backgroundSize:'contain'}">
				</view>
				<view class="rightItem" v-if="weather.wea_img == 'lei'"
					:style="{background: 'url(../../static/weatherImages/lei.png)',backgroundSize:'contain'}">
				</view>
				<view class="rightItem" v-if="weather.wea_img == 'shachen'"
					:style="{background: 'url(../../static/weatherImages/shachen.png)',backgroundSize:'contain'}">
				</view>
				<view class="rightItem" v-if="weather.wea_img == 'wu'"
					:style="{background: 'url(../../static/weatherImages/wu.png)',backgroundSize:'contain'}">
				</view>
				<view class="rightItem" v-if="weather.wea_img == 'qing'"
					:style="{background: 'url(../../static/weatherImages/qing.png)',backgroundSize:'contain'}">
				</view>
				<view class="rightItem" v-if="weather.wea_img == 'bingbao'"
					:style="{background: 'url(../../static/weatherImages/bingbao.png)',backgroundSize:'contain'}">
				</view>
				<view class="rightItem" v-if="weather.wea_img == 'yu'"
					:style="{background: 'url(../../static/weatherImages/yu.png)',backgroundSize:'contain'}">
				</view>
				<view class="rightItem" v-if="weather.wea_img == 'yin'"
					:style="{background: 'url(../../static/weatherImages/yin.png)',backgroundSize:'contain'}">
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		name: "mainCard",
		data() {
			return {

			};
		},
		props: {
			weather: {
				type: Object,
			}
		},
		onload() {

		},
		methods: {

		}
	}
</script>

<style lang="scss" scoped>
	.mainCard {
		margin: 0 auto;
		margin-bottom: 70rpx;
		width: 650rpx;
		height: 356rpx;
		border-radius: 60rpx;
		background: linear-gradient(208.92deg, rgba(102, 82, 241, 0.53) 0%, rgba(102, 82, 241, 1) 100%);
		box-shadow: 8rpx 16rpx 70rpx 0px rgba(102, 82, 241, 0.6);
		position: relative;

		.mainCardTop {
			position: absolute;
			display: flex;
			justify-content: space-between;
			align-items: center;
			width: 572rpx;
			height: 66rpx;
			top: 50rpx;
			left: 35rpx;

			.leftItem {
				.date {
					font-size: 30rpx;
					font-weight: 600;
					color: rgba(255, 255, 255, 1);
					text-align: left;
					vertical-align: middle;
				}

				.address {
					font-size: 20rpx;
					font-weight: 500;
					color: rgba(255, 255, 255, 1);
					text-align: left;
					vertical-align: middle;
				}
			}

			.rightItem {
				.tody {
					font-size: 30rpx;
					font-weight: 600;
					color: rgba(255, 255, 255, 1);
					text-align: center;
					vertical-align: middle;
				}

				.time {
					font-size: 20rpx;
					font-weight: 600;
					color: rgba(255, 255, 255, 1);
					text-align: center;
					vertical-align: middle;
				}
			}
		}

		.mainCardBottom {
			position: absolute;
			top: 134rpx;
			display: flex;
			justify-content: space-between;
			align-items: center;
			width: 572rpx;
			height: 186rpx;
			left: 35rpx;

			.leftItem {
				.temperature {
					font-size: 120rpx;
					font-weight: 600;
					color: transparent;
					background: linear-gradient(180deg, rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 0) 100%);
					-webkit-background-clip: text;
					text-align: left;
					vertical-align: middle;
					position: relative;

					.deg {
						position: absolute;
						top: 14rpx;
						left: 146rpx;
						font-size: 40rpx;
						font-weight: 600;
						color: transparent;
						background: linear-gradient(180deg, rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 0) 100%);
						-webkit-background-clip: text;
						text-align: left;
						vertical-align: middle;
					}
				}

				.weather {
					width: 172rpx;
					height: 36rpx;
					/** 文本1 */
					font-size: 24rpx;
					font-weight: 700;
					color: rgba(255, 255, 255, 1);
					text-align: left;
					vertical-align: middle;
				}
			}

			.rightItem {
				width: 288rpx;
				height: 286rpx;

				image {
					box-shadow: 10px 22px 30px 0px rgba(0, 0, 0, 0.25);
					width: 100%;
					height: 100%;
				}
			}
		}
	}
</style>