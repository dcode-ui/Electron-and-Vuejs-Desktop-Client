<template>
    <div>
        <div v-show="is_active">
            <slot></slot>
        </div>
    </div>
    
</template>

<script>
export default {
    props:{
        name:{required:true},
        current:{default:false}
    },
    data(){
        return{
            is_active:false
        }
    },
    mounted(){
        this.is_active = this.current
    }
    
}
</script>
<style scoped>
p
{
    color: wheat;
}
</style>