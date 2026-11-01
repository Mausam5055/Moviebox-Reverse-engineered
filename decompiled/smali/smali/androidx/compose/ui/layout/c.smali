.class public final Landroidx/compose/ui/layout/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/j;
.implements Landroidx/compose/ui/layout/x;


# instance fields
.field private final a:Landroidx/compose/ui/node/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/y;Landroidx/compose/ui/layout/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    return-void
.end method


# virtual methods
.method public final B(Landroidx/compose/ui/layout/b;)V
    .locals 0

    return-void
.end method

.method public C0()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->C0()F

    move-result v0

    return v0
.end method

.method public E0(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->E0(F)F

    move-result p1

    return p1
.end method

.method public H(F)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->H(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public J(J)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->J(J)F

    move-result p1

    return p1
.end method

.method public M0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;
    .locals 8

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroidx/compose/ui/layout/c$a;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/layout/c$a;-><init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/c;)V

    return-object v0
.end method

.method public Q(F)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->Q(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q0(J)J
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->Q0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public W()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c0(F)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->c0(F)I

    move-result p1

    return p1
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getDensity()F

    move-result v0

    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public h0(J)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->h0(J)F

    move-result p1

    return p1
.end method

.method public final n()Landroidx/compose/ui/layout/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->p0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method

.method public final v()Landroidx/compose/ui/node/y;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    return-object v0
.end method

.method public x0(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->x0(I)F

    move-result p1

    return p1
.end method

.method public y0(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->y0(F)F

    move-result p1

    return p1
.end method

.method public z()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/c;->a:Landroidx/compose/ui/node/y;

    invoke-virtual {v0}, Landroidx/compose/ui/node/y;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->b1()Landroidx/compose/ui/layout/v;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lo0/u;->a(II)J

    move-result-wide v0

    return-wide v0
.end method
