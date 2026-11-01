.class final Landroidx/compose/foundation/lazy/layout/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/f0;
.implements Landroidx/compose/ui/layout/f0$a;
.implements Landroidx/compose/foundation/lazy/layout/w$a;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroidx/compose/foundation/lazy/layout/w;

.field private final c:Landroidx/compose/runtime/e1;

.field private final d:Landroidx/compose/runtime/e1;

.field private final e:Landroidx/compose/runtime/i1;

.field private final f:Landroidx/compose/runtime/i1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/w;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/v;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/v;->b:Landroidx/compose/foundation/lazy/layout/w;

    const/4 p1, -0x1

    invoke-static {p1}, Landroidx/compose/runtime/n2;->a(I)Landroidx/compose/runtime/e1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/v;->c:Landroidx/compose/runtime/e1;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/n2;->a(I)Landroidx/compose/runtime/e1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/v;->d:Landroidx/compose/runtime/e1;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->e:Landroidx/compose/runtime/i1;

    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/v;->f:Landroidx/compose/runtime/i1;

    return-void
.end method

.method private final b()Landroidx/compose/ui/layout/f0$a;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->e:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/f0$a;

    return-object v0
.end method

.method private final d()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->d:Landroidx/compose/runtime/e1;

    invoke-interface {v0}, Landroidx/compose/runtime/n0;->getIntValue()I

    move-result v0

    return v0
.end method

.method private final e()Landroidx/compose/ui/layout/f0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->f:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/f0;

    return-object v0
.end method

.method private final h(Landroidx/compose/ui/layout/f0$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->e:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final j(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->d:Landroidx/compose/runtime/e1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/e1;->setIntValue(I)V

    return-void
.end method

.method private final k(Landroidx/compose/ui/layout/f0;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->f:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/compose/ui/layout/f0$a;
    .locals 1

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->b:Landroidx/compose/foundation/lazy/layout/w;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/layout/w;->j(Landroidx/compose/foundation/lazy/layout/w$a;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/v;->c()Landroidx/compose/ui/layout/f0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/f0;->a()Landroidx/compose/ui/layout/f0$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/v;->h(Landroidx/compose/ui/layout/f0$a;)V

    :cond_1
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/v;->j(I)V

    return-object p0
.end method

.method public final c()Landroidx/compose/ui/layout/f0;
    .locals 1

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->e()Landroidx/compose/ui/layout/f0;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/v;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->c:Landroidx/compose/runtime/e1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/e1;->setIntValue(I)V

    return-void
.end method

.method public getIndex()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->c:Landroidx/compose/runtime/e1;

    invoke-interface {v0}, Landroidx/compose/runtime/n0;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Landroidx/compose/ui/layout/f0;)V
    .locals 6

    sget-object v0, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/j$a;->d()Landroidx/compose/runtime/snapshots/j;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/j$a;->f(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/j;

    move-result-object v4

    :try_start_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->e()Landroidx/compose/ui/layout/f0;

    move-result-object v5

    if-eq p1, v5, :cond_3

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/layout/v;->k(Landroidx/compose/ui/layout/f0;)V

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    move-result v5

    if-lez v5, :cond_3

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->b()Landroidx/compose/ui/layout/f0$a;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroidx/compose/ui/layout/f0$a;->release()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/layout/f0;->a()Landroidx/compose/ui/layout/f0$a;

    move-result-object v2

    :cond_2
    invoke-direct {p0, v2}, Landroidx/compose/foundation/lazy/layout/v;->h(Landroidx/compose/ui/layout/f0$a;)V

    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1, v4, v3}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    return-void

    :goto_2
    invoke-virtual {v0, v1, v4, v3}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    throw p1
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/v;->j(I)V

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->d()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/v;->b:Landroidx/compose/foundation/lazy/layout/w;

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/layout/w;->l(Landroidx/compose/foundation/lazy/layout/w$a;)V

    invoke-direct {p0}, Landroidx/compose/foundation/lazy/layout/v;->b()Landroidx/compose/ui/layout/f0$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/f0$a;->release()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/foundation/lazy/layout/v;->h(Landroidx/compose/ui/layout/f0$a;)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Release should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
