<template>
    <div id="main_content_con">
        <div id="flow_con">
            <div id="content_head">
                <slot name="heading"></slot>
            </div>
            <div id="metrics">
                <slot name="metrics_cards"></slot>
            </div>
            <div id="table_slot">
                <slot name="table"></slot>
            </div>
        </div>
    </div>
</template>
<script>
const r = require('@/assets/Icons/crops.svg')
export default {
    name:'MainContent',
    data(){
        return{
            n:r
        }
    }
    
}
</script>
<style scoped>

</style>