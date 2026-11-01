.class public final Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/offline/download/task/DownloadTask;->run(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "com/cloud/tmc/offline/download/task/DownloadTask$run$1",
        "Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;",
        "onDownloadProcess",
        "",
        "url",
        "",
        "size",
        "",
        "totalSize",
        "onError",
        "errCode",
        "",
        "errMsg",
        "onNoNeedDownload",
        "onUnZipDownloadFinish",
        "zipUnCompressPath",
        "zipFile",
        "Ljava/io/File;",
        "onZipDownloadCancel",
        "onZipDownloadFinish",
        "onZipDownloadStart",
        "onZipDownloaded",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $downloadFailed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $downloadSuccess:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/offline/download/task/DownloadTask;Ljava/util/concurrent/CountDownLatch;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/offline/download/task/DownloadTask;",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    iput-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadSuccess:Ljava/util/Set;

    iput-object p4, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadFailed:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProcess(Ljava/lang/String;JJ)V
    .locals 0

    const-string p2, "url"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-static {p2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-static {p2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-static {v2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v10, v0, v2

    sget-object v4, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v7, 0x0

    move-object v6, p1

    move-object v9, p3

    invoke-virtual/range {v4 .. v11}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackDownloadRecord(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;J)V

    sget-object p2, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    iget-object p3, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object p3

    new-instance v7, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, p3, v7}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadFailed:Ljava/util/Set;

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNoNeedDownload(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadSuccess:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onUnZipDownloadFinish(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 11

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipUnCompressPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "zipFile"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {p3, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->loadManifest(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadSuccess:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v2

    new-instance v3, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    const/4 v4, 0x4

    invoke-direct {v3, p1, p2, v4, v0}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;)V

    invoke-virtual {v1, v2, v3}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/utils/ext/StringExtKt;->orDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateVUrl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-static {p2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadFinishTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-nez p2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-static {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sub-long v9, p2, v0

    sget-object v3, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    iget-object p2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v4

    const/16 p2, 0xc8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "success"

    const/4 v6, 0x1

    move-object v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackDownloadRecord(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-class p1, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    iget-object p3, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getAppId()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_4

    :cond_3
    move-object p3, v2

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getAppInfo()Lcom/cloud/tmc/integration/model/AppInfoModel;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/AppInfoModel;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v0

    :cond_6
    :goto_1
    invoke-interface {p2, p3, v2}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;->downloadIcon(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/proxy/OfflineAppProxy;->scanForOfflineDownloadSuccess()V

    return-void

    :cond_7
    sget-object p3, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    new-instance v8, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p3, v0, v8}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const-string p1, "The"

    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " downloaded offline package is not legal! zipUnCompressPath: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TmcOfflineDownload: DownloadTask"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onZipDownloadCancel(Ljava/lang/String;)V
    .locals 12

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-static {v2}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v10, v0, v2

    sget-object v4, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;->getGroup()Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "cancel"

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v4 .. v11}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->trackDownloadRecord(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;J)V

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v1

    new-instance v9, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1, v9}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$downloadFailed:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onZipDownloadFinish(Ljava/lang/String;)V
    .locals 10

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v1

    new-instance v9, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1, v9}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    return-void
.end method

.method public onZipDownloadStart(Ljava/lang/String;)V
    .locals 10

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v1

    new-instance v9, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1, v9}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-static {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadStartTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onZipDownloaded(Ljava/lang/String;)V
    .locals 10

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;

    iget-object v1, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-virtual {v1}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->getOffPkgConfig()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-result-object v1

    new-instance v9, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1, v9}, Lcom/cloud/tmc/offline/download/utils/OfflineStoreCache;->setZipDownloadStatus(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;)V

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/DownloadTask$run$1;->this$0:Lcom/cloud/tmc/offline/download/task/DownloadTask;

    invoke-static {v0}, Lcom/cloud/tmc/offline/download/task/DownloadTask;->access$getDownloadFinishTime$p(Lcom/cloud/tmc/offline/download/task/DownloadTask;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
