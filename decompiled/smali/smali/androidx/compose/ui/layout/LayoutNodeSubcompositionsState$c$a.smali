.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/layout/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->M0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lkotlin/jvm/functions/Function1;

.field final synthetic e:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

.field final synthetic f:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->a:I

    iput p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->b:I

    iput-object p3, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->c:Ljava/util/Map;

    iput-object p4, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->d:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->e:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    iput-object p6, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->f:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iput-object p7, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->g:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->a:I

    return v0
.end method

.method public v()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public w()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->e:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->f:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->g:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->d1()Landroidx/compose/ui/layout/g0$a;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->g:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->f:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->i(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->d1()Landroidx/compose/ui/layout/g0$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public x()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$c$a;->d:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
