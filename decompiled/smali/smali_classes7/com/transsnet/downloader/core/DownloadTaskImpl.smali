.class public final Lcom/transsnet/downloader/core/DownloadTaskImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/downloader/core/task/b;
.implements Lcom/transsnet/downloader/core/thread/d;


# instance fields
.field private final a:Lcom/transsnet/downloader/core/c;

.field private final b:Lcom/transsnet/downloader/proxy/b;

.field private final c:Lcom/transsion/baselib/db/download/DownloadBean;

.field private final d:Loy/c;

.field private final e:Ljava/util/List;

.field private final f:Lcom/transsnet/downloader/core/task/c;

.field private g:J

.field private h:Llj/n0;

.field private final i:Lcom/transsnet/downloader/proxy/c;

.field private j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private k:Lkotlinx/coroutines/n0;

.field private final l:Ljava/lang/String;

.field private final m:Lkotlin/Lazy;

.field private final n:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/core/c;Lcom/transsnet/downloader/proxy/b;Lcom/transsion/baselib/db/download/DownloadBean;Loy/c;Lcom/transsnet/downloader/core/task/c;)V
    .locals 2

    const-string v0, "downloadResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iput-object p2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->b:Lcom/transsnet/downloader/proxy/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->g:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->k:Lkotlinx/coroutines/n0;

    const-string p1, "DownloadThread_TaskImpl"

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    new-instance p1, Lcom/transsnet/downloader/core/e;

    invoke-direct {p1}, Lcom/transsnet/downloader/core/e;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->m:Lkotlin/Lazy;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    iput-object p5, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->f:Lcom/transsnet/downloader/core/task/c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    sget-object p1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p5

    const-string v0, "getApp(...)"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/AppDatabase;->q1()Llj/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->h:Llj/n0;

    new-instance p1, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;

    invoke-direct {p1, p3, p0, p4}, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/DownloadTaskImpl;Loy/c;)V

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->i:Lcom/transsnet/downloader/proxy/c;

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_0

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object p4

    :cond_0
    invoke-virtual {p2, p4, p1}, Lcom/transsnet/downloader/proxy/b;->a(Ljava/lang/String;Lcom/transsnet/downloader/proxy/c;)V

    return-void
.end method

.method private final A(I)V
    .locals 20

    move-object/from16 v8, p0

    sget-object v6, Llg/a;->a:Llg/a$a;

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "1---multithreadingDownload"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    move/from16 v1, p1

    invoke-direct {v8, v1, v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->v(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6267\u884c\u591a\u7ebf\u7a0b\u4e0b\u8f7d, \u9700\u8981\u542f\u7684\u7ebf\u7a0b\u6570 =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    const/4 v9, 0x1

    invoke-virtual {v6, v2, v1, v9}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v1, v9

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/transsion/baselib/db/download/DownloadRange;

    new-instance v12, Lcom/transsnet/downloader/core/thread/DownloadRunnable;

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->b:Lcom/transsnet/downloader/proxy/b;

    add-int/lit8 v13, v1, 0x1

    iget-object v4, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v5, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    iget-object v6, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v0, v12

    move-object v1, v11

    move v3, v13

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/core/thread/DownloadRunnable;-><init>(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Loy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V

    sget-object v14, Llg/a;->a:Llg/a$a;

    iget-object v15, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v0

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----\u591a\u7ebf\u7a0b\u4e0b\u8f7d\u5f00\u59cb, rangeId =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c index = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\uff0cstatus = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v11, v9}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e(Ljava/lang/Runnable;)V

    move v1, v13

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final B()Llj/n0;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->q1()Llj/n0;

    move-result-object v0

    return-object v0
.end method

.method private final C(I)V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    new-instance v10, Lcom/transsnet/downloader/core/thread/DownloadRunnable;

    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->b:Lcom/transsnet/downloader/proxy/b;

    iget-object v6, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v7, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    iget-object v8, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v2, v10

    move-object v3, v1

    move v5, p1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/transsnet/downloader/core/thread/DownloadRunnable;-><init>(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Loy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v2

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "singleThread------onRangeSuccess , start new range~ rangeId = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", range.start = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",range.end = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    invoke-virtual {p1, v2, v1, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    invoke-virtual {p1}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    move-result-object p1

    invoke-virtual {p1, v10}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private final D()V
    .locals 20

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v0}, Loy/c;->g()J

    move-result-wide v0

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    cmp-long v0, v0, v5

    const/4 v10, 0x1

    if-gez v0, :cond_1

    move v0, v10

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v1, v2}, Lcom/transsnet/downloader/core/c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setSupportRanges(Z)V

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v1}, Loy/c;->f()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportRanges "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " config.eachDownloadThread "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->f:Lcom/transsnet/downloader/core/task/c;

    if-eqz v1, :cond_2

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v1, v2, v10}, Lcom/transsnet/downloader/core/task/c;->c(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    :cond_2
    const-wide/16 v12, 0x1

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    move-result-wide v14

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v0}, Loy/c;->f()I

    move-result v7

    int-to-long v0, v7

    div-long v16, v14, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_5

    int-to-long v0, v6

    mul-long v0, v0, v16

    add-int/lit8 v2, v7, -0x1

    if-ne v6, v2, :cond_3

    sub-long v2, v14, v12

    goto :goto_3

    :cond_3
    add-long v2, v0, v16

    sub-long/2addr v2, v12

    :goto_3
    new-instance v4, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {v4}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    iget-object v5, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    add-long v18, v0, v2

    invoke-static/range {v18 .. v19}, Landroidx/collection/s;->a(J)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    iget-object v5, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    invoke-virtual {v4, v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    invoke-virtual {v4, v10}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/transsnet/downloader/core/thread/DownloadRunnable;

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->b:Lcom/transsnet/downloader/proxy/b;

    iget-object v3, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v19, v1

    move-object v1, v4

    move-object v4, v3

    move v3, v6

    move-object v9, v5

    move-object/from16 v5, v19

    move/from16 v19, v6

    move-object/from16 v6, v18

    move/from16 v18, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/core/thread/DownloadRunnable;-><init>(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Loy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V

    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    add-int/lit8 v6, v19, 0x1

    move/from16 v7, v18

    goto/16 :goto_2

    :cond_5
    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_5

    :cond_6
    move-wide v0, v12

    :goto_5
    sub-long/2addr v0, v12

    new-instance v2, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {v2}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    iget-object v3, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v9

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v2, v9}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    add-long v3, v14, v0

    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    iget-object v3, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    invoke-virtual {v2, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v1}, Loy/c;->f()I

    move-result v1

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9996\u6b21\u591a\u7ebf\u7a0b\u4e0b\u8f7d,  allSize= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff0ccurThreadSize = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", curThreadListSize = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    invoke-virtual {v0, v2, v1, v10}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    goto/16 :goto_a

    :cond_8
    new-instance v9, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {v9}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v9, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_8

    :cond_a
    move-wide v0, v12

    :goto_8
    invoke-static {v0, v1}, Landroidx/collection/s;->a(J)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_9

    :cond_b
    move-wide v0, v12

    :goto_9
    sub-long/2addr v0, v12

    invoke-virtual {v9, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/transsnet/downloader/core/thread/DownloadRunnable;

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->b:Lcom/transsnet/downloader/proxy/b;

    iget-object v4, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v5, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    iget-object v6, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v3, 0x0

    move-object v0, v12

    move-object v1, v9

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/core/thread/DownloadRunnable;-><init>(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Loy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V

    invoke-virtual {v9, v10}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :goto_a
    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v11}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/core/c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method private final E()V
    .locals 7

    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/util/DownloadUtil;->i(Lcom/transsion/baselib/db/download/DownloadBean;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "download"

    if-eqz v1, :cond_0

    sget-object v1, Lry/e;->c:Lry/e$a;

    invoke-virtual {v1}, Lry/e$a;->a()Lry/e;

    move-result-object v1

    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lry/e;->k(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v4, "startDownload, \u8d44\u6e90\u6709\u95ee\u9898\uff0c\u9700\u8981\u4ece\u5934\u4e0b\u8f7d"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/util/DownloadUtil;->H(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_0
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestartDownloadCount(I)V

    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e()V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadTaskImpl has task, do not check, name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->f:Lcom/transsnet/downloader/core/task/c;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v0, v1, v4}, Lcom/transsnet/downloader/core/task/c;->c(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    :cond_2
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloadingPlay()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->x()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->z()V

    :goto_0
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/core/c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_1

    :cond_4
    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stat new task, name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v4}, Lcom/transsnet/downloader/util/DownloadUtil;->s(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setPath(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadTaskImpl \u65b0\u4efb\u52a1, set download path, path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_6
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_7

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/util/DownloadUtil;->o(Lcom/transsion/baselib/db/download/DownloadBean;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setDownloadHeaderSize(J)V

    :cond_7
    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->s()V

    :goto_1
    return-void
.end method

.method private final F(Ljava/util/List;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->t(Ljava/util/List;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl$updateDBRanges$1;-><init>(Lcom/transsnet/downloader/core/DownloadTaskImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static synthetic g()Llj/n0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->B()Llj/n0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic h(Lcom/transsnet/downloader/core/DownloadTaskImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->t(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic i(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Llj/n0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->h:Llj/n0;

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Lcom/transsnet/downloader/core/c;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Lcom/transsnet/downloader/proxy/b;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->b:Lcom/transsnet/downloader/proxy/b;

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Llj/n0;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->w()Llj/n0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsnet/downloader/core/DownloadTaskImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->D()V

    return-void
.end method

.method public static final synthetic q(Lcom/transsnet/downloader/core/DownloadTaskImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->E()V

    return-void
.end method

.method private final declared-synchronized r()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private final s()V
    .locals 3

    new-instance v0, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;

    invoke-direct {v0}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;-><init>()V

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    new-instance v2, Lcom/transsnet/downloader/core/DownloadTaskImpl$b;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl$b;-><init>(Lcom/transsnet/downloader/core/DownloadTaskImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsnet/downloader/core/task/DownloadFileInfoTask;->b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/task/a;)V

    return-void
.end method

.method private final t(Ljava/util/List;)V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    new-instance v1, Lcom/transsnet/downloader/core/DownloadTaskImpl$checkLastRange$lambda$17$$inlined$sortBy$1;

    invoke-direct {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl$checkLastRange$lambda$17$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->u0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadRange;

    sget-object v7, Llg/a;->a:Llg/a$a;

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v3

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----checkLastRange, lastEnd =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c end = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v1

    iget-object v3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v8, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v8

    :goto_0
    sub-long/2addr v3, v8

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "----checkLastRange, lost, add new range"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v1

    add-long/2addr v1, v8

    iget-object v3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    move-wide v3, v8

    :goto_1
    sub-long/2addr v3, v8

    new-instance v5, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {v5}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    add-long v6, v1, v3

    invoke-static {v6, v7}, Landroidx/collection/s;->a(J)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    invoke-virtual {v5, v3, v4}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {v5, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private final u()J
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getReDownload()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-lez v5, :cond_1

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2, v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setProgress(J)V

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/32 v2, 0x500000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->f:Lcom/transsnet/downloader/core/task/c;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v2, v3}, Lcom/transsnet/downloader/core/task/c;->I(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v2, Llg/a;->a:Llg/a$a;

    const-string v3, "DownloadThread"

    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------------total size ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " progress "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", isPreDownload = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method private final v(ILjava/util/List;)Ljava/util/List;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    move-result v6

    if-nez v6, :cond_10

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v7

    iget-object v9, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    move-result-wide v9

    cmp-long v7, v7, v9

    const-string v9, "download"

    if-lez v7, :cond_d

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeSize()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v12

    sub-long/2addr v10, v12

    iget-object v7, v0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v7}, Loy/c;->g()J

    move-result-wide v12

    cmp-long v7, v10, v12

    if-lez v7, :cond_d

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v4

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v10

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v12

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5206\u7247\u4e0d\u591f,\u5207\u591a\u4e2a,count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\uff0c rangeId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",start =  "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",end = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "\uff0cprogress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v9, v7, v6}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v10

    add-long/2addr v10, v7

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v13, 0x0

    cmp-long v15, v7, v13

    const-string v13, ", start = "

    const-wide/16 v16, 0x1

    if-lez v15, :cond_1

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v14

    move-wide/from16 v18, v7

    sub-long v6, v10, v16

    new-instance v8, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {v8}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    move-object/from16 v20, v3

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    add-long v21, v14, v6

    invoke-static/range {v21 .. v22}, Landroidx/collection/s;->a(J)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {v8, v14, v15}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    invoke-virtual {v8, v6, v7}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    move-wide/from16 v6, v18

    invoke-virtual {v8, v6, v7}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v3

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v14

    move-wide/from16 v18, v10

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v10

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v5

    const-string v5, "\u5f53\u524d\u5206\u7247\u5df2\u6709\u4e0b\u8f7d\u5185\u5bb9 downloadedSize = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " \u76f4\u63a5\u5c06\u5df2\u4e0b\u8f7d\u7684\u751f\u6210\u4e00\u4e2a\u72ec\u7acb\u5206\u7247\uff0crangeId = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",success = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v2, v9, v0, v1}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-wide v6, v7

    move-wide/from16 v18, v10

    :goto_1
    invoke-virtual/range {v21 .. v21}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeSize()J

    move-result-wide v0

    sub-long/2addr v0, v6

    move/from16 v3, p1

    int-to-long v5, v3

    div-long/2addr v0, v5

    move-object/from16 v5, p0

    iget-object v2, v5, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v2}, Loy/c;->g()J

    move-result-wide v6

    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    iget-object v0, v5, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v0}, Loy/c;->g()J

    move-result-wide v0

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    invoke-virtual/range {v21 .. v21}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v6

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    :goto_3
    if-ge v8, v3, :cond_a

    int-to-long v10, v8

    mul-long/2addr v10, v0

    add-long v10, v18, v10

    add-long v14, v10, v0

    sub-long v14, v14, v16

    if-eqz v2, :cond_3

    move-wide/from16 v22, v0

    add-int/lit8 v0, v3, -0x1

    if-ne v8, v0, :cond_4

    cmp-long v0, v14, v6

    if-gez v0, :cond_4

    move-wide v14, v6

    goto :goto_4

    :cond_3
    move-wide/from16 v22, v0

    :cond_4
    :goto_4
    iget-object v0, v5, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_5

    :cond_5
    move-wide/from16 v0, v16

    :goto_5
    cmp-long v0, v14, v0

    if-ltz v0, :cond_7

    iget-object v0, v5, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_6

    :cond_6
    move-wide/from16 v0, v16

    :goto_6
    sub-long v0, v0, v16

    move-wide v14, v0

    :cond_7
    const-string v0, ",start = "

    if-eqz v2, :cond_9

    if-nez v8, :cond_8

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5206\u7247\u4e0d\u591f, \u74dc\u5206\u5b8c\u4e86 \u7b2c\u4e00\u4e2a\u4f7f\u7528\u539f\u59cb\u5206\u7247\uff0c\u66f4\u6539 start = "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v18

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide/from16 v18, v6

    const-string v6, " end1 = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v0, v9, v1, v6}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v1, v21

    invoke-virtual {v1, v10, v11}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    invoke-virtual {v1, v14, v15}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    move-object/from16 v6, v20

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 p2, v2

    move v3, v8

    move-wide/from16 v20, v10

    move-object/from16 v24, v13

    goto/16 :goto_7

    :cond_8
    move-object/from16 v1, v21

    move-wide/from16 v27, v6

    move-object/from16 v6, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v27

    new-instance v7, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {v7}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    add-long v24, v10, v14

    invoke-static/range {v24 .. v25}, Landroidx/collection/s;->a(J)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {v7, v10, v11}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    invoke-virtual {v7, v14, v15}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    move/from16 p2, v2

    const-wide/16 v2, 0x0

    invoke-virtual {v7, v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v13

    const-string v13, "\u5206\u7247\u4e0d\u591f, \u74dc\u5206\u5b8c\u4e86 \u65b0\u5206\u7247------rangeId = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v9, v0, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v8

    goto :goto_7

    :cond_9
    move/from16 p2, v2

    move-object/from16 v24, v13

    move-object/from16 v1, v21

    move-wide/from16 v27, v6

    move-object/from16 v6, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v27

    new-instance v2, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {v2}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    add-long v25, v10, v14

    invoke-static/range {v25 .. v26}, Landroidx/collection/s;->a(J)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    invoke-virtual {v2, v14, v15}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    move v3, v8

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u5206\u7247\u4e0d\u591f, \u6ca1\u74dc\u5206\u5b8c \u65b0\u5206\u7247------rangeId = "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v5, v9, v0, v7}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v8, v3, 0x1

    move-object/from16 v5, p0

    move/from16 v3, p1

    move/from16 v2, p2

    move-wide v10, v14

    move-object/from16 v13, v24

    move-wide/from16 v27, v20

    move-object/from16 v21, v1

    move-object/from16 v20, v6

    move-wide/from16 v6, v18

    move-wide/from16 v18, v27

    move-wide/from16 v0, v22

    goto/16 :goto_3

    :cond_a
    move/from16 p2, v2

    move-object/from16 v24, v13

    move-object/from16 v6, v20

    move-object/from16 v1, v21

    if-nez p2, :cond_b

    add-long v10, v10, v16

    invoke-virtual {v1, v10, v11}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v2

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u539f\u59cb\u5206\u7247 =  id = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v9, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    move-object/from16 v3, p0

    if-nez v0, :cond_c

    iget-object v0, v3, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    iget-object v0, v3, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->F(Ljava/util/List;)V

    goto :goto_9

    :cond_d
    move-object v6, v3

    move-object v1, v5

    move-object v3, v0

    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v7, p1

    if-lt v5, v7, :cond_e

    goto :goto_9

    :cond_e
    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v10

    iget-object v8, v3, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v8}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    move-result-wide v12

    cmp-long v8, v10, v12

    if-gtz v8, :cond_f

    const/4 v8, 0x1

    goto :goto_8

    :cond_f
    move v8, v0

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "---\u591a\u7ebf\u7a0b, \u5206\u7247\u5c0f\u4e8erange\u5927\u5c0f\uff0c \u5934\u6587\u4ef6 = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v5, v9, v0, v8}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    move-object v3, v6

    move v1, v7

    goto/16 :goto_0

    :cond_10
    move-object v6, v3

    goto/16 :goto_0

    :cond_11
    move-object v6, v3

    move-object v3, v0

    :goto_9
    return-object v6
.end method

.method private final w()Llj/n0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/n0;

    return-object v0
.end method

.method private final x()V
    .locals 15

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d--\u591a\u7ebf\u7a0b"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_0

    new-instance v5, Lcom/transsnet/downloader/core/DownloadTaskImpl$handleMultithreadingDownloadOnly$lambda$3$lambda$2$$inlined$sortBy$1;

    invoke-direct {v5}, Lcom/transsnet/downloader/core/DownloadTaskImpl$handleMultithreadingDownloadOnly$lambda$3$lambda$2$$inlined$sortBy$1;-><init>()V

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadRange;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v6}, Loy/c;->f()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeSize()J

    move-result-wide v5

    iget-object v7, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v7}, Loy/c;->g()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gtz v5, :cond_1

    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v6

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v9

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u6dfb\u52a0\u4e0b\u8f7d\u5206\u7247,rangeId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",start =  "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",end = "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "\uff0c progress = "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6, v3}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v2}, Loy/c;->f()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v1}, Loy/c;->f()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->v(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v1, v3

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    new-instance v12, Lcom/transsnet/downloader/core/thread/DownloadRunnable;

    iget-object v6, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->b:Lcom/transsnet/downloader/proxy/b;

    add-int/2addr v1, v3

    iget-object v8, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v9, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    iget-object v10, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v4, v12

    move-object v5, v2

    move v7, v1

    move-object v11, p0

    invoke-direct/range {v4 .. v11}, Lcom/transsnet/downloader/core/thread/DownloadRunnable;-><init>(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Loy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v5, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v6

    iget-object v7, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----\u591a\u7ebf\u7a0b\u4e0b\u8f7d\u5f00\u59cb, rangeId =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", curSize= "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\uff0cstatus = "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    sget-object v2, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    invoke-virtual {v2}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private final y(I)V
    .locals 18

    move-object/from16 v8, p0

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "2---handleNextRangeDownload"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v1

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2---rangeId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDownloading = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloadingPlay()Z

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_2

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeSize()J

    move-result-wide v0

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v2}, Loy/c;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    const-string v2, "onRangeSuccess \u8fd9\u4e2a\u5206\u7247\u592a\u5927\uff0c\u9700\u8981\u5207\u6210\u5c0f\u5206\u7247"

    invoke-virtual {v0, v1, v2, v10}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v0

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v2}, Loy/c;->g()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v4

    new-instance v6, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-direct {v6}, Lcom/transsion/baselib/db/download/DownloadRange;-><init>()V

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getThreadId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/transsion/baselib/db/download/DownloadRange;->setThreadId(I)V

    add-long v11, v0, v4

    invoke-static {v11, v12}, Landroidx/collection/s;->a(J)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/transsion/baselib/db/download/DownloadRange;->setRangeId(I)V

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getResourceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/transsion/baselib/db/download/DownloadRange;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setStart(J)V

    invoke-virtual {v6, v4, v5}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    const-wide/16 v0, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setProgress(J)V

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-virtual {v9, v0, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setEnd(J)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->F(Ljava/util/List;)V

    :cond_2
    new-instance v11, Lcom/transsnet/downloader/core/thread/DownloadRunnable;

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->b:Lcom/transsnet/downloader/proxy/b;

    iget-object v4, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v5, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    iget-object v6, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v0, v11

    move-object v1, v9

    move/from16 v3, p1

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/core/thread/DownloadRunnable;-><init>(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Loy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V

    invoke-virtual {v9, v10}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    sget-object v12, Llg/a;->a:Llg/a$a;

    iget-object v13, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v0

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v1

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2---start single new range tread~ rangeId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", range.start = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",range.end = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private final z()V
    .locals 17

    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentOffset()J

    move-result-wide v0

    iget-object v4, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCurrentOffset()J

    move-result-wide v2

    :cond_1
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    move-result-wide v6

    iget-object v9, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u5f00\u59cb\u4e0b\u8f7d--\u8fb9\u4e0b\u8fb9\u64ad\uff0c\u5355\u7ebf\u7a0b subjectId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",resourceId="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",---readProgress = "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentOffset = "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", ranges size = "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v4, "download"

    const/4 v9, 0x1

    invoke-virtual {v0, v4, v1, v9}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadRange;

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v11, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v6

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v14

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    move-result-wide v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "---rangeId = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", range.start = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",range.end = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", range.progress = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v10, v5

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    move-result-wide v9

    cmp-long v0, v2, v9

    if-gtz v0, :cond_2

    cmp-long v0, v6, v2

    if-gtz v0, :cond_2

    iget-object v11, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0-- get range , rangeId =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v10, v5

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object/from16 v0, v16

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    sget-object v9, Llg/a;->a:Llg/a$a;

    iget-object v10, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v11, "1--  \u64ad\u653e\u8fdb\u5ea6\u7684\u5206\u7247\u5df2\u4e0b\u8f7d\u5b8c\u6210\uff0c\u5219\u53d6\u4e00\u4e2a\u95ee\u4e0b\u8f7d\u7684\u5206\u7247\u6267\u884c\u4e0b\u8f7d"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadRange;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v9, Llg/a;->a:Llg/a$a;

    iget-object v10, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v11, "2--  \u53d6\u4e00\u4e2a\u95ee\u4e0b\u8f7d\u7684\u5206\u7247\u6267\u884c\u4e0b\u8f7d, get range"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    move-object v9, v2

    goto :goto_3

    :cond_6
    move-object v9, v1

    :goto_3
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "----------\u6267\u884c\u672a\u4e0b\u8f7d\u7684\u7ebf\u7a0b"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v1, v2}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    new-instance v10, Lcom/transsnet/downloader/core/thread/DownloadRunnable;

    iget-object v2, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->b:Lcom/transsnet/downloader/proxy/b;

    iget-object v4, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v5, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    iget-object v6, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v3, 0x0

    move-object v0, v10

    move-object v1, v9

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsnet/downloader/core/thread/DownloadRunnable;-><init>(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Loy/c;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    invoke-virtual {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e(Ljava/lang/Runnable;)V

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v8, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_7
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/transsnet/downloader/core/thread/f;ILcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string p2, "runnable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "curRange"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p3, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    iget-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    sget-object p3, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reDownload\uff0cresult ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-gtz p2, :cond_1

    const-string p1, "download"

    const-string p2, "\u91cd\u65b0\u4e0b\u8f7d\u6240\u6709\u7ebf\u7a0b\u5df2\u7ecf\u6682\u505c\uff0c\u5f00\u59cb\u6267\u884c\u65b0\u4e0b\u8f7d"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->k:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/transsnet/downloader/core/DownloadTaskImpl$reDownload$1;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl$reDownload$1;-><init>(Lcom/transsnet/downloader/core/DownloadTaskImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    return-object v0
.end method

.method public declared-synchronized c(Lcom/transsnet/downloader/core/thread/f;ILcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string p2, "runnable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "curRange"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p3, v0}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    iget-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {p1}, Loy/c;->f()I

    move-result p1

    sub-int/2addr p1, p2

    sget-object p2, Llg/a;->a:Llg/a$a;

    const-string p3, "download"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fb9\u4e0b\u8fb9\u64ad \u9000\u51fa-------\u6267\u884c\u591a\u7ebf\u7a0b\uff0c threadSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v0, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-lez p1, :cond_1

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->A(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized d()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->u()J

    move-result-wide v2

    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x1

    :goto_0
    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v2, v3}, Lcom/transsnet/downloader/core/c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iput-wide v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->u()J

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l:Ljava/lang/String;

    const-string v4, "--------onDownloadSuccess---\u76f8\u540c\u72b6\u6001\uff0c\u65e0\u9700\u91cd\u590d\u56de\u8c03-"

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x1

    :goto_0
    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    sget-object v0, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v2}, Lcom/transsnet/downloader/util/DownloadUtil;->i(Lcom/transsion/baselib/db/download/DownloadBean;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    sget-object v1, Lry/e;->c:Lry/e$a;

    invoke-virtual {v1}, Lry/e$a;->a()Lry/e;

    move-result-object v1

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lry/e;->k(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;)V

    sget-object v5, Llg/a;->a:Llg/a$a;

    const-string v1, "download"

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDownloadSuccess, \u8d44\u6e90\u6709\u95ee\u9898\uff0c\u9700\u8981\u91cd\u65b0\u4e0b\u8f7d\uff0c  progress = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/util/DownloadUtil;->H(Lcom/transsion/baselib/db/download/DownloadBean;)V

    const-string v6, "ReDownload"

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetProgress\uff0c progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->f:Lcom/transsnet/downloader/core/task/c;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/core/task/c;->g(Lcom/transsion/baselib/db/download/DownloadBean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v2, "download"

    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------------------------------onDownloadSuccess subjectId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",resourceId="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "------------------------------"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setReportStatus(I)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/core/c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->f:Lcom/transsnet/downloader/core/task/c;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/core/task/c;->b(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_5
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->b:Lcom/transsnet/downloader/proxy/b;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/proxy/b;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized f(Lcom/transsnet/downloader/core/thread/f;ILcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "curRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->u()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    sget-object v3, Llg/a;->a:Llg/a$a;

    const-string v4, "download"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    move-result p3

    iget-object v6, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "======onRangeSuccess, thread = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",rangeId = "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",progress = "

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", resourceId="

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",HeaderSize= "

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p3, v5}, Llg/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const-wide/16 v8, 0x1

    :goto_0
    cmp-long p3, v0, v8

    if-lez p3, :cond_1

    invoke-virtual {p0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setUpdateTimeStamp(Ljava/lang/Long;)V

    iget-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {p3, v4}, Lcom/transsnet/downloader/core/c;->a(Lcom/transsion/baselib/db/download/DownloadBean;)V

    iput-wide v6, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->g:J

    iget-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    if-lez p3, :cond_2

    iget-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p3

    goto :goto_1

    :cond_2
    move p3, v2

    :goto_1
    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    move-result-wide v6

    cmp-long p1, v0, v6

    if-gez p1, :cond_3

    if-lez p3, :cond_3

    const-string p1, "download"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "=======onRangeSuccess header not success, wait, downloadProgress = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2, v5}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadHeaderSize()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget-object p1, Llj/b;->a:Llj/b$a;

    invoke-virtual {p1}, Llj/b$a;->d()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v0, v6

    if-gez p1, :cond_4

    const-string p1, "download"

    const-string v0, "onRangeSuccess,  \u6587\u4ef6\u5934\u4e0b\u8f7d\u5b8c\u6210\uff0c\u6267\u884c\u591a\u7ebf\u7a0b"

    invoke-virtual {v3, p1, v0, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {p1}, Loy/c;->f()I

    move-result p1

    if-ge p3, p1, :cond_5

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {p1}, Loy/c;->f()I

    move-result p1

    sub-int v2, p1, p3

    :cond_5
    const-string p1, "download"

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->d:Loy/c;

    invoke-virtual {v0}, Loy/c;->f()I

    move-result v0

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allSize= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",curThreadSize = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",resourceId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",threadSize = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-le v2, v5, :cond_6

    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloadingPlay()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0, v2}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->A(I)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloadingPlay()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    if-le p3, p1, :cond_7

    const-string p1, "download"

    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resourceId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u5f53\u524d\u8fb9\u4e0b\u8fb9\u64ad \u8fd8\u662f\u591a\u7ebf\u7a0b\uff0c\u79fb\u9664\u8be5\u7ebf\u7a0b\uff0c\u7b49\u5f85\u6700\u540e\u4e00\u4e2a\u5355\u7ebf\u7a0b\u4e0b\u8f7d"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloadingPlay()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "download"

    iget-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " \u5f53\u524d\u8fb9\u4e0b\u8fb9\u64ad ,\u5355\u7ebf\u7a0b\u4e0b\u8f7d\uff0c\u4e0d\u53bb\u5207\u5206\u7247---"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p1, p3, v5}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->C(I)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, p2}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->y(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public start()V
    .locals 14

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->a:Lcom/transsnet/downloader/core/c;

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    new-instance v2, Lcom/transsion/baselib/db/download/DownloadException;

    const/16 v3, 0x9

    const-string v4, "noNetWork"

    invoke-direct {v2, v3, v4}, Lcom/transsion/baselib/db/download/DownloadException;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/transsnet/downloader/core/c;->b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->c:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadRanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->k:Lkotlinx/coroutines/n0;

    new-instance v5, Lcom/transsnet/downloader/core/DownloadTaskImpl$start$1;

    invoke-direct {v5, p0, v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl$start$1;-><init>(Lcom/transsnet/downloader/core/DownloadTaskImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl;->k:Lkotlinx/coroutines/n0;

    new-instance v11, Lcom/transsnet/downloader/core/DownloadTaskImpl$start$2;

    invoke-direct {v11, p0, v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl$start$2;-><init>(Lcom/transsnet/downloader/core/DownloadTaskImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :goto_0
    return-void
.end method
