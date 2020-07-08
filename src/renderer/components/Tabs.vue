<template>
    <div>
        <div id="main_tabcon">
            <div id="tabs">
                <a v-for="(tab,index) in tabs" :key="index" class="tab_control" :class="{'is_active':tab.is_active}" @click="current_Tab(tab)" :ref="tab.name">
                    <p>{{tab.name}}</p>
                </a>
            </div>
            <div class="tab_content">
                <slot></slot>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    name:'Tabs',
    data(){
        return{
            tabs:[]
            
        }
    },
    methods:{
        current_Tab(c_tab)
        {
            this.tabs.forEach(tab => {
                tab.is_active = tab.name === c_tab.name
            })
        }

    },
    created(){
        this.tabs = this.$children
    }
    
}
</script>
<style scoped>
@import url('https://fonts.googleapis.com/css2?family=Lato:wght@700&display=swap');
#tabs
{
    position: relative;
    width: 100%;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
}

#tabs > .tab_control
{
    position: relative;
    display: flex;
    justify-content: center;
    align-items: center;
    width: 33.3%;
    font-size: 20px;
    font-family: 'Lato', sans-serif;
    -webkit-font-smoothing: antialiased;
    color: #ffffff;

}
.is_active
{
    border-bottom: 5px solid rgb(255, 222, 58);
}
#tabs
{
    border-bottom: 2px solid rgb(54,54,54);
}
#main_tabcon
{
    position: relative;
    top: 60px;
}


</style>