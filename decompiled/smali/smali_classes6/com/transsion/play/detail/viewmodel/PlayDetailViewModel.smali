.class public final Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/play/detail/viewmodel/a;

    invoke-direct {v1}, Lcom/transsion/play/detail/viewmodel/a;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->b:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic b()Lwn/a;
    .locals 1

    invoke-static {}, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->h()Lwn/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;)Lwn/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->e()Lwn/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->b:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final e()Lwn/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn/a;

    return-object v0
.end method

.method private static final h()Lwn/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lwn/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn/a;

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/String;)V
    .locals 7

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel$getSubjectPostCount$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel$getSubjectPostCount$1;-><init>(Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final g()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/play/detail/viewmodel/PlayDetailViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method
