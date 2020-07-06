<template>
    <div id="main_dash">
        <div id="left_con">
            <Navbar></Navbar>
        </div>
        <div id="middle_con">
           <MainContent>
               <div slot="heading">
                   <p id="head_title">Farmers</p>
                   <p id="head_descript">Here is a list of the registered farmers across the island.</p>
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
export default {
    name:"Farmers",
    components:{
        Navbar,
        MainContent,
        Qpanel
        },
    data(){
        return {
            say:'hello'
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

#left_con
{
    background-color: blue;
}

#middle_con
{
}

#right_con
{
}


</style>