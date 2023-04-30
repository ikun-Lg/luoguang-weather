<template>
	<view>
		<topTwoIcons :leftImageUrl="leftImageUrl" @goback="goback" />
		<nextWeek :weekWeather="weekWeather" />
		<potentialWeather :weekWeather="weekWeather" />
	</view>
</template>

<script>
	export default {
		data() {
			return {
				leftImageUrl: "../../static/icon_back_white1.png",
				weekWeather: {},
				cityID: "101260101"
			};
		},
		onLoad() {
			this.getWeekWea()
		},
		methods: {
			getWeekWea() {
				this.cityID = uni.getStorageSync('city_key');
				uni.request({
					url: `https://www.yiketianqi.com/free/week?appid=73917275&appsecret=jlb7Ihso&unescape=1&cityid=${this.cityID}&vue=1`,
					success: (res) => {
						this.weekWeather = res.data.data
					}
				})
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

<style lang="scss">

</style>