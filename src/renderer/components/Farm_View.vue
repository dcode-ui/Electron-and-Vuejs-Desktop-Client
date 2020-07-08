<template>
    <div id="main_dash">
        <div id="left_con">
            <Navbar></Navbar>
        </div>
        <div id="middle_con">
           <MainContent>
               <div slot="metrics_cards" id="metrics">
                   <InfoCard :imagesrc="farmIcon" :cardcount="5.0" description="Farm Name"></InfoCard>
                   <InfoCard :imagesrc="land" :cardcount="9" description="Farm Size"></InfoCard>
                   <InfoCard :imagesrc="farmerIcon" :cardcount="2" description="Farmer"></InfoCard>
               </div>
               <div id="table" slot="table">
                   <BigTable :headers="farm_table.headers" :tdata="farm_table.data" :addCrop="true" :searchB="false" ncheck="Farm_View"></BigTable>
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
import BigTable from './BigTable'

//Icons
const farmer_icon = require('@/assets/Icons/dashboard/farmer.svg')
const farm_icon = require('@/assets/Icons/dashboard/farm.svg')
const crop_icon = require('@/assets/Icons/dashboard/crops.svg')
const land = require('@/assets/Icons/land.svg');

export default {
    name:"Dasboard",
    components:{
        Navbar,
        MainContent,
        Qpanel,
        InfoCard,
        BigTable
        },
    data(){
        return {
            farmerIcon:farmer_icon,
            farmIcon:farm_icon,
            cropIcon:crop_icon,
            land:land,
            farm_table:{
                headers:['Crop','Crop Type','Cost(lbs)','YieldPMS','Revenue PMS','Created'],
                data:[
                    {
                        crop:'Sweet Pepper', 
                        crop_type:'Vegetable',
                        cost:'200.00',
                        yield_pms:'40',
                        revenue_pms:'8000',
                        created:'6-19-20'
                    },
                    {
                        crop:'Peas', 
                        crop_type:'Legumes',
                        cost:'120.00',
                        yield_pms:'20',
                        revenue_pms:'2000',
                        created:'6-19-20'
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
    overflow-y: scroll;
}
#middle_con::-webkit-scrollbar
{
    width: 5px;
    background-color: rgb(249,251,250);
    border-radius: 5px;

}

#middle_con::-webkit-scrollbar-thumb
{
    background-color: rgb(224,224,224);
    border-radius: 5px;
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