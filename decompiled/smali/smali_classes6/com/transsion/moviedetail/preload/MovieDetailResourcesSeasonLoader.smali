.class public final Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;
.super Lqm/b;


# instance fields
.field private f:Ljava/lang/String;

.field private final g:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lqm/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;->f:Ljava/lang/String;

    new-instance p1, Lcom/transsion/moviedetail/preload/e;

    invoke-direct {p1}, Lcom/transsion/moviedetail/preload/e;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;->g:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic k()Lqy/a;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;->o()Lqy/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic l(Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;)Lqy/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;->m()Lqy/a;

    move-result-object p0

    return-object p0
.end method

.method private final m()Lqy/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method private static final o()Lqy/a;
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
.method public h(Landroidx/lifecycle/b0;)V
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader$loadDataFromService$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader$loadDataFromService$1;-><init>(Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqm/b;->j(Lkotlinx/coroutines/t1;)V

    return-void
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;->f:Ljava/lang/String;

    return-void
.end method
