<template>
    <div id="main_dash">
        <div id="left_con">
            <Navbar></Navbar>
        </div>
        <div id="middle_con">
           <MainContent>
               <div slot="heading">
                   <p id="head_title">Farms</p>
                   <p id="head_descript">Here is a list of the registered farms across the island.</p>
               </div>
               <div id="table" slot="table">
                   <BigTable :headers="farm_table.headers" :tdata="farm_table.data" :addCrop="false" :searchB="true" ncheck="Farms"></BigTable>
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
import BigTable from './BigTable'

export default {
    name:"Farmers",
    components:{
        Navbar,
        MainContent,
        Qpanel,
        BigTable
        },
    data(){
        return {
            farm_table:{
                headers:['Farm','Farmer','Soil Type','Subdivision','Parish','District','Created'],
                data:[
                    {
                        farm:'Rupps Hens',
                        farmer:'Ruppert Bax',
                        soil:'Sandy Loam',
                        subdivision:'Pembrokehall',
                        parish:'St.James',
                        district:'Gordon Village',
                        created:'6-19-20'
                    },
                    {
                        farm:'Rupps Hens',
                        farmer:'Ruppert Bax',
                        soil:'Sandy Loam',
                        subdivision:'Pembrokehall',
                        parish:'St.James',
                        district:'Gordon Village',
                        created:'6-19-20'
                    }
                ]
            }
        }
    }

}
</script>
<style scoped>
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