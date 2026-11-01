.class public final Lcom/bykv/vk/openvk/preload/geckox/statistic/c;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/bykv/vk/openvk/preload/geckox/b;Lcom/bykv/vk/openvk/preload/geckox/buffer/a/a;)V
    .locals 7

    const-string v0, ""

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->q()Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v2, "geckosdk_query_pkgs"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "params_for_special"

    const-string v5, "gecko"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "device_id"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "os"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "app_version"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "api_version"

    const-string v5, "v3"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "aid"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->k()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "x_tt_logid"

    iget-object v4, p1, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/a;->e:Ljava/lang/String;

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "http_status"

    iget v4, p1, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/a;->g:I

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "err_msg"

    iget-object v4, p1, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/a;->d:Ljava/lang/String;

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p1, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/a;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "custom_info"

    const-string v5, "local_info"

    const-string v6, "deployments_info"

    if-eqz p0, :cond_0

    :try_start_1
    iget-object p0, p1, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p1, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p1, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string p0, "os_version"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_platform"

    const-string v0, "android"

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_model"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ac"

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/buffer/a/a;->f:Ljava/lang/String;

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v1, v2, v3}, Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;->upload(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :goto_1
    const-string p1, "gecko-debug-tag"

    const-string v0, "UploadStatistic.upload:"

    invoke-static {p1, v0, p0}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/bykv/vk/openvk/preload/geckox/b;Lcom/bykv/vk/openvk/preload/geckox/statistic/a;)V
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/geckox/statistic/a;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;

    iget-object v5, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->d:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-wide v5, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->f:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_1

    :cond_0
    iget-boolean v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->h:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->i:Z

    if-eqz v3, :cond_4

    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->n:Ljava/lang/String;

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->ac:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->p:Ljava/lang/Long;

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->o:Ljava/lang/Long;

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->d:Ljava/lang/String;

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    iget-wide v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->g:J

    iget-wide v6, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->f:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadDuration:Ljava/lang/Long;

    iget-boolean v2, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->j:Z

    if-nez v2, :cond_2

    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    const-string v3, "403"

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->r:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->n:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->ac:Ljava/lang/String;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->o:Ljava/lang/Long;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->p:Ljava/lang/Long;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    :cond_1
    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->a(Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_2
    iget-boolean v2, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->k:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->o:Ljava/lang/Long;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->p:Ljava/lang/Long;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    iget-wide v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->l:J

    iget-wide v5, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->g:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->activeCheckDuration:Ljava/lang/Long;

    iget-wide v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->m:J

    iget-wide v5, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->l:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->applyDuration:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_3
    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    const/16 v3, 0x67

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    const-string v3, "501"

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->o:Ljava/lang/Long;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->p:Ljava/lang/Long;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    iget-object v3, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->s:Ljava/lang/String;

    iput-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->a(Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    new-instance v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->n:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->ac:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->o:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->p:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    iget-boolean v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->h:Z

    if-nez v4, :cond_5

    const-string v4, "301"

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;

    iget-object v2, v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;->reason:Ljava/lang/String;

    iput-object v2, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-boolean v2, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->i:Z

    if-nez v2, :cond_6

    const-string v2, "402"

    iput-object v2, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->q:Ljava/lang/String;

    iput-object v2, v3, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    :cond_6
    :goto_1
    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->a(Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/a/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 p1, 0x0

    goto :goto_3

    :cond_8
    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    new-instance p1, Lcom/bykv/vk/openvk/preload/geckox/model/Common;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->k()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->r()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->l()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->m()Ljava/lang/String;

    move-result-object v13

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Lcom/bykv/vk/openvk/preload/geckox/model/Common;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel;-><init>()V

    iput-object p1, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel;->common:Lcom/bykv/vk/openvk/preload/geckox/model/Common;

    iput-object v0, v1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel;->packages:Ljava/util/List;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    iput-object p1, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->logId:Ljava/lang/String;

    goto :goto_2

    :cond_9
    move-object p1, v1

    :goto_3
    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel;->packages:Ljava/util/List;

    if-nez v0, :cond_a

    goto/16 :goto_b

    :cond_a
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->q()Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_0
    iget-object v1, p1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel;->packages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    const-string v6, "geckosdk_update_stats"

    iget-object v7, p1, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel;->common:Lcom/bykv/vk/openvk/preload/geckox/model/Common;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "params_for_special"

    const-string v10, "gecko"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "region"

    iget-object v10, v7, Lcom/bykv/vk/openvk/preload/geckox/model/Common;->region:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "err_code"

    iget-object v10, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "err_msg"

    iget-object v10, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "sdk_version"

    iget-object v10, v7, Lcom/bykv/vk/openvk/preload/geckox/model/Common;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "access_key"

    iget-object v10, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "stats_type"

    iget-object v10, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "device_id"

    iget-object v10, v7, Lcom/bykv/vk/openvk/preload/geckox/model/Common;->deviceId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "patch_id"

    iget-object v10, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->patchId:Ljava/lang/Long;

    if-nez v10, :cond_b

    move-wide v10, v3

    goto :goto_5

    :cond_b
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_5
    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "group_name"

    iget-object v10, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "os"

    iget v10, v7, Lcom/bykv/vk/openvk/preload/geckox/model/Common;->os:I

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "app_version"

    iget-object v10, v7, Lcom/bykv/vk/openvk/preload/geckox/model/Common;->appVersion:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "device_model"

    iget-object v10, v7, Lcom/bykv/vk/openvk/preload/geckox/model/Common;->deviceModel:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "channel"

    iget-object v10, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "id"

    iget-object v10, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    if-nez v10, :cond_c

    move-wide v10, v3

    goto :goto_6

    :cond_c
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_6
    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "ac"

    iget-object v7, v7, Lcom/bykv/vk/openvk/preload/geckox/model/Common;->ac:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "download_retry_times"

    iget-object v9, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    if-nez v9, :cond_d

    move v9, v2

    goto :goto_7

    :cond_d
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_7
    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "download_url"

    iget-object v9, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, ""

    if-nez v9, :cond_e

    move-object v9, v10

    :cond_e
    :try_start_1
    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "download_duration"

    iget-object v9, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadDuration:Ljava/lang/Long;

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "download_fail_records"

    iget-object v9, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    if-nez v9, :cond_f

    goto :goto_8

    :cond_f
    move-object v10, v9

    :goto_8
    invoke-virtual {v8, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "log_id"

    iget-object v9, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->logId:Ljava/lang/String;

    invoke-virtual {v8, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "active_check_duration"

    iget-object v9, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->activeCheckDuration:Ljava/lang/Long;

    if-nez v9, :cond_10

    move-wide v9, v3

    goto :goto_9

    :cond_10
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_9
    invoke-virtual {v8, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "apply_duration"

    iget-object v5, v5, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->applyDuration:Ljava/lang/Long;

    if-nez v5, :cond_11

    move-wide v9, v3

    goto :goto_a

    :cond_11
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    :goto_a
    invoke-virtual {v8, v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-interface {v0, v6, v8}, Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;->upload(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    const-string v1, "gecko-debug-tag"

    const-string v2, "UploadStatistic.upload:"

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/preload/geckox/logger/GeckoLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_2
    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c/b;->a()Lcom/bykv/vk/openvk/preload/geckox/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/c/b;->b()Lcom/bykv/vk/openvk/preload/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gecko/server/packages/stats"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/b;->g()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/statistic/c$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c$1;-><init>(Lcom/bykv/vk/openvk/preload/geckox/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_14
    :goto_b
    return-void
.end method

.method private static a(Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->A:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->ac:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->p:Ljava/lang/Long;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->u:Ljava/util/List;

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->u:Ljava/util/List;

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    iget-wide v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->w:J

    iget-wide v3, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->v:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadDuration:Ljava/lang/Long;

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->B:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->p:Ljava/lang/Long;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    iget-wide v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->x:J

    iget-wide v3, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->w:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->activeCheckDuration:Ljava/lang/Long;

    iget-wide v1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->y:J

    iget-wide p0, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->x:J

    sub-long/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->applyDuration:Ljava/lang/Long;

    return-void

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    const-string p1, "500"

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->p:Ljava/lang/Long;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->D:Ljava/lang/String;

    iput-object p0, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->statsType:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->accessKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->groupName:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->c:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->channel:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->n:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->ac:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->p:Ljava/lang/Long;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->id:Ljava/lang/Long;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->u:Ljava/util/List;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->a(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadRetryTimes:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->t:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->u:Ljava/util/List;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/statistic/c;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->downloadFailRecords:Ljava/util/List;

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->z:Z

    if-nez p1, :cond_2

    const-string p1, "300"

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->u:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->u:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;->reason:Ljava/lang/String;

    iput-object p0, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->A:Z

    if-nez p1, :cond_3

    const-string p1, "450"

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errCode:Ljava/lang/String;

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/a;->C:Ljava/lang/String;

    iput-object p0, v0, Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel;->errMsg:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/statistic/model/StatisticModel$PackageStatisticModel$DownloadFailRecords;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
