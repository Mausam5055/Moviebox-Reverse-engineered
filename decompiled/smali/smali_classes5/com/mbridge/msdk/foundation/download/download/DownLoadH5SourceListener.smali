.class public Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IOnDownLoadH5Source;


# static fields
.field private static TAG:Ljava/lang/String; = "DownLoadH5SourceListener"


# instance fields
.field private listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResDownloadingMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private resourceManager:Lcom/mbridge/msdk/foundation/download/download/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;Lcom/mbridge/msdk/foundation/download/download/ResourceManager;Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;",
            ">;",
            "Lcom/mbridge/msdk/foundation/download/download/ResourceManager;",
            "Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->mResDownloadingMap:Ljava/util/concurrent/ConcurrentMap;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->resourceManager:Lcom/mbridge/msdk/foundation/download/download/ResourceManager;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->mResDownloadingMap:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->mUrl:Ljava/lang/String;

    const-string v3, "mResDownloadingMap  is null"

    invoke-interface {v1, v2, v3}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->mResDownloadingMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->mUrl:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 2

    const-string p1, ""

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->mResDownloadingMap:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_2

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;

    if-eqz v0, :cond_0

    const-string v1, "mResDownloadingMap  is null"

    invoke-interface {v0, p3, v1}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->mResDownloadingMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_7

    array-length v0, p2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->resourceManager:Lcom/mbridge/msdk/foundation/download/download/ResourceManager;

    invoke-virtual {v0, p3, p2}, Lcom/mbridge/msdk/foundation/download/download/ResourceManager;->saveResFile(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-interface {v0, p3, p1, v1}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;->onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data save failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    const-string p1, "response data is error"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    sget-object v0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-object p2, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;

    if-eqz v0, :cond_9

    invoke-interface {v0, p3, p1}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$H5ResDownloadListerInter;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    return-void
.end method

.method public setZipDownloadListener(Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/download/DownLoadH5SourceListener;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
