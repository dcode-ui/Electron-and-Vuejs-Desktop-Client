<template>
    <div id="qpanel">
        <Tabs>
            <Tab name="Add Farmer" current="true">
                <AddfarmerF></AddfarmerF>
            </Tab>
            <Tab name="Y-Calculator">
                <Ycalculator></Ycalculator>
            </Tab>
            <Tab name="Add Farm">
                <AddFarmF></AddFarmF>
            </Tab>
        </Tabs>
    </div>
</template>
<script>
import Tabs from './Tabs'
import Tab from './Tab'
import AddfarmerF from './AddfarmerF'
import Ycalculator from './Ycalculator'
import AddFarmF from './AddfarmF'


export default {
    name:'Qpanel',
    components:{
        Tabs,
        Tab,
        AddfarmerF,
        Ycalculator,
        AddFarmF},
    data(){
        return{

        }
    }
    
}
</script>

<style scoped>
#qpanel
{
    height: 100vh;
    background-color:rgb(34,34,34) ;
    
}

</style>