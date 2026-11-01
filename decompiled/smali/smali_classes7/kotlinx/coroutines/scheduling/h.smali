.class final Lkotlinx/coroutines/scheduling/h;
.super Lkotlinx/coroutines/i0;


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/h;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/h;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/h;->a:Lkotlinx/coroutines/scheduling/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    sget-object p1, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/e;->q(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p1, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/b;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, v0}, Lkotlinx/coroutines/scheduling/e;->q(Ljava/lang/Runnable;ZZ)V

    return-void
.end method

.method public limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/i0;
    .locals 1

    invoke-static {p1}, Lkotlinx/coroutines/internal/i;->a(I)V

    sget v0, Lkotlinx/coroutines/scheduling/g;->d:I

    if-lt p1, v0, :cond_0

    invoke-static {p0, p2}, Lkotlinx/coroutines/internal/i;->b(Lkotlinx/coroutines/i0;Ljava/lang/String;)Lkotlinx/coroutines/i0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/i0;->limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/i0;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
