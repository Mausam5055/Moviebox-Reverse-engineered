.class public final Lcom/transsion/commercialization/aha/GameRecommendViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Lkotlin/Lazy;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->a:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/transsion/commercialization/aha/h;

    invoke-direct {v0}, Lcom/transsion/commercialization/aha/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic b()Lcom/transsion/commercialization/aha/g;
    .locals 1

    invoke-static {}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->l()Lcom/transsion/commercialization/aha/g;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->a:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->c:I

    return p0
.end method

.method public static final synthetic f(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Lcom/transsion/commercialization/aha/g;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->k()Lcom/transsion/commercialization/aha/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/commercialization/aha/GameRecommendViewModel;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->c:I

    return-void
.end method

.method private final j()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final k()Lcom/transsion/commercialization/aha/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/aha/g;

    return-object v0
.end method

.method private static final l()Lcom/transsion/commercialization/aha/g;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/commercialization/aha/g;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercialization/aha/g;

    return-object v0
.end method


# virtual methods
.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->a:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final i()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;-><init>(Lcom/transsion/commercialization/aha/GameRecommendViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
