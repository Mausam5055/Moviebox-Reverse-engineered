.class public abstract Landroidx/compose/ui/node/NodeCoordinator;
.super Landroidx/compose/ui/node/LookaheadCapablePlaceable;

# interfaces
.implements Landroidx/compose/ui/layout/s;
.implements Landroidx/compose/ui/layout/l;
.implements Landroidx/compose/ui/node/z0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/NodeCoordinator$c;,
        Landroidx/compose/ui/node/NodeCoordinator$d;
    }
.end annotation


# static fields
.field public static final L:Landroidx/compose/ui/node/NodeCoordinator$c;

.field private static final M:Lkotlin/jvm/functions/Function1;

.field private static final N:Lkotlin/jvm/functions/Function1;

.field private static final O:Landroidx/compose/ui/graphics/x4;

.field private static final P:Landroidx/compose/ui/node/u;

.field private static final Q:[F

.field private static final R:Landroidx/compose/ui/node/NodeCoordinator$d;

.field private static final S:Landroidx/compose/ui/node/NodeCoordinator$d;


# instance fields
.field private A:Landroidx/compose/ui/layout/v;

.field private B:Ljava/util/Map;

.field private C:J

.field private D:F

.field private E:Ly/e;

.field private F:Landroidx/compose/ui/node/u;

.field private final G:Lkotlin/jvm/functions/Function2;

.field private final H:Lkotlin/jvm/functions/Function0;

.field private I:Z

.field private J:Landroidx/compose/ui/node/w0;

.field private K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field private final p:Landroidx/compose/ui/node/LayoutNode;

.field private q:Z

.field private r:Z

.field private s:Landroidx/compose/ui/node/NodeCoordinator;

.field private t:Landroidx/compose/ui/node/NodeCoordinator;

.field private u:Z

.field private v:Z

.field private w:Lkotlin/jvm/functions/Function1;

.field private x:Lo0/e;

.field private y:Landroidx/compose/ui/unit/LayoutDirection;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/NodeCoordinator$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->L:Landroidx/compose/ui/node/NodeCoordinator$c;

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayerParams$1;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->M:Lkotlin/jvm/functions/Function1;

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayer$1;->INSTANCE:Landroidx/compose/ui/node/NodeCoordinator$Companion$onCommitAffectingLayer$1;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->N:Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/ui/graphics/x4;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/x4;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->O:Landroidx/compose/ui/graphics/x4;

    new-instance v0, Landroidx/compose/ui/node/u;

    invoke-direct {v0}, Landroidx/compose/ui/node/u;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->P:Landroidx/compose/ui/node/u;

    const/4 v0, 0x1

    invoke-static {v1, v0, v1}, Landroidx/compose/ui/graphics/i4;->c([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->Q:[F

    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$a;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->R:Landroidx/compose/ui/node/NodeCoordinator$d;

    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$b;

    invoke-direct {v0}, Landroidx/compose/ui/node/NodeCoordinator$b;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->S:Landroidx/compose/ui/node/NodeCoordinator$d;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->p:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->x:Lo0/e;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->y:Landroidx/compose/ui/unit/LayoutDirection;

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->z:F

    sget-object p1, Lo0/p;->b:Lo0/p$a;

    invoke-virtual {p1}, Lo0/p$a;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->C:J

    new-instance p1, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/node/NodeCoordinator$drawBlock$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->G:Lkotlin/jvm/functions/Function2;

    new-instance p1, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;)V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->H:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic A1(Landroidx/compose/ui/node/NodeCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->I:Z

    return-void
.end method

.method public static final synthetic B1(Landroidx/compose/ui/node/NodeCoordinator;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/g0;->F0(J)V

    return-void
.end method

.method public static final synthetic C1(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->G2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V

    return-void
.end method

.method private final D1(Landroidx/compose/ui/node/NodeCoordinator;Ly/e;Z)V
    .locals 1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->D1(Landroidx/compose/ui/node/NodeCoordinator;Ly/e;Z)V

    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->O1(Ly/e;Z)V

    return-void
.end method

.method private final E1(Landroidx/compose/ui/node/NodeCoordinator;JZ)J
    .locals 2

    if-ne p1, p0, :cond_0

    return-wide p2

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->E1(Landroidx/compose/ui/node/NodeCoordinator;JZ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p4}, Landroidx/compose/ui/node/NodeCoordinator;->M1(JZ)J

    move-result-wide p1

    return-wide p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->M1(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private final G2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V
    .locals 12

    move-object v10, p1

    if-nez v10, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->i2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V

    goto :goto_0

    :cond_0
    move-object v3, p2

    invoke-interface {p2, p1}, Landroidx/compose/ui/node/NodeCoordinator$d;->b(Landroidx/compose/ui/f$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v11, Landroidx/compose/ui/node/NodeCoordinator$speculativeHit$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator$speculativeHit$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V

    move-object/from16 v0, p5

    invoke-virtual {v0, p1, v9, v8, v11}, Landroidx/compose/ui/node/q;->w(Landroidx/compose/ui/f$c;FZLkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface {p2}, Landroidx/compose/ui/node/NodeCoordinator$d;->a()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-static {p1, v1, v2}, Landroidx/compose/ui/node/r0;->a(Landroidx/compose/ui/node/f;II)Landroidx/compose/ui/f$c;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->G2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V

    :goto_0
    return-void
.end method

.method private final H2(Landroidx/compose/ui/layout/l;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    instance-of v0, p1, Landroidx/compose/ui/layout/q;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/q;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/layout/q;->a()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    :cond_2
    return-object v0
.end method

.method private final J1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->d2(I)Landroidx/compose/ui/f$c;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->u2(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->W()Landroidx/compose/ui/node/d0;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo0/u;->d(J)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/d0;->n(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/f$c;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :goto_0
    return-void
.end method

.method public static synthetic J2(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->I2(JZ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toParentPosition-8S9VItk"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic M2(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->L2(Lkotlin/jvm/functions/Function1;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLayerBlock"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic N1(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->M1(JZ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fromParentPosition-8S9VItk"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final N2(Z)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->w:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_2

    sget-object v2, Landroidx/compose/ui/node/NodeCoordinator;->O:Landroidx/compose/ui/graphics/x4;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/x4;->P()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/x4;->R(Lo0/e;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/ui/graphics/x4;->U(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide v3

    invoke-static {v3, v4}, Lo0/u;->d(J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/x4;->V(J)V

    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator;->X1()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/NodeCoordinator;->M:Lkotlin/jvm/functions/Function1;

    new-instance v5, Landroidx/compose/ui/node/NodeCoordinator$updateLayerParameters$1;

    invoke-direct {v5, v1}, Landroidx/compose/ui/node/NodeCoordinator$updateLayerParameters$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, p0, v4, v5}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->i(Landroidx/compose/ui/node/z0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/u;

    if-nez v1, :cond_1

    new-instance v1, Landroidx/compose/ui/node/u;

    invoke-direct {v1}, Landroidx/compose/ui/node/u;-><init>()V

    iput-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/u;

    :cond_1
    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/u;->a(Landroidx/compose/ui/graphics/c4;)V

    invoke-interface {v0, v2}, Landroidx/compose/ui/node/w0;->updateLayerProperties(Landroidx/compose/ui/graphics/x4;)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/x4;->z()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->v:Z

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/x4;->n()F

    move-result v0

    iput v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->z:F

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/y0;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/ui/node/y0;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    goto :goto_1

    :cond_2
    const-string p1, "updateLayerParameters requires a non-null layerBlock"

    invoke-static {p1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_3
    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->w:Lkotlin/jvm/functions/Function1;

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    const-string p1, "null layer with a non-null layerBlock"

    invoke-static {p1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private final O1(Ly/e;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/p;->h(J)I

    move-result v0

    invoke-virtual {p1}, Ly/e;->b()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Ly/e;->i(F)V

    invoke-virtual {p1}, Ly/e;->c()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Ly/e;->j(F)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/p;->i(J)I

    move-result v0

    invoke-virtual {p1}, Ly/e;->d()F

    move-result v1

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Ly/e;->k(F)V

    invoke-virtual {p1}, Ly/e;->a()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Ly/e;->h(F)V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroidx/compose/ui/node/w0;->mapBounds(Ly/e;Z)V

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->v:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/t;->f(J)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Ly/e;->e(FFFF)V

    invoke-virtual {p1}, Ly/e;->f()Z

    :cond_0
    return-void
.end method

.method static synthetic O2(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->N2(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLayerParameters"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final X1()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    return-object v0
.end method

.method private final c2(I)Z
    .locals 2

    invoke-static {p1}, Landroidx/compose/ui/node/t0;->i(I)Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->e2(Z)Landroidx/compose/ui/f$c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/compose/ui/node/g;->e(Landroidx/compose/ui/node/f;I)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private final e2(Z)Landroidx/compose/ui/f$c;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final f2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V
    .locals 11

    move-object v9, p1

    if-nez v9, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->i2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V

    goto :goto_0

    :cond_0
    new-instance v10, Landroidx/compose/ui/node/NodeCoordinator$hit$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator$hit$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V

    move-object/from16 v0, p5

    move/from16 v1, p7

    invoke-virtual {v0, p1, v1, v10}, Landroidx/compose/ui/node/q;->q(Landroidx/compose/ui/f$c;ZLkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private final g2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V
    .locals 12

    move-object v10, p1

    if-nez v10, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->i2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V

    goto :goto_0

    :cond_0
    new-instance v11, Landroidx/compose/ui/node/NodeCoordinator$hitNear$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator$hitNear$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V

    move-object/from16 v0, p5

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-virtual {v0, p1, v2, v1, v11}, Landroidx/compose/ui/node/q;->r(Landroidx/compose/ui/f$c;FZLkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private final m2(J)J
    .locals 3

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    neg-float v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->s0()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    cmpg-float p2, p1, v1

    if-gez p2, :cond_1

    neg-float p1, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->o0()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ly/h;->a(FF)J

    move-result-wide p1

    return-wide p1
.end method

.method public static final synthetic p1(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->J1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public static final synthetic q1()Landroidx/compose/ui/graphics/x4;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->O:Landroidx/compose/ui/graphics/x4;

    return-object v0
.end method

.method public static final synthetic r1(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/u;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->F:Landroidx/compose/ui/node/u;

    return-object p0
.end method

.method public static final synthetic s1()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->N:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic t1()Landroidx/compose/ui/node/NodeCoordinator$d;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->R:Landroidx/compose/ui/node/NodeCoordinator$d;

    return-object v0
.end method

.method public static final synthetic u1()Landroidx/compose/ui/node/NodeCoordinator$d;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->S:Landroidx/compose/ui/node/NodeCoordinator$d;

    return-object v0
.end method

.method public static final synthetic v1(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/NodeCoordinator;->X1()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object p0

    return-object p0
.end method

.method private final v2(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p5, :cond_3

    const/4 v3, 0x1

    if-nez p4, :cond_0

    move p4, v3

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    if-nez p4, :cond_1

    const-string p4, "both ways to create layers shouldn\'t be used together"

    invoke-static {p4}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_1
    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eq p4, p5, :cond_2

    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {p0, v2, v1, v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->M2(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    iput-object p5, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :cond_2
    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-nez p4, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p4

    invoke-static {p4}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object p4

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->G:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->H:Lkotlin/jvm/functions/Function0;

    invoke-interface {p4, v0, v1, p5}, Landroidx/compose/ui/node/y0;->createLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)Landroidx/compose/ui/node/w0;

    move-result-object p4

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->r0()J

    move-result-wide v0

    invoke-interface {p4, v0, v1}, Landroidx/compose/ui/node/w0;->resize-ozmzZPI(J)V

    invoke-interface {p4, p1, p2}, Landroidx/compose/ui/node/w0;->move--gyyYBs(J)V

    iput-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p4

    invoke-virtual {p4, v3}, Landroidx/compose/ui/node/LayoutNode;->m1(Z)V

    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->H:Lkotlin/jvm/functions/Function0;

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p5, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz p5, :cond_4

    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {p0, v2, v1, v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->M2(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    :cond_4
    invoke-static {p0, p4, v1, v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->M2(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide p4

    invoke-static {p4, p5, p1, p2}, Lo0/p;->g(JJ)Z

    move-result p4

    if-nez p4, :cond_8

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->C2(J)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->I()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->l1()V

    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz p4, :cond_6

    invoke-interface {p4, p1, p2}, Landroidx/compose/ui/node/w0;->move--gyyYBs(J)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->j2()V

    :cond_7
    :goto_2
    invoke-virtual {p0, p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->g1(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/y0;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/node/y0;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_8
    iput p3, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:F

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->j1()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->b1()Landroidx/compose/ui/layout/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->R0(Landroidx/compose/ui/layout/v;)V

    :cond_9
    return-void
.end method

.method public static final synthetic w1()Landroidx/compose/ui/node/u;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->P:Landroidx/compose/ui/node/u;

    return-object v0
.end method

.method public static final synthetic x1(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/f$c;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->e2(Z)Landroidx/compose/ui/f$c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic y1(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroidx/compose/ui/node/NodeCoordinator;->f2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V

    return-void
.end method

.method public static synthetic y2(Landroidx/compose/ui/node/NodeCoordinator;Ly/e;ZZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->x2(Ly/e;ZZ)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: rectInParent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic z1(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->g2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V

    return-void
.end method


# virtual methods
.method public final A2(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->q:Z

    return-void
.end method

.method public B(Landroidx/compose/ui/layout/l;JZ)J
    .locals 1

    instance-of v0, p1, Landroidx/compose/ui/layout/q;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/q;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/q;->a()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->n2()V

    invoke-static {p2, p3}, Ly/g;->u(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3, p4}, Landroidx/compose/ui/layout/l;->B(Landroidx/compose/ui/layout/l;JZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ly/g;->u(J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->H2(Landroidx/compose/ui/layout/l;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->n2()V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->L1(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    :goto_0
    if-eq p1, v0, :cond_1

    invoke-virtual {p1, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->I2(JZ)J

    move-result-wide p2

    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p2, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->E1(Landroidx/compose/ui/node/NodeCoordinator;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public B2(Landroidx/compose/ui/layout/v;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->A:Landroidx/compose/ui/layout/v;

    if-eq p1, v0, :cond_5

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->A:Landroidx/compose/ui/layout/v;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->getHeight()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/v;->getHeight()I

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->getWidth()I

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->q2(II)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->B:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->B:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->P1()Landroidx/compose/ui/node/a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/AlignmentLines;->m()V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->B:Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->B:Ljava/util/Map;

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-interface {p1}, Landroidx/compose/ui/layout/v;->v()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public C(Landroidx/compose/ui/layout/l;J)J
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/ui/node/NodeCoordinator;->B(Landroidx/compose/ui/layout/l;JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public C0()F
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object v0

    invoke-interface {v0}, Lo0/n;->C0()F

    move-result v0

    return v0
.end method

.method protected C2(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->C:J

    return-void
.end method

.method public final D2(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->s:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method public final E2(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    return-void
.end method

.method public F()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    return v0
.end method

.method protected final F1(J)J
    .locals 2

    invoke-static {p1, p2}, Ly/m;->i(J)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->s0()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {p1, p2}, Ly/m;->g(J)F

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->o0()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p1, p2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Ly/n;->a(FF)J

    move-result-wide p1

    return-wide p1
.end method

.method public final F2()Z
    .locals 11

    const/16 v0, 0x10

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/node/t0;->i(I)Z

    move-result v1

    invoke-direct {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->e2(Z)Landroidx/compose/ui/f$c;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v3

    invoke-interface {v1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "visitLocalDescendants called on an unattached node"

    invoke-static {v4}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->a1()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_a

    :goto_0
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v4

    :goto_1
    if-eqz v5, :cond_9

    instance-of v7, v5, Landroidx/compose/ui/node/e1;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    check-cast v5, Landroidx/compose/ui/node/e1;

    invoke-interface {v5}, Landroidx/compose/ui/node/e1;->P0()Z

    move-result v5

    if-eqz v5, :cond_8

    return v8

    :cond_2
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v7

    and-int/2addr v7, v3

    if-eqz v7, :cond_8

    instance-of v7, v5, Landroidx/compose/ui/node/i;

    if-eqz v7, :cond_8

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/node/i;

    invoke-virtual {v7}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v7

    move v9, v2

    :goto_2
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int/2addr v10, v3

    if-eqz v10, :cond_6

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v8, :cond_3

    move-object v5, v7

    goto :goto_3

    :cond_3
    if-nez v6, :cond_4

    new-instance v6, Landroidx/compose/runtime/collection/b;

    new-array v10, v0, [Landroidx/compose/ui/f$c;

    invoke-direct {v6, v10, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v5, :cond_5

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v5, v4

    :cond_5
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v7

    goto :goto_2

    :cond_7
    if-ne v9, v8, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_0

    :cond_a
    return v2
.end method

.method public G()Ljava/lang/Object;
    .locals 12

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/q0;->q(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_8

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->f1()I

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v4

    move-object v6, v2

    move-object v5, v3

    :goto_1
    if-eqz v5, :cond_7

    instance-of v7, v5, Landroidx/compose/ui/node/a1;

    if-eqz v7, :cond_0

    check-cast v5, Landroidx/compose/ui/node/a1;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object v7

    iget-object v8, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v5, v7, v8}, Landroidx/compose/ui/node/a1;->v0(Lo0/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_4

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v7

    and-int/2addr v7, v4

    if-eqz v7, :cond_6

    instance-of v7, v5, Landroidx/compose/ui/node/i;

    if-eqz v7, :cond_6

    move-object v7, v5

    check-cast v7, Landroidx/compose/ui/node/i;

    invoke-virtual {v7}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    const/4 v10, 0x1

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v4

    if-eqz v11, :cond_4

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v10, :cond_1

    move-object v5, v7

    goto :goto_3

    :cond_1
    if-nez v6, :cond_2

    new-instance v6, Landroidx/compose/runtime/collection/b;

    const/16 v10, 0x10

    new-array v10, v10, [Landroidx/compose/ui/f$c;

    invoke-direct {v6, v10, v8}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v5, v2

    :cond_3
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v7

    goto :goto_2

    :cond_5
    if-ne v9, v10, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    invoke-static {v6}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v3

    goto :goto_0

    :cond_8
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    :cond_9
    return-object v2
.end method

.method protected final G1(JJ)F
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->s0()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p4}, Ly/m;->i(J)F

    move-result v1

    cmpl-float v0, v0, v1

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->o0()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p4}, Ly/m;->g(J)F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->F1(J)J

    move-result-wide p3

    invoke-static {p3, p4}, Ly/m;->i(J)F

    move-result v0

    invoke-static {p3, p4}, Ly/m;->g(J)F

    move-result p3

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->m2(J)J

    move-result-wide p1

    const/4 p4, 0x0

    cmpl-float v2, v0, p4

    if-gtz v2, :cond_1

    cmpl-float p4, p3, p4

    if-lez p4, :cond_2

    :cond_1
    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result p4

    cmpg-float p4, p4, v0

    if-gtz p4, :cond_2

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p4

    cmpg-float p3, p4, p3

    if-gtz p3, :cond_2

    invoke-static {p1, p2}, Ly/g;->l(J)F

    move-result v1

    :cond_2
    return v1
.end method

.method public final H1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/w0;->drawLayer(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/p;->h(J)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo0/p;->i(J)I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/graphics/m1;->c(FF)V

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->J1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    neg-float p2, v0

    neg-float v0, v1

    invoke-interface {p1, p2, v0}, Landroidx/compose/ui/graphics/m1;->c(FF)V

    :goto_0
    return-void
.end method

.method protected final I1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/m4;)V
    .locals 5

    new-instance v0, Ly/i;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->r0()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo0/t;->g(J)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->r0()J

    move-result-wide v3

    invoke-static {v3, v4}, Lo0/t;->f(J)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-direct {v0, v2, v2, v1, v3}, Ly/i;-><init>(FFFF)V

    invoke-interface {p1, v0, p2}, Landroidx/compose/ui/graphics/m1;->i(Ly/i;Landroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public I2(JZ)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidx/compose/ui/node/w0;->mapOffset-8S9VItk(JZ)J

    move-result-wide p1

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->i1()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lo0/q;->c(JJ)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public abstract K1()V
.end method

.method public final K2()Ly/i;
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->F()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ly/i;->e:Ly/i$a;

    invoke-virtual {v0}, Ly/i$a;->a()Ly/i;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/m;->d(Landroidx/compose/ui/layout/l;)Landroidx/compose/ui/layout/l;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->W1()Ly/e;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->V1()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->F1(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ly/m;->i(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v4}, Ly/e;->i(F)V

    invoke-static {v2, v3}, Ly/m;->g(J)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v4}, Ly/e;->k(F)V

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->s0()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v3}, Ly/m;->i(J)F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v4}, Ly/e;->j(F)V

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->o0()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v3}, Ly/m;->g(J)F

    move-result v2

    add-float/2addr v4, v2

    invoke-virtual {v1, v4}, Ly/e;->h(F)V

    move-object v2, p0

    :goto_0
    if-eq v2, v0, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->x2(Ly/e;ZZ)V

    invoke-virtual {v1}, Ly/e;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v0, Ly/i;->e:Ly/i$a;

    invoke-virtual {v0}, Ly/i$a;->a()Ly/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, v2, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ly/f;->a(Ly/e;)Ly/i;

    move-result-object v0

    return-object v0
.end method

.method public L(J)J
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->Y(J)J

    move-result-wide p1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/y0;->calculatePositionInWindow-MK-Hz9U(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final L1(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-interface {v1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "visitLocalAncestors called on an unattached node"

    invoke-static {v3}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_1

    if-ne v1, v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->I()I

    move-result v2

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->I()I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->I()I

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->I()I

    move-result v3

    if-le v2, v3, :cond_5

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_3
    if-eq v0, v1, :cond_7

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "layouts are not part of the same hierarchy"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-ne v1, v2, :cond_8

    move-object p1, p0

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    if-ne v0, v1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method public final L2(Lkotlin/jvm/functions/Function1;Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    const-string v2, "layerBlock can\'t be provided when explicitLayer is provided"

    invoke-static {v2}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-nez p2, :cond_4

    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->w:Lkotlin/jvm/functions/Function1;

    if-ne p2, p1, :cond_4

    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->x:Lo0/e;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->y:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    if-eq p2, v3, :cond_3

    goto :goto_2

    :cond_3
    move p2, v0

    goto :goto_3

    :cond_4
    :goto_2
    move p2, v1

    :goto_3
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->x:Lo0/e;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->y:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->w:Lkotlin/jvm/functions/Function1;

    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-nez p1, :cond_5

    invoke-static {v2}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v5

    iget-object v6, p0, Landroidx/compose/ui/node/NodeCoordinator;->G:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Landroidx/compose/ui/node/NodeCoordinator;->H:Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/ui/node/x0;->a(Landroidx/compose/ui/node/y0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/graphics/layer/GraphicsLayer;ILjava/lang/Object;)Landroidx/compose/ui/node/w0;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->r0()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Landroidx/compose/ui/node/w0;->resize-ozmzZPI(J)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide v5

    invoke-interface {p1, v5, v6}, Landroidx/compose/ui/node/w0;->move--gyyYBs(J)V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    invoke-static {p0, v0, v1, v4}, Landroidx/compose/ui/node/NodeCoordinator;->O2(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/LayoutNode;->m1(Z)V

    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->H:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_8

    invoke-static {p0, v0, v1, v4}, Landroidx/compose/ui/node/NodeCoordinator;->O2(Landroidx/compose/ui/node/NodeCoordinator;ZILjava/lang/Object;)V

    goto :goto_4

    :cond_6
    iput-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->w:Lkotlin/jvm/functions/Function1;

    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroidx/compose/ui/node/w0;->destroy()V

    invoke-virtual {v2, v1}, Landroidx/compose/ui/node/LayoutNode;->m1(Z)V

    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->H:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->F()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/y0;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1, v2}, Landroidx/compose/ui/node/y0;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_7
    iput-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    iput-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->I:Z

    :cond_8
    :goto_4
    return-void
.end method

.method public M1(JZ)J
    .locals 2

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->i1()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lo0/q;->b(JJ)J

    move-result-wide p1

    :goto_0
    iget-object p3, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    invoke-interface {p3, p1, p2, v0}, Landroidx/compose/ui/node/w0;->mapOffset-8S9VItk(JZ)J

    move-result-wide p1

    :cond_1
    return-wide p1
.end method

.method public O(Landroidx/compose/ui/layout/l;Z)Ly/i;
    .locals 9

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/l;->F()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutCoordinates "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not attached!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->H2(Landroidx/compose/ui/layout/l;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->n2()V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->L1(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->W1()Ly/e;

    move-result-object v8

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ly/e;->i(F)V

    invoke-virtual {v8, v2}, Ly/e;->k(F)V

    invoke-interface {p1}, Landroidx/compose/ui/layout/l;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo0/t;->g(J)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Ly/e;->j(F)V

    invoke-interface {p1}, Landroidx/compose/ui/layout/l;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo0/t;->f(J)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v8, p1}, Ly/e;->h(F)V

    :goto_0
    if-eq v0, v1, :cond_3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, v8

    move v4, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->y2(Landroidx/compose/ui/node/NodeCoordinator;Ly/e;ZZILjava/lang/Object;)V

    invoke-virtual {v8}, Ly/e;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ly/i;->e:Ly/i$a;

    invoke-virtual {p1}, Ly/i$a;->a()Ly/i;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1, v8, p2}, Landroidx/compose/ui/node/NodeCoordinator;->D1(Landroidx/compose/ui/node/NodeCoordinator;Ly/e;Z)V

    invoke-static {v8}, Ly/f;->a(Ly/e;)Ly/i;

    move-result-object p1

    return-object p1
.end method

.method public P1()Landroidx/compose/ui/node/a;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r()Landroidx/compose/ui/node/a;

    move-result-object v0

    return-object v0
.end method

.method protected final P2(J)Z
    .locals 3

    invoke-static {p1, p2}, Ly/h;->b(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->v:Z

    if-eqz v2, :cond_1

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/w0;->isInLayer-k-4lQ0M(J)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final Q1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->r:Z

    return v0
.end method

.method public final R()Landroidx/compose/ui/layout/l;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->n2()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final R1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->I:Z

    return v0
.end method

.method public final S1()J
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->t0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final T1()Landroidx/compose/ui/node/w0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    return-object v0
.end method

.method public abstract U1()Landroidx/compose/ui/node/j0;
.end method

.method public final V1()J
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->x:Lo0/e;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->l0()Landroidx/compose/ui/platform/o2;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/platform/o2;->d()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lo0/e;->Q0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public W0()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->s:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method protected final W1()Ly/e;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Ly/e;

    if-nez v0, :cond_0

    new-instance v0, Ly/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Ly/e;-><init>(FFFF)V

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->E:Ly/e;

    :cond_0
    return-object v0
.end method

.method public X0()Landroidx/compose/ui/layout/l;
    .locals 0

    return-object p0
.end method

.method public Y(J)J
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->n2()V

    move-wide v2, p1

    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->J2(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J

    move-result-wide v2

    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public abstract Y1()Landroidx/compose/ui/f$c;
.end method

.method public Z0()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->A:Landroidx/compose/ui/layout/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Z1()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->s:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public a1()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->p:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final a2()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public b1()Landroidx/compose/ui/layout/v;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->A:Landroidx/compose/ui/layout/v;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Asking for measurement result of unmeasured layout modifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b2()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:F

    return v0
.end method

.method public c1()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    return-object v0
.end method

.method public final d2(I)Landroidx/compose/ui/f$c;
    .locals 3

    invoke-static {p1}, Landroidx/compose/ui/node/t0;->i(I)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->x1(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    if-eq v0, v1, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public e1()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->C:J

    return-wide v0
.end method

.method public getDensity()F
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object v0

    invoke-interface {v0}, Lo0/e;->getDensity()F

    move-result v0

    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public final h2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V
    .locals 10

    move-object v9, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-interface {p1}, Landroidx/compose/ui/node/NodeCoordinator$d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->d2(I)Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->P2(J)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_6

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->V1()J

    move-result-wide v6

    invoke-virtual {p0, p2, p3, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->G1(JJ)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p4, v8, v0}, Landroidx/compose/ui/node/q;->t(FZ)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->g2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V

    goto/16 :goto_2

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/node/NodeCoordinator;->i2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->k2(J)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->f2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V

    goto :goto_2

    :cond_2
    if-nez p5, :cond_3

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->V1()J

    move-result-wide v6

    invoke-virtual {p0, p2, p3, v6, v7}, Landroidx/compose/ui/node/NodeCoordinator;->G1(JJ)F

    move-result v0

    goto :goto_0

    :goto_1
    invoke-static {v8}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4

    move/from16 v7, p6

    invoke-virtual {p4, v8, v7}, Landroidx/compose/ui/node/q;->t(FZ)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->g2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V

    goto :goto_2

    :cond_4
    move/from16 v7, p6

    :cond_5
    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->G2(Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZF)V

    :cond_6
    :goto_2
    return-void
.end method

.method public i2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V
    .locals 7

    iget-object v6, p0, Landroidx/compose/ui/node/NodeCoordinator;->s:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v6, :cond_0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-wide v1, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->N1(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J

    move-result-wide v2

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->h2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V

    :cond_0
    return-void
.end method

.method public isValidOwnerScope()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j2()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/w0;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->j2()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final k()J
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->r0()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final k2(J)Z
    .locals 2

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result v0

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v1, v0, p2

    if-ltz v1, :cond_0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->s0()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->o0()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final l2()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->z:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->l2()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public m1()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide v1

    iget v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:F

    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/compose/ui/node/NodeCoordinator;->w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide v0

    iget v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->D:F

    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->w:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->z0(JFLkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public final n2()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->S()V

    return-void
.end method

.method public o2()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/w0;->invalidate()V

    :cond_0
    return-void
.end method

.method public final p2()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->w:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->L2(Lkotlin/jvm/functions/Function1;Z)V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/w0;->invalidate()V

    :cond_0
    return-void
.end method

.method protected q2(II)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lo0/u;->a(II)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/node/w0;->resize-ozmzZPI(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->t:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->j2()V

    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lo0/u;->a(II)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/layout/g0;->B0(J)V

    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->w:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Landroidx/compose/ui/node/NodeCoordinator;->N2(Z)V

    :cond_2
    const/4 p1, 0x4

    invoke-static {p1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/node/t0;->i(I)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v1

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    if-nez v1, :cond_4

    goto/16 :goto_7

    :cond_4
    :goto_1
    invoke-static {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->x1(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v2, p1

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v2

    :goto_3
    if-eqz v3, :cond_c

    instance-of v5, v3, Landroidx/compose/ui/node/n;

    if-eqz v5, :cond_5

    check-cast v3, Landroidx/compose/ui/node/n;

    invoke-interface {v3}, Landroidx/compose/ui/node/n;->w0()V

    goto :goto_6

    :cond_5
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->f1()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_b

    instance-of v5, v3, Landroidx/compose/ui/node/i;

    if-eqz v5, :cond_b

    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/node/i;

    invoke-virtual {v5}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v5

    move v6, p2

    :goto_4
    const/4 v7, 0x1

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v8, p1

    if-eqz v8, :cond_9

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_6

    move-object v3, v5

    goto :goto_5

    :cond_6
    if-nez v4, :cond_7

    new-instance v4, Landroidx/compose/runtime/collection/b;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/f$c;

    invoke-direct {v4, v7, p2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v3, v2

    :cond_8
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_4

    :cond_a
    if-ne v6, v7, :cond_b

    goto :goto_3

    :cond_b
    :goto_6
    invoke-static {v4}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v3

    goto :goto_3

    :cond_c
    if-eq v0, v1, :cond_d

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_2

    :cond_d
    :goto_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/y0;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/node/y0;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_e
    return-void
.end method

.method public final r2()V
    .locals 15

    const/4 v0, 0x1

    const/16 v1, 0x80

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-direct {p0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->c2(I)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Landroidx/compose/runtime/snapshots/j;->e:Landroidx/compose/runtime/snapshots/j$a;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/j$a;->d()Landroidx/compose/runtime/snapshots/j;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/j;->h()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/j$a;->f(Landroidx/compose/runtime/snapshots/j;)Landroidx/compose/runtime/snapshots/j;

    move-result-object v6

    :try_start_0
    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/node/t0;->i(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v8

    if-nez v8, :cond_2

    goto/16 :goto_7

    :cond_2
    :goto_1
    invoke-static {p0, v7}, Landroidx/compose/ui/node/NodeCoordinator;->x1(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/f$c;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->a1()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_b

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_a

    move-object v10, v4

    move-object v9, v7

    :goto_3
    if-eqz v9, :cond_a

    instance-of v11, v9, Landroidx/compose/ui/node/w;

    if-eqz v11, :cond_3

    check-cast v9, Landroidx/compose/ui/node/w;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->r0()J

    move-result-wide v11

    invoke-interface {v9, v11, v12}, Landroidx/compose/ui/node/w;->F(J)V

    goto :goto_6

    :cond_3
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v1

    if-eqz v11, :cond_9

    instance-of v11, v9, Landroidx/compose/ui/node/i;

    if-eqz v11, :cond_9

    move-object v11, v9

    check-cast v11, Landroidx/compose/ui/node/i;

    invoke-virtual {v11}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v12

    :goto_4
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->f1()I

    move-result v14

    and-int/2addr v14, v1

    if-eqz v14, :cond_7

    add-int/2addr v13, v0

    if-ne v13, v0, :cond_4

    move-object v9, v11

    goto :goto_5

    :cond_4
    if-nez v10, :cond_5

    new-instance v10, Landroidx/compose/runtime/collection/b;

    const/16 v14, 0x10

    new-array v14, v14, [Landroidx/compose/ui/f$c;

    invoke-direct {v10, v14, v12}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v9, v4

    :cond_6
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v11

    goto :goto_4

    :cond_8
    if-ne v13, v0, :cond_9

    goto :goto_3

    :cond_9
    :goto_6
    invoke-static {v10}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v9

    goto :goto_3

    :cond_a
    if-eq v7, v8, :cond_b

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v7

    goto :goto_2

    :cond_b
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v3, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    goto :goto_9

    :goto_8
    invoke-virtual {v2, v3, v6, v5}, Landroidx/compose/runtime/snapshots/j$a;->m(Landroidx/compose/runtime/snapshots/j;Landroidx/compose/runtime/snapshots/j;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_c
    :goto_9
    return-void
.end method

.method public final s2()V
    .locals 11

    const/16 v0, 0x80

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/node/t0;->i(I)Z

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-static {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->x1(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/f$c;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->a1()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    move-object v4, v1

    move-object v5, v3

    :goto_2
    if-eqz v4, :cond_9

    instance-of v6, v4, Landroidx/compose/ui/node/w;

    if-eqz v6, :cond_2

    check-cast v4, Landroidx/compose/ui/node/w;

    invoke-interface {v4, p0}, Landroidx/compose/ui/node/w;->I(Landroidx/compose/ui/layout/l;)V

    goto :goto_5

    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->f1()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_8

    instance-of v6, v4, Landroidx/compose/ui/node/i;

    if-eqz v6, :cond_8

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/i;

    invoke-virtual {v6}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    const/4 v9, 0x1

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_6

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v9, :cond_3

    move-object v4, v6

    goto :goto_4

    :cond_3
    if-nez v5, :cond_4

    new-instance v5, Landroidx/compose/runtime/collection/b;

    const/16 v9, 0x10

    new-array v9, v9, [Landroidx/compose/ui/f$c;

    invoke-direct {v5, v9, v7}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v4, v3

    :cond_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v6

    goto :goto_3

    :cond_7
    if-ne v8, v9, :cond_8

    goto :goto_2

    :cond_8
    :goto_5
    invoke-static {v5}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v4

    goto :goto_2

    :cond_9
    if-eq v1, v2, :cond_a

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_1

    :cond_a
    :goto_6
    return-void
.end method

.method public final t2()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->u:Z

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->H:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->z2()V

    return-void
.end method

.method public abstract u2(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
.end method

.method protected w0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 11

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/j0;->e1()J

    move-result-wide v1

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->v2(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    move-object v5, p0

    move-wide v6, p1

    move v8, p3

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/node/NodeCoordinator;->v2(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :goto_0
    return-void
.end method

.method public final w2(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/compose/ui/layout/g0;->k0()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lo0/p;->l(JJ)J

    move-result-wide v3

    move-object v2, p0

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->v2(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final x2(Ly/e;ZZ)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->v:Z

    if-eqz v1, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->V1()J

    move-result-wide p2

    invoke-static {p2, p3}, Ly/m;->i(J)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {p2, p3}, Ly/m;->g(J)F

    move-result p2

    div-float/2addr p2, v2

    neg-float p3, v1

    neg-float v2, p2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide v3

    invoke-static {v3, v4}, Lo0/t;->g(J)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Lo0/t;->f(J)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-virtual {p1, p3, v2, v3, v1}, Ly/e;->e(FFFF)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide p2

    invoke-static {p2, p3}, Lo0/t;->g(J)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo0/t;->f(J)I

    move-result p3

    int-to-float p3, p3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, p3}, Ly/e;->e(FFFF)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ly/e;->f()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/w0;->mapBounds(Ly/e;Z)V

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide p2

    invoke-static {p2, p3}, Lo0/p;->h(J)I

    move-result p2

    invoke-virtual {p1}, Ly/e;->b()F

    move-result p3

    int-to-float p2, p2

    add-float/2addr p3, p2

    invoke-virtual {p1, p3}, Ly/e;->i(F)V

    invoke-virtual {p1}, Ly/e;->c()F

    move-result p3

    add-float/2addr p3, p2

    invoke-virtual {p1, p3}, Ly/e;->j(F)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->e1()J

    move-result-wide p2

    invoke-static {p2, p3}, Lo0/p;->i(J)I

    move-result p2

    invoke-virtual {p1}, Ly/e;->d()F

    move-result p3

    int-to-float p2, p2

    add-float/2addr p3, p2

    invoke-virtual {p1, p3}, Ly/e;->k(F)V

    invoke-virtual {p1}, Ly/e;->a()F

    move-result p3

    add-float/2addr p3, p2

    invoke-virtual {p1, p3}, Ly/e;->h(F)V

    return-void
.end method

.method protected z0(JFLkotlin/jvm/functions/Function1;)V
    .locals 6

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->U1()Landroidx/compose/ui/node/j0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/j0;->e1()J

    move-result-wide v1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->v2(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->v2(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :goto_0
    return-void
.end method

.method public final z2()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->J:Landroidx/compose/ui/node/w0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->K:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->M2(Landroidx/compose/ui/node/NodeCoordinator;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroidx/compose/ui/node/LayoutNode;->f1(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method
