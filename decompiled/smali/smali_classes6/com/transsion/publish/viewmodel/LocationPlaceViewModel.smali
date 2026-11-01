.class public final Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsion/publish/viewmodel/a;

    invoke-direct {v0}, Lcom/transsion/publish/viewmodel/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/publish/viewmodel/b;

    invoke-direct {v0}, Lcom/transsion/publish/viewmodel/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->b:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->c:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->d:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic b()Llp/a;
    .locals 1

    invoke-static {}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->q()Llp/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/baselib/db/place/PlaceDao;
    .locals 1

    invoke-static {}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->p()Lcom/transsion/baselib/db/place/PlaceDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->d:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->c:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Lcom/transsion/baselib/db/place/PlaceDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->m()Lcom/transsion/baselib/db/place/PlaceDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Llp/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->n()Llp/a;

    move-result-object p0

    return-object p0
.end method

.method private final m()Lcom/transsion/baselib/db/place/PlaceDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/place/PlaceDao;

    return-object v0
.end method

.method private final n()Llp/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llp/a;

    return-object v0
.end method

.method private static final p()Lcom/transsion/baselib/db/place/PlaceDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->u1()Lcom/transsion/baselib/db/place/PlaceDao;

    move-result-object v0

    return-object v0
.end method

.method private static final q()Llp/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Llp/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llp/a;

    return-object v0
.end method


# virtual methods
.method public final h()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$clearCache$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$clearCache$1;-><init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final i()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getCache$1;-><init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final k(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1;-><init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Ljava/lang/Double;Ljava/lang/Double;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final o(Ljava/util/List;)V
    .locals 7

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$insertCache$1;-><init>(Ljava/util/List;Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
