<template>
    <div id="main_dash">
        <div id="left_con">
            <Navbar></Navbar>
        </div>
        <div id="middle_con">
           <MainContent>
               <div slot="heading">
                   <p id="head_title">Overview</p>
                   <p id="head_descript">Harpa system overview</p>
               </div>
               <div slot="metrics_cards" id="metrics">
                   <InfoCard :imagesrc="farmerIcon" :cardcount="5.0" description="Registered Farmers"></InfoCard>
                   <InfoCard :imagesrc="farmIcon" :cardcount="9" description="Registered Farms"></InfoCard>
                   <InfoCard :imagesrc="cropIcon" :cardcount="2" description="Crop Types"></InfoCard>
               </div>
               <div id="table" slot="table">
                   <DashTable :title="table_one.title" :headers="table_one.headers" :route_to="table_one.route_to" :tdata="table_one.data"></DashTable>
               </div>
           </MainContent>

        </div>
        <div id="right_con">
            <Qpanel></Qpanel>

        </div>
    </div>
</template>

<script>
import Navbar from './Navbar'
import MainContent from './MainContent'
import Qpanel from './Qpanel'
import InfoCard from './InfoCard'
import DashTable from './DashTable'

//Icons
const farmer_icon = require('@/assets/Icons/dashboard/farmer.svg')
const farm_icon = require('@/assets/Icons/dashboard/farm.svg')
const crop_icon = require('@/assets/Icons/dashboard/crops.svg')

export default {
    name:"Dasboard",
    components:{
        Navbar,
        MainContent,
        Qpanel,
        InfoCard,
        DashTable
        },
    data(){
        return {
            farmerIcon:farmer_icon,
            farmIcon:farm_icon,
            cropIcon:crop_icon,
            table_one:{
                title:'Farmers',
                headers:['Name','Farm','Contact','Parish','District'],
                route_to:'/farmers',
                data:[
                    {
                        name:'Ruppert Baxton', 
                        farm:'Rupps Hens',
                        contact:'8763948587',
                        parish:'St.James',
                        district:'Gordon Village'
                    },
                    {
                        name:'Ruppert Baxton', 
                        farm:'Rupps Hens',
                        contact:'8763948587',
                        parish:'St.James',
                        district:'Gordon Village'
                    },
                    {
                        name:'Ruppert Baxton', 
                        farm:'Rupps Hens',
                        contact:'8763948587',
                        parish:'St.James',
                        district:'Gordon Village'
                    },
                    {
                        name:'Ruppert Baxton', 
                        farm:'Rupps Hens',
                        contact:'8763948587',
                        parish:'St.James',
                        district:'Gordon Village'
                    },
                    {
                        name:'Ruppert Baxton', 
                        farm:'Rupps Hens',
                        contact:'8763948587',
                        parish:'St.James',
                        district:'Gordon Village'
                    },
                    {
                        name:'Ruppert Baxton', 
                        farm:'Rupps Hens',
                        contact:'8763948587',
                        parish:'St.James',
                        district:'Gordon Village'
                    },
                    {
                        name:'Ruppert Baxton', 
                        farm:'Rupps Hens',
                        contact:'8763948587',
                        parish:'St.James',
                        district:'Gordon Village'
                    }
                ]
            }
        }
    }

}
</script>
<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap');

#main_dash
{
    position: absolute;
    display: grid;
    grid-template-columns: 250px auto 30%;
    width: 100vw;
    height: 100vh;
    top: 0px;
    left: 0px;
}

#left_con
{
    background-color: blue;
}
#middle_con
{
    display:flex;
    flex-direction: column;
    align-items: center;
}

#main_content_con
{
    position: relative;
    width: 90%;
    top:80px;
}
#metrics
{
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    margin-top: 20px;
}

#head_title
{
    font-family: 'Lato', sans-serif;
    font-weight: bolder;
    font-size:40px;
    margin: 0px;
}
#head_descript
{
    margin: 0px;
    font-family: 'Lato', sans-serif;
    font-size: 25px;
    color: rgb(212, 212, 212);
    
}
#table
{
    position: relative;
    margin-top: 15px;
}
</style>