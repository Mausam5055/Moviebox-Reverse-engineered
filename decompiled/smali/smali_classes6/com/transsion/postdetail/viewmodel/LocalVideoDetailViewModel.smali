.class public final Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lkotlin/Lazy;

.field private c:Landroidx/lifecycle/b0;

.field private d:Landroidx/lifecycle/b0;

.field private e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    const-string v0, "LocalVideoViewModel"

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->a:Ljava/lang/String;

    new-instance v0, Lcom/transsion/postdetail/viewmodel/b;

    invoke-direct {v0}, Lcom/transsion/postdetail/viewmodel/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->b:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->f:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic b()Lqy/a;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->k()Lqy/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->a:Ljava/lang/String;

    return-object p0
.end method

.method private final j()Lqy/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method private static final k()Lqy/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lqy/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lnh/m;->a:Lnh/m;

    invoke-virtual {v1}, Lnh/m;->e()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->f:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->j()Lqy/a;

    move-result-object v0

    sget-object v1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lqy/a;->h(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$fetchMovieData$1;-><init>(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->f:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final g()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final h(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method
