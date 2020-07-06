<template>
    <div id="card">
        <div id="control">
            <div :class="{card_con_farm:light_yellow, card_con_farmer:light_green, card_con_crop:light_purple}">
            <img :src="imagesrc" alt="">
            </div>
            <div id="text">
            <p id="card_count">{{cardcount}}.0k</p>
            <p id="card_description">{{description}}</p>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name:'InfoCard',
    props:{
        imagesrc:{
            type:String,
            required:true
        },
        cardcount:{
            type:Number,
            required:true
        },
        description:{
            type:String,
            required:true
        },

    },
    data(){
        return{
            light_green:false,
            light_yellow:false,
            light_purple:false
        }
    },
    mounted()
    {
        this.description == 'Registered Farms' ? this.light_yellow = true :this.light_yellow = false
        this.description == 'Registered Farmers' ? this.light_green = true :this.light_green = false
        this.description == 'Crop Types' ? this.light_purple = true :this.light_purple = false
    }
}
</script>
<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@700;900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Lato&display=swap');

#card
{
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
    width: 32%;
    height: 250px;
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0px 10px 63px -25px rgba(212, 212, 212, 0.8);
}

#control
{
    position: relative;
    display: flex;
    align-items: center;
    flex-direction: column;
}
#card_con
{
    border-radius: 50px;
    width: 90px;
    height: 90px;
    background-color: rgb(247, 247, 247);
    display: flex;
    justify-content: center;
    align-items: center;

}
.card_con_farmer
{
    border-radius: 50px;
    width: 90px;
    height: 90px;
    background-color: rgb(236,255,216);
    display: flex;
    justify-content: center;
    align-items: center;

}
.card_con_farm
{
    border-radius: 50px;
    width: 90px;
    height: 90px;
    background-color: rgb(250,251,233);
    display: flex;
    justify-content: center;
    align-items: center;

}

.card_con_crop
{
    border-radius: 50px;
    width: 90px;
    height: 90px;
    background-color: rgb(232,231,250);
    display: flex;
    justify-content: center;
    align-items: center;

}
img{
    width: 70px;
    height: 70px;
    transform: scale(1);
    border-radius: 10px;
}

#text > #card_count
{
    text-align: center;
    font-size: 50px;
    font-stretch:ultra-expanded;
    font-weight: 900;
    margin: 0px;
    font-family: 'Roboto', sans-serif;
}

#text > #card_description
{
    position: relative;
    font-family: 'Lato', sans-serif;
    font-size: 20px;
    text-align: center;
    color: rgb(212, 212, 212);
    margin: 0px;
    top: -8px;
}
</style>