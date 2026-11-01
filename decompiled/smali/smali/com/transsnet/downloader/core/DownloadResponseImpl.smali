.class public final Lcom/transsnet/downloader/core/DownloadResponseImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsnet/downloader/core/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/core/DownloadResponseImpl$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/transsnet/downloader/core/DownloadResponseImpl$a;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Loy/c;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;

.field private final f:I

.field private g:Lcom/transsnet/downloader/manager/g;

.field private final h:Lkotlin/Lazy;

.field private i:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/core/DownloadResponseImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->j:Lcom/transsnet/downloader/core/DownloadResponseImpl$a;

    return-void
.end method

.method public constructor <init>(Lcom/transsnet/downloader/manager/g;Ljava/util/Set;Loy/c;)V
    .locals 1

    const-string v0, "downloadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadListeners"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->b:Loy/c;

    const/4 p2, -0x1

    iput p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->c:I

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Lcom/transsnet/downloader/core/DownloadResponseImpl$b;

    invoke-direct {p3, p0, p2}, Lcom/transsnet/downloader/core/DownloadResponseImpl$b;-><init>(Lcom/transsnet/downloader/core/DownloadResponseImpl;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->e:Landroid/os/Handler;

    const/16 p2, 0x28

    iput p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->f:I

    new-instance p2, Lcom/transsnet/downloader/core/d;

    invoke-direct {p2}, Lcom/transsnet/downloader/core/d;-><init>()V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->h:Lkotlin/Lazy;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p2

    iput-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->i:Lkotlinx/coroutines/n0;

    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->g:Lcom/transsnet/downloader/manager/g;

    return-void
.end method

.method public static synthetic c()Llj/n0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->k()Llj/n0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsnet/downloader/core/DownloadResponseImpl;)Loy/c;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->b:Loy/c;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/core/DownloadResponseImpl;)Llj/n0;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->i()Llj/n0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsnet/downloader/core/DownloadResponseImpl;Lcom/transsion/baselib/db/download/DownloadBean;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->j(Lcom/transsion/baselib/db/download/DownloadBean;IZ)V

    return-void
.end method

.method public static final synthetic g(Lcom/transsnet/downloader/core/DownloadResponseImpl;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->m(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final h(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 8

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->i:Lkotlinx/coroutines/n0;

    new-instance v5, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p0, v0}, Lcom/transsnet/downloader/core/DownloadResponseImpl$createOrUpdateDownloadInfo$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/DownloadResponseImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final i()Llj/n0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/n0;

    return-object v0
.end method

.method private final j(Lcom/transsion/baselib/db/download/DownloadBean;IZ)V
    .locals 10

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStatusChanged, handleMessage what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "DownloadImp-ResponseImpl"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 v0, 0x39

    if-eq p2, v0, :cond_d

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadListener()Llj/m0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Llj/m0;->a(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V

    :cond_0
    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->a:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/m0;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Llj/m0;->a(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadListener()Llj/m0;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Llj/m0;->e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->a:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/m0;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Llj/m0;->e(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto/16 :goto_8

    :pswitch_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadListener()Llj/m0;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Llj/m0;->f(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_4
    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->a:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/m0;

    invoke-interface {v0, p1}, Llj/m0;->f(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadListener()Llj/m0;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2, p1}, Llj/m0;->d(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_6
    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->a:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/m0;

    invoke-interface {v0, p1}, Llj/m0;->d(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_3

    :cond_7
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto/16 :goto_8

    :pswitch_4
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_4

    :cond_8
    const-wide/16 v0, 0x0

    :goto_4
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadListener()Llj/m0;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object v3, p1

    move-wide v4, v8

    move-wide v6, v0

    invoke-interface/range {v2 .. v7}, Llj/m0;->c(Lcom/transsion/baselib/db/download/DownloadBean;JJ)V

    :cond_9
    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->a:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llj/m0;

    move-object v3, p1

    move-wide v4, v8

    move-wide v6, v0

    invoke-interface/range {v2 .. v7}, Llj/m0;->c(Lcom/transsion/baselib/db/download/DownloadBean;JJ)V

    goto :goto_5

    :cond_a
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_8

    :pswitch_5
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadListener()Llj/m0;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-interface {p2, p1}, Llj/m0;->g(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_b
    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->a:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/m0;

    invoke-interface {v0, p1}, Llj/m0;->g(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_6

    :cond_c
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_8

    :cond_d
    :pswitch_6
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDownloadListener()Llj/m0;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-interface {p2, p1}, Llj/m0;->b(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_e
    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->a:Ljava/util/Set;

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/m0;

    invoke-interface {v0, p1}, Llj/m0;->b(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_7

    :cond_f
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->l(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :goto_8
    if-nez p3, :cond_10

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->n(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static final k()Llj/n0;
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

.method private final l(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "download_error_opt_off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadException;->getCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPreErrorCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getException()Lcom/transsion/baselib/db/download/DownloadException;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadException;->getCode()I

    move-result v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/transsion/baselib/db/download/DownloadException;->Companion:Lcom/transsion/baselib/db/download/DownloadException$a;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadException$a;->a()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setPreErrorCode(I)V

    :cond_5
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->i:Lkotlinx/coroutines/n0;

    new-instance v4, Lcom/transsnet/downloader/core/DownloadResponseImpl$report$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsnet/downloader/core/DownloadResponseImpl$report$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/DownloadResponseImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final m(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;

    iget v1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;-><init>(Lcom/transsnet/downloader/core/DownloadResponseImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_1
    iget-object p1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$3:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, p1

    move-object p1, v5

    goto/16 :goto_8

    :pswitch_2
    iget-object p1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/Unit;

    goto :goto_1

    :pswitch_3
    iget-object p1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lkotlin/Unit;

    iget-object v2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v8, v2

    move-object v2, p1

    move-object p1, v5

    goto/16 :goto_6

    :pswitch_4
    iget-object p1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_5
    iget-object p1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$3:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaMetadataRetriever;

    iget-object v2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v5

    goto/16 :goto_5

    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p2

    const/4 v2, 0x5

    if-ne p2, v2, :cond_13

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_1
    move-wide v6, v4

    :goto_2
    cmp-long p2, v6, v4

    if-lez p2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    move-result p2

    if-gtz p2, :cond_13

    :cond_2
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x9

    :try_start_1
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_3

    :cond_3
    move-wide v9, v4

    :goto_3
    iput-wide v9, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/16 v2, 0x12

    :try_start_2
    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_4

    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v9

    :goto_4
    iput v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v2, 0x13

    invoke-virtual {p2, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_5
    iput v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V

    iget-wide v9, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v2, v9, v4

    if-lez v2, :cond_8

    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_6
    iget-wide v5, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iput-object p1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$3:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->c0(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v4, v7

    move-object v2, v8

    :goto_5
    move-object v8, v2

    move-object v7, v4

    :cond_8
    iget v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v2, :cond_13

    iget v2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v2, :cond_13

    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_9
    iget p1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput-object p2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$3:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    invoke-virtual {v2, v4, p1, v5, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i0(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_13

    return-object v1

    :catchall_2
    move-exception v9

    goto :goto_7

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V

    iget-wide v9, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long p2, v9, v4

    if-lez p2, :cond_c

    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_a
    iget-wide v5, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iput-object p1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$3:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    invoke-virtual {p2, v4, v5, v6, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->c0(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    move-object v4, v7

    :goto_6
    move-object v7, v4

    :cond_c
    iget p2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez p2, :cond_13

    iget p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez p2, :cond_13

    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_d
    iget p1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput-object v2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    invoke-virtual {p2, v4, p1, v5, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i0(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_13

    return-object v1

    :goto_7
    invoke-virtual {p2}, Landroid/media/MediaMetadataRetriever;->release()V

    iget-wide v10, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long p2, v10, v4

    if-lez p2, :cond_10

    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_e
    iget-wide v5, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iput-object p1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$3:Ljava/lang/Object;

    iput v2, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    invoke-virtual {p2, v4, v5, v6, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->c0(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_f

    return-object v1

    :cond_f
    move-object v4, v7

    move-object v2, v8

    :goto_8
    move-object p2, p1

    move-object v8, v2

    move-object v7, v4

    :goto_9
    move-object p1, v9

    goto :goto_a

    :cond_10
    move-object p2, p1

    goto :goto_9

    :goto_a
    iget v2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v2, :cond_12

    iget v2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez v2, :cond_12

    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_11

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_11
    iget p2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v5, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput-object p1, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->L$3:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v0, Lcom/transsnet/downloader/core/DownloadResponseImpl$tryUpdateVideoInfo$1;->label:I

    invoke-virtual {v2, v4, p2, v5, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i0(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_12

    return-object v1

    :cond_12
    :goto_b
    throw p1

    :cond_13
    :goto_c
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final n(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->a:Lcom/transsnet/downloader/notification/DownloadNotificationUtils;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/notification/DownloadNotificationUtils;->I(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const-string v1, "DownloadImp-ResponseImpl"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloading()Z

    move-result v3

    xor-int/2addr v3, v2

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->c:I

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStatusChanged, intercept status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " resourceId= "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1, v2}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    iput v0, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->c:I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    iput-object v3, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->d:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->h(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v4

    invoke-direct {p0, p1, v3, v4}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->j(Lcom/transsion/baselib/db/download/DownloadBean;IZ)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-string v4, "obtainMessage(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v4

    iput v4, v3, Landroid/os/Message;->arg1:I

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_2
    sget-object v3, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v0

    :goto_3
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :cond_6
    move-object v5, v0

    :goto_4
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_5

    :cond_7
    move-object v6, v0

    :goto_5
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStatusChanged\uff0cname = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",status ="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",  progress:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", size:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isDownloading()Z

    move-result p1

    if-ne p1, v2, :cond_9

    move v4, v2

    :cond_9
    xor-int/lit8 p1, v4, 0x1

    invoke-virtual {v3, v1, v0, p1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadException;)V
    .locals 9

    const/4 v0, 0x6

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    :cond_0
    iget v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->c:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->d:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "DownloadImp-ResponseImpl"

    const-string v5, "handleException, intercept"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_2
    iput v0, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->c:I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->d:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setException(Lcom/transsion/baselib/db/download/DownloadException;)V

    :cond_4
    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->h(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/transsnet/downloader/core/DownloadResponseImpl;->j(Lcom/transsion/baselib/db/download/DownloadBean;IZ)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "obtainMessage(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isPreDownload()Z

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    :goto_2
    sget-object v0, Llg/a;->a:Llg/a$a;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadException;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_7
    move-object v1, v2

    :goto_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadException;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_8
    move-object v3, v2

    :goto_4
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleException: code = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",responseCode = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msg = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    const-string v2, "download"

    invoke-virtual {v0, v2, p2, v1}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_a

    iget-object p2, p0, Lcom/transsnet/downloader/core/DownloadResponseImpl;->g:Lcom/transsnet/downloader/manager/g;

    if-eqz p2, :cond_a

    invoke-interface {p2, p1}, Lcom/transsnet/downloader/manager/g;->v(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_a
    return-void
.end method
