.class public abstract Lkotlinx/coroutines/sync/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lkotlinx/coroutines/internal/z;

.field private static final b:Lkotlinx/coroutines/internal/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "NO_OWNER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/g;->a:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "ALREADY_LOCKED_BY_OWNER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/g;->b:Lkotlinx/coroutines/internal/z;

    return-void
.end method

.method public static final a(Z)Lkotlinx/coroutines/sync/a;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/sync/f;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/f;-><init>(Z)V

    return-object v0
.end method

.method public static synthetic b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/sync/g;->a(Z)Lkotlinx/coroutines/sync/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/z;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/sync/g;->a:Lkotlinx/coroutines/internal/z;

    return-object v0
.end method
