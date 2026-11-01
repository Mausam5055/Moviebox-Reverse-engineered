.class public abstract Lkotlinx/coroutines/sync/k;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static final b:Lkotlinx/coroutines/internal/z;

.field private static final c:Lkotlinx/coroutines/internal/z;

.field private static final d:Lkotlinx/coroutines/internal/z;

.field private static final e:Lkotlinx/coroutines/internal/z;

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v4, 0xc

    const/4 v5, 0x0

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/internal/a0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/sync/k;->a:I

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "PERMIT"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/k;->b:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/k;->c:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/k;->d:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/k;->e:Lkotlinx/coroutines/internal/z;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/a0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/sync/k;->f:I

    return-void
.end method

.method public static final a(II)Lkotlinx/coroutines/sync/h;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/sync/j;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/sync/j;-><init>(II)V

    return-object v0
.end method

.method public static synthetic b(IIILjava/lang/Object;)Lkotlinx/coroutines/sync/h;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/sync/k;->a(II)Lkotlinx/coroutines/sync/h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(JLkotlinx/coroutines/sync/l;)Lkotlinx/coroutines/sync/l;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/sync/k;->j(JLkotlinx/coroutines/sync/l;)Lkotlinx/coroutines/sync/l;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/internal/z;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/k;->d:Lkotlinx/coroutines/internal/z;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/z;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/k;->e:Lkotlinx/coroutines/internal/z;

    return-object v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, Lkotlinx/coroutines/sync/k;->a:I

    return v0
.end method

.method public static final synthetic g()Lkotlinx/coroutines/internal/z;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/k;->b:Lkotlinx/coroutines/internal/z;

    return-object v0
.end method

.method public static final synthetic h()I
    .locals 1

    sget v0, Lkotlinx/coroutines/sync/k;->f:I

    return v0
.end method

.method public static final synthetic i()Lkotlinx/coroutines/internal/z;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/k;->c:Lkotlinx/coroutines/internal/z;

    return-object v0
.end method

.method private static final j(JLkotlinx/coroutines/sync/l;)Lkotlinx/coroutines/sync/l;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/sync/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lkotlinx/coroutines/sync/l;-><init>(JLkotlinx/coroutines/sync/l;I)V

    return-object v0
.end method
