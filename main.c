#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cJSON.h"

void print_json(cJSON *root) {
    //以递归的方式打印json的最内层键值对
    //Recursively print the innermost key-value pair of json
    printf("\n");

    for (int i = 0; i < cJSON_GetArraySize(root); i++) {
        //遍历最外层json键值对
        cJSON *item = cJSON_GetArrayItem(root, i);
        if (cJSON_Object == item->type) {
            //如果对应键的值仍为cJSON_Object就递归调用printJson
            print_json(item);
        } else {
            //值不为json对象就直接打印出键和值
            printf("%s->%s\n", item->string, item->valuestring);
        }
    }
}

char *json_load(char *filepath) {
    FILE *fp;
    long len;
    char *content;

    fp = fopen(filepath, "rb");
    fseek(fp, 0, SEEK_END);
    len = ftell(fp);
    fseek(fp, 0, SEEK_SET);
    content = (char *) malloc(len + 1);
    fread(content, 1, len, fp);

    fclose(fp);

    return content;
}

void print_json_file(char *filepath) {
    //从文件中读取内容到缓冲区
    char *json_str = json_load(filepath);
    //printf("%s\n", json_str);

    //从缓冲区中解析出JSON结构
    cJSON *json = cJSON_Parse(json_str);

    print_json(json);

    //delete cjson
    cJSON_Delete(json);
}

void create_demo_json_file(char *filepath) {
    char *raw = "{\"RW\":\"2021年度下水道定期检修\",\"FX\":\"南北方向\",\"DD\":\"工业园区星湖街328号\",\"RQ\":\""
                "2021年08月10号\",\"QS\":\"#WS504\",\"ZZ\":\"#WS506\",\"GJ\":\"300mm\",\"GC\":\"波纹管\",\"LX\":\""
                "污水管道\",\"DW\":\"苏州xx管道检测技术有限公司\",\"YU\":\"Alex\"}";

    //从json字串中解析出JSON结构
    cJSON *json = cJSON_Parse(raw);

    //将传入的JSON结构转化为字符串 并打印
    char *buf = cJSON_Print(json);
    printf("raw json:\n%s\n", buf);

    //修改某项的节点值
    cJSON_ReplaceItemInObject(json, "YU", cJSON_CreateString("Blex"));
    buf = cJSON_Print(json);
    printf("modified json:\n%s\n", buf);

    //打开一个文件，并写入json内容
    FILE *fp = fopen(filepath, "w");
    fwrite(buf, strlen(buf), 1, fp);

    fclose(fp);
    free(buf);
    cJSON_Delete(json);
}

void create_demo2_json_file(char *filepath) {
    //创建一个空的文档（对象）
    cJSON *json = cJSON_CreateObject();

    //向文档中增加一个键值对{"name":"王大锤"}
    cJSON_AddItemToObject(json, "name", cJSON_CreateString("王大锤"));
    //向文档中添加一个键值对，类型为数字
    cJSON_AddNumberToObject(json, "age", 29);
    //向文档中添加一个键值对，类型为数组
    cJSON *array = NULL;
    cJSON_AddItemToObject(json, "love", array = cJSON_CreateArray());
    cJSON_AddItemToArray(array, cJSON_CreateString("LOL"));
    cJSON_AddItemToArray(array, cJSON_CreateString("NBA"));
    cJSON_AddItemToArray(array, cJSON_CreateString("Go shopping"));
    //向文档中添加一个键值对，类型为数字
    cJSON_AddNumberToObject(json, "score", 59);
    //向文档中添加一个键值对，类型为字串
    cJSON_AddStringToObject(json, "address", "beijing");

    //将json结构格式化到缓冲区
    char *buf = cJSON_Print(json);
    printf("new data:\n%s\n", buf);

    //打开文件写入json内容
    FILE *fp = fopen(filepath, "w");
    fwrite(buf, strlen(buf), 1, fp);
    free(buf);
    fclose(fp);

    //释放json结构所占用的内存
    cJSON_Delete(json);
}

int main() {
    printf("Hello, World!\n");

    //创建一个包含json数据的文件
    create_demo_json_file("jiance.json");
    //读取这个文件，并打印
    print_json_file("jiance.json");

    return 0;
}


