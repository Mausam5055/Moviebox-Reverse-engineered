.class public final Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

.field private e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    const-string v0, "PostDetailViewModel"

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->a:Ljava/lang/String;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/d;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->b:Lkotlin/Lazy;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/postdetail/viewmodel/e;

    invoke-direct {v1}, Lcom/transsion/postdetail/viewmodel/e;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/f;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->f:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/g;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->g:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/h;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->h:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/i;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/i;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->i:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/j;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/j;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->j:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/k;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/k;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->k:Lkotlin/Lazy;

    return-void
.end method

.method private final D()Lxo/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method

.method private static final E()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final H()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final I()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final J()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final K()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final L()Lxo/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lxo/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->H()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lkn/a;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->p()Lkn/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Lxo/b;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->L()Lxo/b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->K()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->I()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->E()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->J()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic j(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Lkn/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->s()Lkn/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->w()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->z()Landroidx/lifecycle/b0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Lxo/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->D()Lxo/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;)Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->d:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    return-object p0
.end method

.method private static final p()Lkn/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lkn/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkn/a;

    return-object v0
.end method

.method private static final q()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final s()Lkn/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkn/a;

    return-object v0
.end method

.method private final w()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->h:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method private final z()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method


# virtual methods
.method public final A()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->z()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final B()Lcom/transsion/moviedetailapi/bean/PostSubjectBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lqm/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final C()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final F(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v1, Lqm/e;->a:Lqm/e;

    invoke-virtual {v1, p1}, Lqm/e;->a(I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lqm/b;

    instance-of v3, v3, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    check-cast v2, Lqm/b;

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    check-cast v2, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    if-nez v2, :cond_4

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    const/4 v1, 0x1

    invoke-direct {v2, v0, v1, v0}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_4
    iput-object v2, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->d:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lqm/b;

    instance-of v2, v2, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    if-eqz v2, :cond_5

    move-object v0, v1

    :cond_6
    check-cast v0, Lqm/b;

    :cond_7
    check-cast v0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    if-nez v0, :cond_8

    new-instance v0, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_8
    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    return-void
.end method

.method public G(Ljava/lang/String;I)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$like$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p2, p0, v1}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$like$1;-><init>(Ljava/lang/String;ILcom/transsion/postdetail/viewmodel/PostDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 7

    const-string v0, "postId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$deletePost$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$deletePost$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final t()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final u(Ljava/lang/String;ILjava/lang/String;IZI)V
    .locals 6

    const-string p2, "postId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nextPage"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p5, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getImmVideoList$1;-><init>(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void

    :cond_0
    iget-object p2, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->u(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->s(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p4}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;->t(I)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->e:Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->w()Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lqm/b;->f(Landroidx/lifecycle/b0;)V

    :cond_4
    return-void
.end method

.method public final v()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->w()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final x(Ljava/lang/String;)V
    .locals 7

    const-string v0, "postId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getPostDetail$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel$getPostDetail$1;-><init>(Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final y()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method
