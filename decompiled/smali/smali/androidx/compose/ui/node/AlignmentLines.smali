.class public abstract Landroidx/compose/ui/node/AlignmentLines;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/ui/node/a;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroidx/compose/ui/node/a;

.field private final i:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/node/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->b:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/AlignmentLines;->i:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/node/a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/AlignmentLines;-><init>(Landroidx/compose/ui/node/a;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/node/AlignmentLines;Landroidx/compose/ui/layout/a;ILandroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/AlignmentLines;->c(Landroidx/compose/ui/layout/a;ILandroidx/compose/ui/node/NodeCoordinator;)V

    return-void
.end method

.method public static final synthetic b(Landroidx/compose/ui/node/AlignmentLines;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/AlignmentLines;->i:Ljava/util/Map;

    return-object p0
.end method

.method private final c(Landroidx/compose/ui/layout/a;ILandroidx/compose/ui/node/NodeCoordinator;)V
    .locals 2

    int-to-float p2, p2

    invoke-static {p2, p2}, Ly/h;->a(FF)J

    move-result-wide v0

    :cond_0
    :goto_0
    invoke-virtual {p0, p3, v0, v1}, Landroidx/compose/ui/node/AlignmentLines;->d(Landroidx/compose/ui/node/NodeCoordinator;J)J

    move-result-wide v0

    invoke-virtual {p3}, Landroidx/compose/ui/node/NodeCoordinator;->a2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/a;

    invoke-interface {p2}, Landroidx/compose/ui/node/a;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p2

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p3}, Landroidx/compose/ui/node/AlignmentLines;->e(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3, p1}, Landroidx/compose/ui/node/AlignmentLines;->i(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/a;)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p2, p2}, Ly/h;->a(FF)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    instance-of p2, p1, Landroidx/compose/ui/layout/h;

    if-eqz p2, :cond_2

    invoke-static {v0, v1}, Ly/g;->n(J)F

    move-result p2

    goto :goto_1

    :cond_2
    invoke-static {v0, v1}, Ly/g;->m(J)F

    move-result p2

    :goto_1
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object p3, p0, Landroidx/compose/ui/node/AlignmentLines;->i:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->i:Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0, p2}, Landroidx/compose/ui/layout/AlignmentLineKt;->c(Landroidx/compose/ui/layout/a;II)I

    move-result p2

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract d(Landroidx/compose/ui/node/NodeCoordinator;J)J
.end method

.method protected abstract e(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;
.end method

.method public final f()Landroidx/compose/ui/node/a;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/a;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->b:Z

    return v0
.end method

.method public final h()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->i:Ljava/util/Map;

    return-object v0
.end method

.method protected abstract i(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/a;)I
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->f:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final k()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->o()V

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->h:Landroidx/compose/ui/node/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->d:Z

    return v0
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->b:Z

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/a;

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->D()Landroidx/compose/ui/node/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->c:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->Z()V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->e:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->d:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/node/a;->requestLayout()V

    :cond_3
    :goto_0
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->f:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/a;

    invoke-interface {v1}, Landroidx/compose/ui/node/a;->Z()V

    :cond_4
    iget-boolean v1, p0, Landroidx/compose/ui/node/AlignmentLines;->g:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/a;

    invoke-interface {v1}, Landroidx/compose/ui/node/a;->requestLayout()V

    :cond_5
    invoke-interface {v0}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/AlignmentLines;->m()V

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/a;

    new-instance v1, Landroidx/compose/ui/node/AlignmentLines$recalculate$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/node/AlignmentLines$recalculate$1;-><init>(Landroidx/compose/ui/node/AlignmentLines;)V

    invoke-interface {v0, v1}, Landroidx/compose/ui/node/a;->U(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->i:Ljava/util/Map;

    iget-object v1, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/a;

    invoke-interface {v1}, Landroidx/compose/ui/node/a;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/AlignmentLines;->e(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->b:Z

    return-void
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->a:Landroidx/compose/ui/node/a;

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->D()Landroidx/compose/ui/node/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/AlignmentLines;->h:Landroidx/compose/ui/node/a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/AlignmentLines;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->h:Landroidx/compose/ui/node/a;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/AlignmentLines;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Landroidx/compose/ui/node/a;->D()Landroidx/compose/ui/node/a;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/node/AlignmentLines;->o()V

    :cond_4
    invoke-interface {v0}, Landroidx/compose/ui/node/a;->D()Landroidx/compose/ui/node/a;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroidx/compose/ui/node/AlignmentLines;->h:Landroidx/compose/ui/node/a;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->h:Landroidx/compose/ui/node/a;

    :cond_6
    :goto_1
    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->c:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->e:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->d:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->f:Z

    iput-boolean v0, p0, Landroidx/compose/ui/node/AlignmentLines;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/node/AlignmentLines;->h:Landroidx/compose/ui/node/a;

    return-void
.end method

.method public final q(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->e:Z

    return-void
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->g:Z

    return-void
.end method

.method public final s(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->f:Z

    return-void
.end method

.method public final t(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->d:Z

    return-void
.end method

.method public final u(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/AlignmentLines;->c:Z

    return-void
.end method
