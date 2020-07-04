<template>
    <div id="qpanel">
        <Tabs>
            <Tab name="Add Farmer" current="true">
                <AddfarmerF></AddfarmerF>
            </Tab>
            <Tab name="Y-Calculator">
                <p>Yield Calculator will be here</p>
            </Tab>
            <Tab name="Add Farm">
                <p>add farm form will be here</p>
            </Tab>
        </Tabs>
    </div>
</template>
<script>
import Tabs from './Tabs'
import Tab from './Tab'
import AddfarmerF from './AddfarmerF'


export default {
    name:'Qpanel',
    components:{Tabs,Tab,AddfarmerF},
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