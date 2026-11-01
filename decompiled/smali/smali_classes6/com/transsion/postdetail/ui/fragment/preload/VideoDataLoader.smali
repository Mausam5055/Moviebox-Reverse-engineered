.class public final Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;
.super Lqm/b;


# instance fields
.field private f:Ljava/lang/String;

.field private final g:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "postId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lqm/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->f:Ljava/lang/String;

    new-instance p1, Lcom/transsion/postdetail/ui/fragment/preload/b;

    invoke-direct {p1}, Lcom/transsion/postdetail/ui/fragment/preload/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->g:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic k()Lxo/b;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->o()Lxo/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic l(Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;)Lxo/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->n()Lxo/b;

    move-result-object p0

    return-object p0
.end method

.method private final n()Lxo/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method

.method private static final o()Lxo/b;
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


# virtual methods
.method public h(Landroidx/lifecycle/b0;)V
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1;-><init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqm/b;->j(Lkotlinx/coroutines/t1;)V

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->f:Ljava/lang/String;

    return-void
.end method
