<template>
    <div id="main_dash">
        <div id="left_con">
            <Navbar></Navbar>
        </div>
        <div id="middle_con">
            <p>{{say}}</p>

        </div>
        <div id="right_con">
            <Qpanel></Qpanel>

        </div>
    </div>
</template>

<script>
import Navbar from './Navbar'
import Qpanel from './Qpanel'
export default {
    name:"Dasboard",
    components:{Navbar,Qpanel},
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