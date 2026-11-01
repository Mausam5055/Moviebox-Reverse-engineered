.class final Landroidx/compose/runtime/ComposerImpl$b;
.super Landroidx/compose/runtime/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/ComposerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Landroidx/compose/runtime/u;

.field private e:Ljava/util/Set;

.field private final f:Ljava/util/Set;

.field private final g:Landroidx/compose/runtime/i1;

.field final synthetic h:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl;IZZLandroidx/compose/runtime/u;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-direct {p0}, Landroidx/compose/runtime/m;-><init>()V

    iput p2, p0, Landroidx/compose/runtime/ComposerImpl$b;->a:I

    iput-boolean p3, p0, Landroidx/compose/runtime/ComposerImpl$b;->b:Z

    iput-boolean p4, p0, Landroidx/compose/runtime/ComposerImpl$b;->c:Z

    iput-object p5, p0, Landroidx/compose/runtime/ComposerImpl$b;->d:Landroidx/compose/runtime/u;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$b;->f:Ljava/util/Set;

    invoke-static {}, Landroidx/compose/runtime/internal/e;->a()Landroidx/compose/runtime/internal/d;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/r2;->h()Landroidx/compose/runtime/q2;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/runtime/r2;->e(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$b;->g:Landroidx/compose/runtime/i1;

    return-void
.end method

.method private final u()Landroidx/compose/runtime/n1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->g:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/n1;

    return-object v0
.end method

.method private final v(Landroidx/compose/runtime/n1;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->g:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/runtime/y;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->V(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/runtime/m;->a(Landroidx/compose/runtime/y;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->T(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->Z(Landroidx/compose/runtime/ComposerImpl;I)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->V(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/m;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/m;->c()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->b:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->c:Z

    return v0
.end method

.method public f()Landroidx/compose/runtime/n1;
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/ComposerImpl$b;->u()Landroidx/compose/runtime/n1;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->a:I

    return v0
.end method

.method public h()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->V(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/m;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/m;->h()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public i()Landroidx/compose/runtime/u;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->d:Landroidx/compose/runtime/u;

    return-object v0
.end method

.method public j(Landroidx/compose/runtime/y0;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->V(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/m;->j(Landroidx/compose/runtime/y0;)V

    return-void
.end method

.method public k(Landroidx/compose/runtime/y;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->V(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/m;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/ComposerImpl;->A0()Landroidx/compose/runtime/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/m;->k(Landroidx/compose/runtime/y;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->V(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/m;->k(Landroidx/compose/runtime/y;)V

    return-void
.end method

.method public l(Landroidx/compose/runtime/y0;)Landroidx/compose/runtime/x0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->V(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/m;->l(Landroidx/compose/runtime/y0;)Landroidx/compose/runtime/x0;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->e:Ljava/util/Set;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(Landroidx/compose/runtime/i;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/runtime/ComposerImpl;

    invoke-super {p0, v0}, Landroidx/compose/runtime/m;->n(Landroidx/compose/runtime/i;)V

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public o(Landroidx/compose/runtime/y;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->V(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/m;->o(Landroidx/compose/runtime/y;)V

    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->T(Landroidx/compose/runtime/ComposerImpl;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroidx/compose/runtime/ComposerImpl;->Z(Landroidx/compose/runtime/ComposerImpl;I)V

    return-void
.end method

.method public q(Landroidx/compose/runtime/i;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerImpl;->X(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/j2;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->f:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public r(Landroidx/compose/runtime/y;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->h:Landroidx/compose/runtime/ComposerImpl;

    invoke-static {v0}, Landroidx/compose/runtime/ComposerImpl;->V(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/m;->r(Landroidx/compose/runtime/y;)V

    return-void
.end method

.method public final s()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->f:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/ComposerImpl$b;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/ComposerImpl;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v2}, Landroidx/compose/runtime/ComposerImpl;->X(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/j2;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method

.method public final t()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$b;->f:Ljava/util/Set;

    return-object v0
.end method

.method public final w(Landroidx/compose/runtime/n1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/ComposerImpl$b;->v(Landroidx/compose/runtime/n1;)V

    return-void
.end method
