.class public final Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/manager/DownloadManagerImpl;->H0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 14

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->c0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "---------Download, Network onConnected"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->Z(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Lcom/transsnet/downloader/proxy/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/proxy/b;->d()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v7

    const-string v8, ",  cur status = "

    const-string v9, ",epse = "

    const/4 v10, 0x1

    if-eqz v7, :cond_0

    iget-object v11, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v11}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->c0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v2

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConnected, start DownloadingPlay, name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v11, v7, v10}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->t(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->W(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    if-eq v3, v5, :cond_2

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloading()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-static {v1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->c0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v7

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onConnected, caches, name = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v10}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloading()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setPreDownload(Z)V

    invoke-virtual {v2, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    :cond_3
    invoke-virtual {v1, v2, v10}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->t(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1$netConnected$3;

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    const/4 v2, 0x0

    invoke-direct {v4, v0, v2}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1$netConnected$3;-><init>(Lcom/transsnet/downloader/manager/DownloadManagerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a()V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a()V

    return-void
.end method

.method public onDisconnected()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-static {v1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->c0(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "---------Download, Network onDisconnected, cancel all request---------"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :try_start_0
    sget-object v0, Lcom/transsnet/downloader/core/b;->c:Lcom/transsnet/downloader/core/b$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/b$a;->a()Lcom/transsnet/downloader/core/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/b;->c()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->S(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->Y(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadManagerImpl$registerNetwork$1;->a:Lcom/transsnet/downloader/manager/DownloadManagerImpl;

    invoke-static {v0}, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->T(Lcom/transsnet/downloader/manager/DownloadManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method
