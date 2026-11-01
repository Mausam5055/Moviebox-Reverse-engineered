.class public final Landroidx/compose/ui/node/y;
.super Landroidx/compose/ui/node/NodeCoordinator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/y$a;,
        Landroidx/compose/ui/node/y$b;
    }
.end annotation


# static fields
.field public static final X:Landroidx/compose/ui/node/y$a;

.field private static final Y:Landroidx/compose/ui/graphics/m4;


# instance fields
.field private T:Landroidx/compose/ui/node/x;

.field private U:Lo0/b;

.field private V:Landroidx/compose/ui/node/j0;

.field private W:Landroidx/compose/ui/layout/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/node/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/y;->X:Landroidx/compose/ui/node/y$a;

    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1$a;->b()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/m4;->s(J)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->setStrokeWidth(F)V

    sget-object v1, Landroidx/compose/ui/graphics/n4;->a:Landroidx/compose/ui/graphics/n4$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n4$a;->b()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->C(I)V

    sput-object v0, Landroidx/compose/ui/node/y;->Y:Landroidx/compose/ui/graphics/m4;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/x;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object p2, p0, Landroidx/compose/ui/node/y;->T:Landroidx/compose/ui/node/x;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->V()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/ui/node/y$b;

    invoke-direct {p1, p0}, Landroidx/compose/ui/node/y$b;-><init>(Landroidx/compose/ui/node/y;)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroidx/compose/ui/node/y;->V:Landroidx/compose/ui/node/j0;

    invoke-interface {p2}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object p1

    const/16 v1, 0x200

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->f1()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    new-instance p1, Landroidx/compose/ui/layout/c;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.ApproachLayoutModifierNode"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/layout/c;-><init>(Landroidx/compose/ui/node/y;Landroidx/compose/ui/layout/b;)V

    move-object v0, p1

    :cond_1
    iput-object v0, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    return-void
.end method

.method public static final synthetic Q2(Landroidx/compose/ui/node/y;)Landroidx/compose/ui/layout/c;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    return-object p0
.end method

.method private final T2()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->s2()V

    iget-object v0, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->b1()Landroidx/compose/ui/layout/v;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->w()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->S2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->A2(Z)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/layout/c;->n()Landroidx/compose/ui/layout/b;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->d1()Landroidx/compose/ui/layout/g0$a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->w1()Landroidx/compose/ui/layout/q;

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public J0(Landroidx/compose/ui/layout/a;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/j0;->s1(Landroidx/compose/ui/layout/a;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/node/z;->a(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/a;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public K1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/y$b;

    invoke-direct {v0, p0}, Landroidx/compose/ui/node/y$b;-><init>(Landroidx/compose/ui/node/y;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/y;->W2(Landroidx/compose/ui/node/j0;)V

    :cond_0
    return-void
.end method

.method public P(J)Landroidx/compose/ui/layout/g0;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Q1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/compose/ui/node/y;->U:Lo0/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lo0/b;->r()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Lookahead constraints cannot be null in approach pass."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->B1(Landroidx/compose/ui/node/NodeCoordinator;J)V

    invoke-static {p0}, Landroidx/compose/ui/node/y;->Q2(Landroidx/compose/ui/node/y;)Landroidx/compose/ui/layout/c;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->R2()Landroidx/compose/ui/node/x;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->S2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1, p2}, Landroidx/compose/ui/node/x;->z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->B2(Landroidx/compose/ui/layout/v;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->r2()V

    return-object p0

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/layout/c;->n()Landroidx/compose/ui/layout/b;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/c;->z()J

    const/4 p1, 0x0

    throw p1
.end method

.method public final R2()Landroidx/compose/ui/node/x;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/y;->T:Landroidx/compose/ui/node/x;

    return-object v0
.end method

.method public final S2()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method public U1()Landroidx/compose/ui/node/j0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/y;->V:Landroidx/compose/ui/node/j0;

    return-object v0
.end method

.method public final U2(Landroidx/compose/ui/node/x;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/y;->T:Landroidx/compose/ui/node/x;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    const/16 v1, 0x200

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v0

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.ApproachLayoutModifierNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/layout/c;->B(Landroidx/compose/ui/layout/b;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/layout/c;

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/layout/c;-><init>(Landroidx/compose/ui/node/y;Landroidx/compose/ui/layout/b;)V

    :goto_0
    iput-object v0, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroidx/compose/ui/node/y;->W:Landroidx/compose/ui/layout/c;

    :cond_2
    :goto_1
    iput-object p1, p0, Landroidx/compose/ui/node/y;->T:Landroidx/compose/ui/node/x;

    return-void
.end method

.method public final V2(Lo0/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/y;->U:Lo0/b;

    return-void
.end method

.method protected W2(Landroidx/compose/ui/node/j0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/y;->V:Landroidx/compose/ui/node/j0;

    return-void
.end method

.method public Y1()Landroidx/compose/ui/f$c;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/y;->T:Landroidx/compose/ui/node/x;

    invoke-interface {v0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v0

    return-object v0
.end method

.method public u2(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/y;->S2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->H1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object p2

    invoke-interface {p2}, Landroidx/compose/ui/node/y0;->getShowLayoutBounds()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Landroidx/compose/ui/node/y;->Y:Landroidx/compose/ui/graphics/m4;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->I1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/m4;)V

    :cond_0
    return-void
.end method

.method protected w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    invoke-direct {p0}, Landroidx/compose/ui/node/y;->T2()V

    return-void
.end method

.method protected z0(JFLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->z0(JFLkotlin/jvm/functions/Function1;)V

    invoke-direct {p0}, Landroidx/compose/ui/node/y;->T2()V

    return-void
.end method
