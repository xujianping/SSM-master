/**
 * Created by Xujp on 2018/1/15.
 */

//替换sex数据为文字
function genderSex(value, row, index) {
    if (value == null || value == undefined) {
        return "-";
    } else if (value == 1) {
        return "男";
    } else if (value == 0) {
        return "女";
    }
}

//替换delete数据为文字
function genderDel(value, row, index) {
    if (value == null || value == undefined) {
        return "-";
    } else if (value == 1) {
        return "已删除";
    } else if (value == 0) {
        return "正常";
    }
}
