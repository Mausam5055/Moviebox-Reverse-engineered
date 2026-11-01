.class public abstract Landroidx/work/i0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;

.field private b:Z

.field private c:Ljava/util/UUID;

.field private d:Landroidx/work/impl/model/j0;

.field private final e:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 4

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/i0$a;->a:Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, "randomUUID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/i0$a;->c:Ljava/util/UUID;

    new-instance v0, Landroidx/work/impl/model/j0;

    iget-object v1, p0, Landroidx/work/i0$a;->c:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/model/j0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/i0$a;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/work/i0$a;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/i0$a;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/work/i0$a;->g()Landroidx/work/i0$a;

    move-result-object p1

    return-object p1
.end method

.method public final b()Landroidx/work/i0;
    .locals 7

    invoke-virtual {p0}, Landroidx/work/i0$a;->c()Landroidx/work/i0;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    iget-object v1, v1, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Landroidx/work/d;->g()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1}, Landroidx/work/d;->h()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroidx/work/d;->i()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroidx/work/d;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    iget-boolean v3, v2, Landroidx/work/impl/model/j0;->q:Z

    if-eqz v3, :cond_5

    if-nez v1, :cond_4

    iget-wide v3, v2, Landroidx/work/impl/model/j0;->g:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs cannot be delayed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroidx/work/impl/model/j0;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    sget-object v2, Landroidx/work/i0;->d:Landroidx/work/i0$b;

    iget-object v3, v1, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/work/i0$b;->a(Landroidx/work/i0$b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/work/impl/model/j0;->t(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_7

    iget-object v2, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    invoke-static {v1, v3}, Lkotlin/text/StringsKt;->y1(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/work/impl/model/j0;->t(Ljava/lang/String;)V

    :cond_7
    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/work/i0$a;->j(Ljava/util/UUID;)Landroidx/work/i0$a;

    return-object v0
.end method

.method public abstract c()Landroidx/work/i0;
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/work/i0$a;->b:Z

    return v0
.end method

.method public final e()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Landroidx/work/i0$a;->c:Ljava/util/UUID;

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/work/i0$a;->e:Ljava/util/Set;

    return-object v0
.end method

.method public abstract g()Landroidx/work/i0$a;
.end method

.method public final h()Landroidx/work/impl/model/j0;
    .locals 1

    iget-object v0, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    return-object v0
.end method

.method public final i(Landroidx/work/d;)Landroidx/work/i0$a;
    .locals 1

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    iput-object p1, v0, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    invoke-virtual {p0}, Landroidx/work/i0$a;->g()Landroidx/work/i0$a;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/util/UUID;)Landroidx/work/i0$a;
    .locals 2

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/i0$a;->c:Ljava/util/UUID;

    new-instance v0, Landroidx/work/impl/model/j0;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "toString(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    invoke-direct {v0, p1, v1}, Landroidx/work/impl/model/j0;-><init>(Ljava/lang/String;Landroidx/work/impl/model/j0;)V

    iput-object v0, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    invoke-virtual {p0}, Landroidx/work/i0$a;->g()Landroidx/work/i0$a;

    move-result-object p1

    return-object p1
.end method

.method public k(JLjava/util/concurrent/TimeUnit;)Landroidx/work/i0$a;
    .locals 2

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/work/impl/model/j0;->g:J

    const-wide p1, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object p3, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    iget-wide v0, p3, Landroidx/work/impl/model/j0;->g:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/work/i0$a;->g()Landroidx/work/i0$a;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Landroidx/work/f;)Landroidx/work/i0$a;
    .locals 1

    const-string v0, "inputData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/i0$a;->d:Landroidx/work/impl/model/j0;

    iput-object p1, v0, Landroidx/work/impl/model/j0;->e:Landroidx/work/f;

    invoke-virtual {p0}, Landroidx/work/i0$a;->g()Landroidx/work/i0$a;

    move-result-object p1

    return-object p1
.end method
