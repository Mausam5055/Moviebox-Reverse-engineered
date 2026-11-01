.class public final Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->k:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsion/shorttv/viewmodel/a;

    invoke-direct {v0}, Lcom/transsion/shorttv/viewmodel/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/shorttv/viewmodel/b;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/viewmodel/b;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->b:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->d:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->e:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->f:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->g:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->h:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->j:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic b(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->f(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Los/a;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->u()Los/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->h()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Los/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->k()Los/a;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 7

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p0, Lcom/transsion/shorttv/db/ShortTvDatabase;->p:Lcom/transsion/shorttv/db/ShortTvDatabase$b;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/transsion/shorttv/db/ShortTvDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/shorttv/db/ShortTvDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/shorttv/db/ShortTvDatabase;->j0()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adUnlockDao init failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTvDownload"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    return-object p0
.end method

.method private final h()Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;

    return-object v0
.end method

.method private final k()Los/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Los/a;

    return-object v0
.end method

.method public static synthetic o(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method private static final u()Los/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Los/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Los/a;

    return-object v0
.end method


# virtual methods
.method public final g(Lcom/transsion/shorttv/bean/Subject;)V
    .locals 11

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv/bean/ShortTVFavInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v2

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v6

    new-instance v8, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$favorite$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$favorite$1;-><init>(Lcom/transsion/shorttv/bean/Subject;ZLcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Lcom/transsion/shorttv/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 p1, 0x0

    const/4 v7, 0x0

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;II)V
    .locals 9

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getEpisodeList$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;IILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->j:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->h:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final n(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, p2, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$getShortTvInfo$1;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;ZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final p()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final q()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final r()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final s(I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv/bean/Subject;->setPaid(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final t(Ljava/lang/String;)V
    .locals 14

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v7

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will saveAdUnlockedEps, eps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "ShortTvDownload"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->getAdUnlockedEps()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v8

    new-instance v11, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$saveAdUnlockedEps$1;

    invoke-direct {v11, p1, v0, p0, v7}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$saveAdUnlockedEps$1;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_3
    :goto_1
    return-void
.end method

.method public final v(Ljs/d;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    invoke-virtual {p1}, Ljs/d;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljs/d;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljs/d;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p0, p1, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel$startDownloadResource$1;-><init>(Ljava/util/List;Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    return-void
.end method
