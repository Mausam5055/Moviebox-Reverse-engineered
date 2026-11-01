.class final Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/NodeCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "coordinator",
        "Landroidx/compose/ui/node/NodeCoordinator;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;->invoke(Landroidx/compose/ui/node/NodeCoordinator;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->isValidOwnerScope()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroidx/compose/ui/node/NodeCoordinator;->r1(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/u;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v3, v2, v1}, Landroidx/compose/ui/node/NodeCoordinator;->O2(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/node/NodeCoordinator;->w1()Landroidx/compose/ui/node/u;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/compose/ui/node/u;->b(Landroidx/compose/ui/node/u;)V

    invoke-static {p1, v3, v2, v1}, Landroidx/compose/ui/node/NodeCoordinator;->O2(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V

    invoke-static {}, Landroidx/compose/ui/node/NodeCoordinator;->w1()Landroidx/compose/ui/node/u;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/compose/ui/node/u;->c(Landroidx/compose/ui/node/u;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->u()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {p1, v3, v2, v1}, Landroidx/compose/ui/node/LayoutNode;->f1(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->I()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->l1()V

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/y0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Landroidx/compose/ui/node/y0;->requestOnPositionedCallback(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_4
    :goto_0
    return-void
.end method
