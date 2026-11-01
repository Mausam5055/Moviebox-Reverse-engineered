.class public final Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/postdetail/shorttv/viewmodel/a;

    invoke-direct {p1}, Lcom/transsion/postdetail/shorttv/viewmodel/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->b:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/postdetail/shorttv/viewmodel/b;

    invoke-direct {p1}, Lcom/transsion/postdetail/shorttv/viewmodel/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->c:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->d:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->e:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->f:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->g:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->h:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->i:Landroidx/lifecycle/b0;

    new-instance p1, Lcom/transsion/postdetail/shorttv/viewmodel/c;

    invoke-direct {p1}, Lcom/transsion/postdetail/shorttv/viewmodel/c;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->j:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->n()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lkotlinx/coroutines/n0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->g()Lkotlinx/coroutines/n0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Lxo/b;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->m()Lxo/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;)Lxo/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->k()Lxo/b;

    move-result-object p0

    return-object p0
.end method

.method private static final g()Lkotlinx/coroutines/n0;
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    return-object v0
.end method

.method private final k()Lxo/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method

.method private static final m()Lxo/b;
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

.method private static final n()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->x1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;->i:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l(Ljava/lang/String;IZ)V
    .locals 8

    const-string v0, "nextPage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel$getShortTVFavoriteList$1;-><init>(Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;Ljava/lang/String;IZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
