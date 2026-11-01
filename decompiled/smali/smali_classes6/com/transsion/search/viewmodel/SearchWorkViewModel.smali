.class public final Lcom/transsion/search/viewmodel/SearchWorkViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private a:Z

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Ljava/util/List;

.field private final d:Lkotlin/Lazy;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->a:Z

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->b:Landroidx/lifecycle/b0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->c:Ljava/util/List;

    new-instance v0, Lcom/transsion/search/viewmodel/c;

    invoke-direct {v0}, Lcom/transsion/search/viewmodel/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->d:Lkotlin/Lazy;

    const/16 v0, 0x32

    iput v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->f:I

    return-void
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->n()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->c:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->f:I

    return p0
.end method

.method public static final synthetic e(Lcom/transsion/search/viewmodel/SearchWorkViewModel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->j()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/search/viewmodel/SearchWorkViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->a:Z

    return-void
.end method

.method private final j()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    return-object v0
.end method

.method public static synthetic l(Lcom/transsion/search/viewmodel/SearchWorkViewModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->k(Z)V

    return-void
.end method

.method private static final n()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->D1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->a:Z

    return v0
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->e:I

    return v0
.end method

.method public final k(Z)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsion/search/viewmodel/SearchWorkViewModel$getVideoHistoryList$1;-><init>(ZLcom/transsion/search/viewmodel/SearchWorkViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/search/viewmodel/SearchWorkViewModel;->e:I

    return-void
.end method
