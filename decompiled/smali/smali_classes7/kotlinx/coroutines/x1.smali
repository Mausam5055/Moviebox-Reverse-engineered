.class public abstract Lkotlinx/coroutines/x1;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lkotlinx/coroutines/internal/z;

.field public static final b:Lkotlinx/coroutines/internal/z;

.field private static final c:Lkotlinx/coroutines/internal/z;

.field private static final d:Lkotlinx/coroutines/internal/z;

.field private static final e:Lkotlinx/coroutines/internal/z;

.field private static final f:Lkotlinx/coroutines/d1;

.field private static final g:Lkotlinx/coroutines/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/x1;->a:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/x1;->b:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/x1;->c:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/x1;->d:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/x1;->e:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/d1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/d1;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/x1;->f:Lkotlinx/coroutines/d1;

    new-instance v0, Lkotlinx/coroutines/d1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/d1;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/x1;->g:Lkotlinx/coroutines/d1;

    return-void
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/z;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/x1;->a:Lkotlinx/coroutines/internal/z;

    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/z;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/x1;->c:Lkotlinx/coroutines/internal/z;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/d1;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/x1;->g:Lkotlinx/coroutines/d1;

    return-object v0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/d1;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/x1;->f:Lkotlinx/coroutines/d1;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/z;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/x1;->e:Lkotlinx/coroutines/internal/z;

    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/internal/z;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/x1;->d:Lkotlinx/coroutines/internal/z;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/p1;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/q1;

    check-cast p0, Lkotlinx/coroutines/p1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/q1;-><init>(Lkotlinx/coroutines/p1;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/q1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/q1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lkotlinx/coroutines/q1;->a:Lkotlinx/coroutines/p1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
