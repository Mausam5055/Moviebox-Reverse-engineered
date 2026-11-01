.class public final Lkotlinx/coroutines/scheduling/b;
.super Lkotlinx/coroutines/scheduling/e;


# static fields
.field public static final g:Lkotlinx/coroutines/scheduling/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/scheduling/b;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    sget v1, Lkotlinx/coroutines/scheduling/g;->c:I

    sget v2, Lkotlinx/coroutines/scheduling/g;->d:I

    sget-wide v3, Lkotlinx/coroutines/scheduling/g;->e:J

    sget-object v5, Lkotlinx/coroutines/scheduling/g;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/e;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/i0;
    .locals 1

    invoke-static {p1}, Lkotlinx/coroutines/internal/i;->a(I)V

    sget v0, Lkotlinx/coroutines/scheduling/g;->c:I

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

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
