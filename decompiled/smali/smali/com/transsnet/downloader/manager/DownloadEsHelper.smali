.class public final Lcom/transsnet/downloader/manager/DownloadEsHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/manager/DownloadEsHelper$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

.field private static final n:Lkotlin/Lazy;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;

.field private final e:Ljava/util/concurrent/ConcurrentHashMap;

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    new-instance v0, Lcom/transsnet/downloader/manager/d;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->n:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->f:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i:I

    new-instance v0, Lcom/transsnet/downloader/manager/a;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/manager/b;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->k:Lkotlin/Lazy;

    new-instance v0, Lcom/transsnet/downloader/manager/c;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->l:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic B(Lcom/transsnet/downloader/manager/DownloadEsHelper;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->A(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/transsnet/downloader/manager/DownloadEsHelper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->E(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final L()Llj/v0;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/v0;

    return-object v0
.end method

.method public static synthetic O(Lcom/transsnet/downloader/manager/DownloadEsHelper;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->N(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final U()Lcom/transsnet/downloader/manager/DownloadEsHelper;
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;-><init>()V

    return-object v0
.end method

.method private final V(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 4

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private final W(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a()Llj/v0;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a0()Llj/v0;

    move-result-object v0

    return-object v0
.end method

.method private static final a0()Llj/v0;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->z1()Llj/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/e1;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j0()Lcom/transsion/baselib/db/video/e1;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Llj/c;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->n()Llj/c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lcom/transsnet/downloader/manager/DownloadEsHelper;
    .locals 1

    invoke-static {}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->U()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->n:Lkotlin/Lazy;

    return-object v0
.end method

.method private final j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->L()Llj/v0;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v6

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->label:I

    invoke-interface {p2, v2, v4, v6, v0}, Llj/v0;->e(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    move-object v2, p2

    check-cast v2, Ljava/util/List;

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->L()Llj/v0;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->label:I

    invoke-interface {p2, v2, v0}, Llj/v0;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    move-object v2, p2

    check-cast v2, Ljava/util/List;

    :cond_9
    :goto_3
    move-object p2, v2

    check-cast p2, Ljava/util/Collection;

    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/SubtitleBean;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    :goto_5
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->L()Llj/v0;

    move-result-object v2

    if-eqz v2, :cond_f

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$checkSubtitle$1;->label:I

    invoke-interface {v2, p2, v0}, Llj/v0;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_d

    return-object v1

    :cond_d
    :goto_6
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_f

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/SubtitleBean;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/SubtitleBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private static final j0()Lcom/transsion/baselib/db/video/e1;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->E1()Lcom/transsion/baselib/db/video/e1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static final n()Llj/c;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->p1()Llj/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final r()Llj/c;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj/c;

    return-object v0
.end method


# virtual methods
.method public final A(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->Z$0:Z

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    iget-boolean p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->Z$0:Z

    :try_start_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    sget-object p2, Lak/o;->a:Lak/o;

    invoke-virtual {p2}, Lak/o;->d()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object v4

    if-eqz v4, :cond_8

    iput-boolean p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->Z$0:Z

    iput v5, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->label:I

    invoke-interface {v4, p2, v0}, Llj/c;->u(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    move-object v2, p2

    check-cast v2, Ljava/util/List;

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_8

    iput-boolean p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->Z$0:Z

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->label:I

    invoke-interface {p2, v0}, Llj/c;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    move-object v2, p2

    check-cast v2, Ljava/util/List;

    :cond_8
    :goto_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_9

    return-object v2

    :cond_9
    if-eqz v2, :cond_13

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p2

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_c

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_c
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-direct {p0, v4, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->V(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_f
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-direct {p0, v4, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->W(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_10
    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_11
    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListComplete$1;->label:I

    invoke-direct {p0, p2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_a

    return-object v1

    :cond_12
    move-object p2, v2

    :cond_13
    return-object p2

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final C(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;

    invoke-direct {v0, p0, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lak/o;->a:Lak/o;

    invoke-virtual {p1}, Lak/o;->d()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object v4

    if-eqz v4, :cond_8

    iput v5, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->label:I

    invoke-interface {v4, p1, v0}, Llj/c;->w(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p1

    if-eqz p1, :cond_8

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->label:I

    invoke-interface {p1, v0}, Llj/c;->m(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_8
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_12

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, p1

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_a
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_b
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-direct {p0, v5, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->V(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_e
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-direct {p0, v5, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->W(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_f
    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_10
    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    iput-object v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getListUnComplete$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_11
    move-object p1, v4

    :cond_12
    return-object p1

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final D(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Llj/c;->C(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final E(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;

    invoke-direct {v0, p0, p3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_5

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getOutsideVideoHistoricalPlayRecord$3;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->G(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object p2, p1

    move-object p1, p3

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_2
    if-eqz p1, :cond_6

    iget-object p3, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-object p1
.end method

.method public final G(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_5

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->r(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_f

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    move-object p1, p2

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_8
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-direct {p0, v4, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->V(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_b
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-direct {p0, v4, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->W(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_c
    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_d
    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getRecentlyByNum$1;->label:I

    invoke-direct {p0, p2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_e
    move-object p1, v2

    :cond_f
    return-object p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final H(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_5

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_d

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    move-object p1, p2

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_8
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeries$1;->label:I

    invoke-direct {p0, p2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_c
    move-object p1, v2

    :cond_d
    return-object p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final I(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_5

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_d

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    move-object p1, p2

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_8
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSeriesCompleted$1;->label:I

    invoke-direct {p0, p2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_c
    move-object p1, v2

    :cond_d
    return-object p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final J(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSubjectDownloadBean$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSubjectDownloadBean$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSubjectDownloadBean$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSubjectDownloadBean$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSubjectDownloadBean$1;

    invoke-direct {v0, p0, p4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSubjectDownloadBean$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSubjectDownloadBean$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSubjectDownloadBean$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p4

    if-eqz p4, :cond_9

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getSubjectDownloadBean$1;->label:I

    invoke-interface {p4, p1, p2, p3, v0}, Llj/c;->F(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v3, p1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    :cond_8
    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p4

    goto :goto_4

    :cond_9
    :goto_2
    return-object v3

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-object v3
.end method

.method public final K(Ljava/lang/String;II)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 2

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    return-object p1
.end method

.method public final M(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;

    invoke-direct {v0, p0, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p1

    if-eqz p1, :cond_5

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;->label:I

    invoke-interface {p1, v0}, Llj/c;->p(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_f

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v2

    move-object v2, p1

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_7
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_8
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-direct {p0, v5, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->V(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_b
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-direct {p0, v5, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->W(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_c
    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_d
    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    iput-object v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTotalList$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_e
    move-object v2, v4

    :cond_f
    return-object v2

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final N(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-boolean p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->Z$0:Z

    iget-object v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;

    iget-object v0, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->Z$0:Z

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getTransferReceivedList$1;->label:I

    invoke-interface {v2, v0}, Llj/c;->l(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p0

    move-object v5, v0

    move-object v0, p2

    move-object p2, v5

    :goto_1
    :try_start_2
    check-cast p2, Ljava/util/List;

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, p2

    goto :goto_4

    :cond_4
    move-object v1, p0

    move-object v0, p2

    move-object p2, v3

    :goto_2
    if-eqz p2, :cond_b

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v3, v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez p1, :cond_8

    iget-object v3, v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iget-object v3, v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_9
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    goto :goto_3

    :cond_a
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_b
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-object v0
.end method

.method public final P(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_5

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->A(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_c

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, p1

    move-object p1, p2

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_8
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object v4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    :cond_a
    invoke-interface {v4, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionList$1;->label:I

    invoke-direct {p0, p2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_b
    move-object p1, v2

    :cond_c
    return-object p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final Q(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionListByResourceId$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionListByResourceId$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionListByResourceId$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionListByResourceId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionListByResourceId$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionListByResourceId$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionListByResourceId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionListByResourceId$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_e

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionListByResourceId$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez p2, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    return-object v5

    :cond_6
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_e

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCCollectionListByResourceId$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->A(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_9

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_d
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_e
    :goto_4
    return-object v5

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    return-object p1
.end method

.method public final R(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCVideoDownloadBean$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCVideoDownloadBean$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCVideoDownloadBean$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCVideoDownloadBean$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCVideoDownloadBean$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCVideoDownloadBean$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCVideoDownloadBean$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCVideoDownloadBean$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_9

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getUGCVideoDownloadBean$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->k(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v3, p1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p2

    goto :goto_4

    :cond_9
    :goto_2
    return-object v3

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-object v3
.end method

.method public final S(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    const-string v0, "ugcVideoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    return-object p1
.end method

.method public final T(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$insert$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$insert$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$insert$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$insert$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$insert$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$insert$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$insert$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$insert$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p2

    const/4 v2, 0x7

    if-ne p2, v2, :cond_3

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_6

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$insert$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->v(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final X(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g:Ljava/lang/String;

    return-void
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h:Ljava/lang/String;

    return-void
.end method

.method public final Z(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i:I

    return-void
.end method

.method public final b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result p2

    const/4 v2, 0x7

    if-ne p2, v2, :cond_4

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/SubtitleBean;

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->L()Llj/v0;

    move-result-object v5

    if-eqz v5, :cond_6

    iput-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->label:I

    invoke-interface {v5, v2, v0}, Llj/v0;->a(Lcom/transsion/baselib/db/download/SubtitleBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v2, p2

    :goto_2
    move-object p2, v2

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$update$1;->label:I

    invoke-interface {p1, p2, v0}, Llj/c;->z(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final c0(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateDuration$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateDuration$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateDuration$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateDuration$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateDuration$1;

    invoke-direct {v0, p0, p4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateDuration$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateDuration$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateDuration$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p4, :cond_3

    invoke-static {p2, p3}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p4

    if-eqz p4, :cond_4

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateDuration$1;->label:I

    invoke-interface {p4, p1, p2, p3, v0}, Llj/c;->D(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final d0(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    instance-of v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;

    iget v3, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;

    invoke-direct {v2, v1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v7, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->J$0:J

    iget-object v4, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_3
    iget-wide v8, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->J$0:J

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object v0

    if-eqz v0, :cond_6

    move-wide/from16 v9, p3

    iput-wide v9, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->J$0:J

    iput v8, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->label:I

    move-object/from16 v4, p1

    move/from16 v8, p2

    invoke-interface {v0, v4, v8, v2}, Llj/c;->B(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    return-object v3

    :cond_5
    move-wide v8, v9

    :goto_1
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    goto :goto_2

    :cond_6
    move-wide/from16 v9, p3

    move-wide v8, v9

    const/4 v0, 0x0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    if-eqz v0, :cond_a

    iget-object v4, v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v8, v9}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    invoke-virtual {v4, v14, v15}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPlayTimeStamp(J)V

    :cond_7
    new-instance v4, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    const-string v10, ""

    :cond_8
    move-object v11, v10

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v10

    const-wide/16 v12, 0x0

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_3

    :cond_9
    move-wide/from16 v16, v12

    :goto_3
    const/16 v18, 0x10

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v10, v4

    move-wide v5, v12

    move-wide v12, v8

    move-wide/from16 v22, v14

    move-wide/from16 v14, v16

    move/from16 v16, v20

    move/from16 v17, v21

    invoke-direct/range {v10 .. v19}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;-><init>(Ljava/lang/String;JJZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v10, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v11, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v10, v11}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v10

    check-cast v10, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v11, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getName(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v4, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_4

    :cond_a
    move-wide/from16 v22, v14

    :goto_4
    if-eqz v0, :cond_b

    invoke-virtual {v0, v8, v9}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    :cond_b
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object v0

    if-eqz v0, :cond_d

    iput-object v4, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->L$0:Ljava/lang/Object;

    iput-wide v8, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->J$0:J

    iput v7, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->label:I

    move-wide/from16 v5, v22

    invoke-interface {v0, v4, v5, v6, v2}, Llj/c;->x(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    return-object v3

    :cond_c
    move-wide v7, v8

    :goto_5
    move-wide v8, v7

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->L$0:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v2, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$3;->label:I

    invoke-interface {v0, v4, v8, v9, v2}, Llj/c;->t(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_e

    return-object v3

    :cond_e
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final e0(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$1;

    invoke-direct {v0, p0, p4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p4, :cond_3

    invoke-virtual {p4, p2, p3}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p4

    if-eqz p4, :cond_4

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateReadProgress$1;->label:I

    invoke-interface {p4, p1, p2, p3, v0}, Llj/c;->t(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final f0(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateStatus$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateStatus$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateStatus$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateStatus$1;

    invoke-direct {v0, p0, p3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateStatus$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateStatus$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateStatus$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p3, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setStatus(I)V

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p3

    if-eqz p3, :cond_4

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateStatus$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Llj/c;->c(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Llj/b;->a:Llj/b$a;

    invoke-virtual {v1}, Llj/b$a;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "builtIn"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public final g0(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubjectIfo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubjectIfo$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubjectIfo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubjectIfo$1;->label:I

    :goto_0
    move-object v10, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubjectIfo$1;

    invoke-direct {v0, p0, p3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubjectIfo$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object p3, v10, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubjectIfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, v10, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubjectIfo$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p3, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestrictLevel(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setReleaseDate(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setCountryName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeNum(Ljava/lang/Integer;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setGenre(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitles(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setImdbRate(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getReleaseDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSeNum()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubtitles()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Lcom/transsion/moviedetailapi/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v9

    iput v2, v10, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubjectIfo$1;->label:I

    move-object v2, p1

    invoke-interface/range {v1 .. v10}, Llj/c;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final h()Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Llj/b;->a:Llj/b$a;

    invoke-virtual {v1}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public final h0(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubtitleSelectId$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubtitleSelectId$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubtitleSelectId$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubtitleSelectId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubtitleSelectId$1;

    invoke-direct {v0, p0, p3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubtitleSelectId$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubtitleSelectId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubtitleSelectId$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p3, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleSelectId(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p3

    if-eqz p3, :cond_4

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateSubtitleSelectId$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Llj/c;->b(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final i()V
    .locals 8

    sget-object v0, Llj/b;->a:Llj/b$a;

    invoke-virtual {v0}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "download_root_path"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v4, "download_root_path_name"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(...)"

    if-nez v3, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget v5, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_moviebox_folder:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v5, "download_root_path_type"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v5, Lcom/transsnet/downloader/util/DownloadUtil;->a:Lcom/transsnet/downloader/util/DownloadUtil;

    invoke-virtual {v5}, Lcom/transsnet/downloader/util/DownloadUtil;->D()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_moviebox_folder:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g:Ljava/lang/String;

    iput v6, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i:I

    return-void

    :cond_1
    iput-object v3, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h:Ljava/lang/String;

    iput v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i:I

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move-object v2, v0

    :cond_3
    iput-object v2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v3, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "path error, path = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DownloadEsHelper"

    invoke-virtual {v2, v3, v1, v6}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsnet/downloader/R$string;->str_download_dialog_path_moviebox_folder:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g:Ljava/lang/String;

    iput v6, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i:I

    :cond_4
    :goto_0
    return-void
.end method

.method public final i0(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateWH$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateWH$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateWH$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateWH$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateWH$1;

    invoke-direct {v0, p0, p4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateWH$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateWH$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateWH$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p4, :cond_3

    invoke-virtual {p4, p2}, Lcom/transsion/baselib/db/download/DownloadBean;->setVideoWidth(I)V

    invoke-virtual {p4, p3}, Lcom/transsion/baselib/db/download/DownloadBean;->setVideoHeight(I)V

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p4

    if-eqz p4, :cond_4

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$updateWH$1;->label:I

    invoke-interface {p4, p1, p2, p3, v0}, Llj/c;->j(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteByUrl$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteByUrl$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteByUrl$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteByUrl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteByUrl$1;

    invoke-direct {v0, p0, p3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteByUrl$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteByUrl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteByUrl$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    iget-object p3, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_4

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteByUrl$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->o(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;

    invoke-direct {v0, p0, p4}, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    iget-object p4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p2, :cond_5

    iget-object p4, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    :cond_5
    if-eqz p3, :cond_6

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->L()Llj/v0;

    move-result-object p2

    if-eqz p2, :cond_6

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;->label:I

    invoke-interface {p2, p3, v0}, Llj/v0;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_7

    const/4 p3, 0x0

    iput-object p3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteItem$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final m(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    :try_start_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$deleteTransferReceived$1;->label:I

    invoke-interface {v2, p2, v0}, Llj/c;->n(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_4
    invoke-static {p2}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    :try_start_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final o(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadBySubjectId$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadBySubjectId$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadBySubjectId$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadBySubjectId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadBySubjectId$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadBySubjectId$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadBySubjectId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadBySubjectId$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object v2

    if-eqz v2, :cond_4

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadBySubjectId$1;->label:I

    invoke-interface {v2, p1, v0}, Llj/c;->q(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_9

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    goto :goto_2

    :cond_9
    return-object p1
.end method

.method public final p(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_6

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->f(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    goto :goto_2

    :cond_6
    move-object p2, v3

    :goto_2
    if-eqz p2, :cond_7

    iget-object v2, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object p1, p2

    :goto_3
    if-eqz p1, :cond_8

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$findDownloadedByResourceId$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    return-object p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method public final q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 1

    const-string v0, "resourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final s()Ljava/io/File;
    .locals 2

    invoke-virtual {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Llj/b;->a:Llj/b$a;

    invoke-virtual {v1}, Llj/b$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i:I

    return v0
.end method

.method public final v(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;

    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p2

    if-eqz p2, :cond_5

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->label:I

    invoke-interface {p2, p1, v0}, Llj/c;->H(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_b

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v4, p1

    move-object p1, p2

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_7
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_8
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_a
    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    iput-object v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisode$1;->label:I

    invoke-direct {p0, p2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_b
    return-object v2

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final w(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;

    invoke-direct {v0, p0, p3}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;->I$0:I

    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p3

    if-eqz p3, :cond_9

    iput-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;->I$0:I

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getEpisodeBean$1;->label:I

    invoke-interface {p3, p1, p2, v0}, Llj/c;->h(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v3, p1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_8

    invoke-virtual {p3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    :cond_8
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p3

    goto :goto_4

    :cond_9
    :goto_2
    return-object v3

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-object v3
.end method

.method public final x(Ljava/lang/String;I)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 2

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    return-object p1
.end method

.method public final y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;

    invoke-direct {v0, p0, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p1

    if-eqz p1, :cond_5

    iput v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;->label:I

    invoke-interface {p1, v0}, Llj/c;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_f

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, v2

    move-object v2, p1

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_7
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_8
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-direct {p0, v5, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->V(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_b
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-direct {p0, v5, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->W(Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_c
    iget-object v5, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    :cond_d
    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    iput-object v4, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getFailedDownload$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->j(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_e
    move-object v2, v4

    :cond_f
    return-object v2

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public final z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/transsnet/downloader/manager/DownloadEsHelper$getLatestDownloadVideo$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getLatestDownloadVideo$1;

    iget v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getLatestDownloadVideo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getLatestDownloadVideo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getLatestDownloadVideo$1;

    invoke-direct {v0, p0, p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$getLatestDownloadVideo$1;-><init>(Lcom/transsnet/downloader/manager/DownloadEsHelper;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getLatestDownloadVideo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getLatestDownloadVideo$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->r()Llj/c;

    move-result-object p1

    if-eqz p1, :cond_4

    iput v3, v0, Lcom/transsnet/downloader/manager/DownloadEsHelper$getLatestDownloadVideo$1;->label:I

    invoke-interface {p1, v0}, Llj/c;->y(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    goto :goto_2

    :cond_4
    move-object p1, v4

    :goto_2
    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v4

    :cond_7
    :goto_3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v1, v4

    :cond_a
    :goto_4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    return-object p1

    :catchall_0
    return-object v4
.end method
