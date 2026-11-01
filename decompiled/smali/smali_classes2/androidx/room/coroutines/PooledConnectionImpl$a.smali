.class final Landroidx/room/coroutines/PooledConnectionImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Lz3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/PooledConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lz3/e;

.field private final b:J

.field final synthetic c:Landroidx/room/coroutines/PooledConnectionImpl;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/PooledConnectionImpl;Lz3/e;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-static {}, Lx3/d;->b()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    return-void
.end method


# virtual methods
.method public A0()Z
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0}, Lz3/e;->A0()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Attempted to use statement on a different thread"

    invoke-static {v1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "Statement is recycled"

    invoke-static {v1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public a(ID)V
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1, p2, p3}, Lz3/e;->a(ID)V

    return-void

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public c(IJ)V
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1, p2, p3}, Lz3/e;->c(IJ)V

    return-void

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0}, Lz3/e;->close()V

    return-void

    :cond_0
    const-string v0, "Attempted to use statement on a different thread"

    invoke-static {v1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "Statement is recycled"

    invoke-static {v1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public e(I[B)V
    .locals 6

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1, p2}, Lz3/e;->e(I[B)V

    return-void

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public g(I)V
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1}, Lz3/e;->g(I)V

    return-void

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getBlob(I)[B
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1}, Lz3/e;->getBlob(I)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public synthetic getBoolean(I)Z
    .locals 0

    invoke-static {p0, p1}, Lz3/d;->a(Lz3/e;I)Z

    move-result p1

    return p1
.end method

.method public getColumnCount()I
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0}, Lz3/e;->getColumnCount()I

    move-result v0

    return v0

    :cond_0
    const-string v0, "Attempted to use statement on a different thread"

    invoke-static {v1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "Statement is recycled"

    invoke-static {v1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1}, Lz3/e;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getDouble(I)D
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1}, Lz3/e;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getLong(I)J
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1}, Lz3/e;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public isNull(I)Z
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1}, Lz3/e;->isNull(I)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public j(ILjava/lang/String;)V
    .locals 6

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1, p2}, Lz3/e;->j(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public n0(I)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0, p1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Attempted to use statement on a different thread"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "Statement is recycled"

    invoke-static {v1, p1}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public reset()V
    .locals 6

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->c:Landroidx/room/coroutines/PooledConnectionImpl;

    invoke-static {v0}, Landroidx/room/coroutines/PooledConnectionImpl;->g(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    iget-wide v2, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->b:J

    invoke-static {}, Lx3/d;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl$a;->a:Lz3/e;

    invoke-interface {v0}, Lz3/e;->reset()V

    return-void

    :cond_0
    const-string v0, "Attempted to use statement on a different thread"

    invoke-static {v1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "Statement is recycled"

    invoke-static {v1, v0}, Lz3/a;->b(ILjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method
