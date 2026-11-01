.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/SubcomposeLayoutState$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->D(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/node/n1;->d(Landroidx/compose/ui/node/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->E()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(IJ)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->E()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ltz p1, :cond_1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    invoke-static {v0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->E()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    invoke-interface {v2, p1, p2, p3}, Landroidx/compose/ui/node/y0;->measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V

    const/4 p1, 0x0

    invoke-static {v1, p1}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pre-measure called on node that is not placed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Index ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of bound of [0, "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->y()V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->f(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->q(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;I)V

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->J()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->g(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->h(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v2, v0, v1, v3}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->l(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;III)V

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$f;->a:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->u(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Item is not in pre-composed item range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pre-composed items to dispose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
