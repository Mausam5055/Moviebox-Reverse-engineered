.class public Lcom/cloud/tmc/integration/permission/AppPermissionUtils;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Tmcintegration:AppPermissionUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert2ApiPermissionInfo(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;
    .locals 14

    const-string v0, "Tmcintegration:AppPermissionUtils"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert2ApiPermissionInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_c

    new-instance v2, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;

    invoke-direct {v2}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;-><init>()V

    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getJsapiList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_0

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    const-string v3, "JSAPI_List"

    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getValidDomains()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v3, "validDomain"

    invoke-virtual {v2, v3, v4}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->getSpecialConfigs()Lcom/google/gson/JsonObject;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->size()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p0, v4, v1}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getJsonObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v5

    if-eqz v5, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "JSAPI_SP_Config_"

    if-eqz v8, :cond_a

    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v8, v1}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getJsonArray(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    instance-of v13, v12, Ljava/lang/String;

    if-eqz v13, :cond_8

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v11}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->setApiLevelList(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_2

    :cond_b
    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lcom/cloud/tmc/integration/permission/model/ApiPermissionInfo;->setHasPermissionFile(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :goto_5
    invoke-static {v0, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    return-object v1
.end method

.method public static getAggregationMainAppId(Lcom/cloud/tmc/integration/model/AppModel;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtendInfos()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getExtendInfos()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string v1, "launchParams"

    invoke-static {p0, v1, v0}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getJsonObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "aggregationMainAppId"

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/utils/JSONUtils;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getApp(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/integration/structure/App;
    .locals 3

    instance-of v0, p0, Lcom/cloud/tmc/kernel/node/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Lcom/cloud/tmc/kernel/node/Node;

    const/4 v0, 0x5

    :goto_0
    if-eqz p0, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    instance-of v0, p0, Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/cloud/tmc/integration/structure/App;

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p0

    move v0, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static getPermissionAppId(Lcom/cloud/tmc/kernel/security/Accessor;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->getApp(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPermissionModel(Lcom/cloud/tmc/integration/structure/App;)Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
    .locals 1

    invoke-interface {p0}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "appInfo"

    invoke-static {p0, v0}, Lcom/cloud/tmc/kernel/utils/BundleUtils;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/model/AppModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/integration/model/AppModel;->getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPermissionModel(Lcom/cloud/tmc/kernel/security/Accessor;)Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
    .locals 3

    instance-of v0, p0, Lcom/cloud/tmc/kernel/node/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Lcom/cloud/tmc/kernel/node/Node;

    const/4 v0, 0x5

    :goto_0
    if-eqz p0, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    instance-of v0, p0, Lcom/cloud/tmc/integration/structure/App;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/cloud/tmc/integration/structure/App;

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p0

    move v0, v2

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_3

    return-object v1

    :cond_3
    invoke-static {p0}, Lcom/cloud/tmc/integration/permission/AppPermissionUtils;->getPermissionModel(Lcom/cloud/tmc/integration/structure/App;)Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    move-result-object p0

    return-object p0
.end method
