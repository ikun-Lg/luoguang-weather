<template>
	<view class="lifeQuality">
		<topTwoIcons :leftImageUrl="leftImageUrl" @goback="goback" :isShow="isShow" />
		<view class="searchBox">
			<input type="text" placeholder="搜索关注的生活指数" v-model="inputText">
			<view class="button">搜索</view>
		</view>
		<view class="service">
			<view class="serviceItem" v-for="item in lifeQualityData" v-if="item.name.indexOf(inputText) !== -1"
				:key="item.name">
				<view class="serviceItemTop">
					<h6>{{item.name}}</h6>
				</view>
				<view class="serviceItemButton">
					<h6>{{item.type}}</h6>
				</view>
				<view class="serviceItemButton">
					<h6>{{item.info}}</h6>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				isShow: true,
				cityID: "",
				leftImageUrl: "../../static/icon_back_white1.png",
				lifeQualityData: {},
				inputText: ""
			};
		},
		onLoad() {
			this.getAddress()
			this.getLifeQualityData()
		},
		onPullDownRefresh() {
			this.getLifeQualityData()
			uni.showToast({
				icon: "loading",
				title: "正在更新...",
				success: () => {
					uni.stopPullDownRefresh();
					if (Object.keys(this.lifeQualityData) !== 0) {
						uni.showToast({
							icon: 'success',
							title: "更新完毕！"
						})
					} else if (Object.keys(this.lifeQualityData) == 0) {
						uni.showToast({
							icon: 'error',
							title: "更新失败！"
						})
					}
				}
			})
		},
		activated() {
			this.getLifeQualityData()
		},
		methods: {
			getLifeQualityData() {
				uni.request({
					url: `https://v.api.aa1.cn/api/tianqi-zs/index.php?id=${this.cityID}`,
					success: (res) => {
						this.lifeQualityData = res.data.data
					}
				})
			},
			getAddress() {
				this.cityID = uni.getStorageSync('city_key');
			},
			goback() {
				uni.navigateBack({
					delta: 1,
					animationType: 'pop-out',
					animationDuration: 200
				})
			}
		},
	}
</script>

<style lang="scss" scoped>
	* {
		padding: 0;
		margin: 0 auto;
		box-sizing: border-box
	}

	.lifeQuality {
		position: relative;
		width: 620rpx;
		margin: 0 auto;

		.searchBox {
			position: relative;

			input {
				position: absolute;
				width: 620rpx;
				height: 106rpx;
				border-radius: 32rpx;
				background: rgba(245, 245, 245, 1);
				box-shadow: 0px 50rpx 8r0px 0px rgba(0, 0, 0, 0.03);
				text-align: center;
			}

			.button {
				position: absolute;
				top: 10rpx;
				left: 568rpx;
				width: 84rpx;
				height: 84rpx;
				border-radius: 22rpx;
				background: linear-gradient(225deg, rgba(135, 67, 255, 1) 0%, rgba(65, 54, 241, 1) 100%);
				box-shadow: 0px 30rpx 60rpx 0px rgba(20, 102, 204, 0.16);
				color: white;
				text-align: center;
				line-height: 84rpx;
				font-size: 14rpx;
				font-weight: bold;
			}

			.button:active {
				color: rgba(135, 67, 255, 1);
			}

		}

		.service {
			position: absolute;
			top: 300rpx;
			width: 650rpx;

			.serviceItem {
				margin: 10rpx 0;
				width: 650rpx;
				height: 140rpx;
				border-radius: 70rpx;
				background: rgba(245, 245, 245, 1);
				display: flex;
				flex-direction: column;
				justify-content: space-around;
				align-items: center;

				.serviceItemTop {
					height: 36rpx;
				}

				.serviceItemTop h6 {
					font-size: 32rpx;
					font-weight: 700;
					line-height: 36rpx;
					color: rgba(4, 4, 21, 1);
					text-align: center;
				}

				.serviceItemButton {
					height: 34rpx;
					display: flex;
					justify-content: space-around;
					align-items: center;
				}

				.serviceItemButton h6 {
					font-size: 24rpx;
					font-weight: 500;
					letter-spacing: 0.4rpx;
					color: rgba(4, 4, 21, 1);
					text-align: center;
					opacity: 0.5;
				}
			}
		}
	}
</style>