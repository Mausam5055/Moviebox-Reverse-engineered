.class public final Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;
.super Ljava/lang/Object;


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 13

    const-string v0, "Prefetch:ShellH5Task"

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request start appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/cloud/tmc/miniapp/ByteAppManager;->INSTANCE:Lcom/cloud/tmc/miniapp/ByteAppManager;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/ByteAppManager;->getApplication$com_cloud_tmc_miniapp_sdk()Landroid/app/Application;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getAppId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    const-class v5, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    invoke-static {v5}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;

    sget-object v6, Lcom/cloud/tmc/integration/model/AppInfoQuery;->Companion:Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;

    invoke-virtual {v6, v4}, Lcom/cloud/tmc/integration/model/AppInfoQuery$Companion;->make(Ljava/lang/String;)Lcom/cloud/tmc/integration/model/AppInfoQuery;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lcom/cloud/tmc/miniapp/prepare/manager/TmcAppInfoManager;->getAppModel(Landroid/content/Context;Lcom/cloud/tmc/integration/model/AppInfoQuery;)Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/AppModel;->getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/model/ExtendModel;->getH5Url()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_1

    :cond_3
    :goto_0
    const-string v5, ""

    :cond_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ->h5Url is empty ,return!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v6}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/cloud/tmc/kernel/utils/KUrlUtils;->generateShellUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v3, v4, v8}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_6

    iget-object v11, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v11}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getExecuteTime()J

    move-result-wide v11

    cmp-long v9, v11, v9

    if-eqz v9, :cond_7

    :cond_6
    sub-long/2addr v1, v7

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-virtual {v7}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getExecuteTime()J

    move-result-wide v7

    const/16 v9, 0x3e8

    int-to-long v9, v9

    mul-long/2addr v7, v9

    cmp-long v1, v1, v7

    if-gez v1, :cond_8

    :cond_7
    const-string v1, "Prefetch:H5Task"

    const-string v2, "No need to make repeated requests during the validity period"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const-class v2, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;

    new-instance v7, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;

    invoke-direct {v7, v1, v3, v4, v6}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o$OooO00o;-><init>(Ljava/util/concurrent/CountDownLatch;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v5, v7}, Lcom/cloud/tmc/integration/proxy/PreHtmStrategyProxy;->requestHtml(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
