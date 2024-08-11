const base = {
    get() {
        return {
            url : "http://localhost:8080/huanbaowangzhan/",
            name: "huanbaowangzhan",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/huanbaowangzhan/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "环保网站"
        } 
    }
}
export default base
