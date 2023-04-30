<template>
	<view>
		<topTwoIcons :leftImageUrl="leftImageUrl" @gotoSetAddress="gotoSetAddress" />
		<mainCard :weather="weather" />
		<tody :weather="weather" />
		<temperature :weather="weather" />
	</view>
</template>

<script>
	export default {
		data() {
			return {
				cityID: '101260101',
				weather: {},
				leftImageUrl: "../../static/icon_back_white.png"
			}
		},
		onPullDownRefresh() {
			this.getWea()
			uni.showToast({
				icon: "loading",
				title: "正在更新...",
				success: () => {
					uni.stopPullDownRefresh();
					if (Object.keys(this.weather) !== 0) {
						uni.showToast({
							icon: 'success',
							title: "更新完毕！"
						})
					} else if (Object.keys(this.weather) == 0) {
						uni.showToast({
							icon: 'error',
							title: "更新失败！"
						})
					}
				}
			})
		},
		onLoad() {
			this.getWea()
		},
		activated() {
			this.getWea()
		},
		methods: {
			gotoSetAddress() {
				uni.navigateTo({
					url: "/pages/setAddress/setAddress",
					animationType: 'pop-in',
					animationDuration: 200
				})
			},
			getWea() {
				this.cityID = uni.getStorageSync('city_key');
				uni.request({
					url: `https://www.yiketianqi.com/free/day?appid=73917275&appsecret=jlb7Ihso&unescape=1&cityid=${this.cityID}&vue=1`,
					success: (res) => {
						this.weather = res.data
						uni.stopPullDownRefresh();
					}
				})
			}
		},
	}
</script>

<style lang="scss" scoped>

</style>