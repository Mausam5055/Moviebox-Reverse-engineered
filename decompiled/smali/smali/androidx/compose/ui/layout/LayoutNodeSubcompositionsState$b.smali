.class final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/o0;
.implements Landroidx/compose/ui/layout/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final synthetic a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

.field final synthetic b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->j(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    return-void
.end method


# virtual methods
.method public C0()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->C0()F

    move-result v0

    return v0
.end method

.method public E(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->k(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->b:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->m(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public E0(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->E0(F)F

    move-result p1

    return p1
.end method

.method public H(F)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->H(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public J(J)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->J(J)F

    move-result p1

    return p1
.end method

.method public M0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->M0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method

.method public Q(F)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->Q(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q0(J)J
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->Q0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public W()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->W()Z

    move-result v0

    return v0
.end method

.method public c0(F)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->c0(F)I

    move-result p1

    return p1
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->getDensity()F

    move-result v0

    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public h0(J)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->h0(J)F

    move-result p1

    return p1
.end method

.method public p0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->p0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method

.method public x0(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->x0(I)F

    move-result p1

    return p1
.end method

.method public y0(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$b;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->y0(F)F

    move-result p1

    return p1
.end method
