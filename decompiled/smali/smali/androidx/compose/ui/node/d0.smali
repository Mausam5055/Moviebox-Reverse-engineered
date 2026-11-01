.class public final Landroidx/compose/ui/node/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lz/g;
.implements Lz/c;


# instance fields
.field private final a:Lz/a;

.field private b:Landroidx/compose/ui/node/n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/compose/ui/node/d0;-><init>(Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    return-void
.end method

.method public synthetic constructor <init>(Lz/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lz/a;

    invoke-direct {p1}, Lz/a;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/d0;-><init>(Lz/a;)V

    return-void
.end method


# virtual methods
.method public C0()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0}, Lz/a;->C0()F

    move-result v0

    return v0
.end method

.method public D0(Landroidx/compose/ui/graphics/Path;JFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lz/a;->D0(Landroidx/compose/ui/graphics/Path;JFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method public E0(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0, p1}, Lz/a;->E0(F)F

    move-result p1

    return p1
.end method

.method public G0(Ljava/util/List;IJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lz/a;->G0(Ljava/util/List;IJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method public H(F)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0, p1}, Lz/a;->H(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public H0()Lz/d;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0}, Lz/a;->H0()Lz/d;

    move-result-object v0

    return-object v0
.end method

.method public J(J)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0, p1, p2}, Lz/a;->J(J)F

    move-result p1

    return p1
.end method

.method public K0(JFJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lz/a;->K0(JFJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method public L0(JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lz/a;->L0(JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method public N0(Landroidx/compose/ui/graphics/j1;JJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lz/a;->N0(Landroidx/compose/ui/graphics/j1;JJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method public O0()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0}, Lz/a;->O0()J

    move-result-wide v0

    return-wide v0
.end method

.method public Q(F)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0, p1}, Lz/a;->Q(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public Q0(J)J
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0, p1, p2}, Lz/a;->Q0(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public T(JJJJLz/h;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lz/a;->T(JJJJLz/h;FLandroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method public U0(Landroidx/compose/ui/graphics/e4;JJJJFLz/h;Landroidx/compose/ui/graphics/v1;II)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-virtual/range {v1 .. v15}, Lz/a;->U0(Landroidx/compose/ui/graphics/e4;JJJJFLz/h;Landroidx/compose/ui/graphics/v1;II)V

    return-void
.end method

.method public V0(Landroidx/compose/ui/graphics/j1;JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    move-object v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lz/a;->V0(Landroidx/compose/ui/graphics/j1;JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method public Y0()V
    .locals 10

    invoke-interface {p0}, Lz/g;->H0()Lz/d;

    move-result-object v0

    invoke-interface {v0}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/node/d0;->b:Landroidx/compose/ui/node/n;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v1}, Landroidx/compose/ui/node/e0;->a(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/f$c;

    move-result-object v2

    const/4 v3, 0x4

    if-eqz v2, :cond_7

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_9

    instance-of v5, v2, Landroidx/compose/ui/node/n;

    if-eqz v5, :cond_0

    check-cast v2, Landroidx/compose/ui/node/n;

    invoke-virtual {p0}, Landroidx/compose/ui/node/d0;->H0()Lz/d;

    move-result-object v5

    invoke-interface {v5}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v5

    invoke-virtual {p0, v2, v0, v5}, Landroidx/compose/ui/node/d0;->z(Landroidx/compose/ui/node/n;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->f1()I

    move-result v5

    and-int/2addr v5, v1

    if-eqz v5, :cond_6

    instance-of v5, v2, Landroidx/compose/ui/node/i;

    if-eqz v5, :cond_6

    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/node/i;

    invoke-virtual {v5}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_1

    move-object v2, v5

    goto :goto_2

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Landroidx/compose/runtime/collection/b;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/f$c;

    invoke-direct {v4, v8, v6}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v2, v3

    :cond_3
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_1

    :cond_5
    if-ne v7, v8, :cond_6

    goto :goto_0

    :cond_6
    :goto_3
    invoke-static {v4}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v2

    goto :goto_0

    :cond_7
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v3

    invoke-interface {v1}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    if-ne v3, v1, :cond_8

    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/ui/node/d0;->H0()Lz/d;

    move-result-object v1

    invoke-interface {v1}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->u2(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_9
    return-void
.end method

.method public c0(F)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0, p1}, Lz/a;->c0(F)I

    move-result p1

    return p1
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0}, Lz/a;->getDensity()F

    move-result v0

    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0}, Lz/a;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public h0(J)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0, p1, p2}, Lz/a;->h0(J)F

    move-result p1

    return p1
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0}, Lz/a;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public i0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lz/a;->i0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method public final n(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/f$c;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 12

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    const/4 v1, 0x0

    move-object/from16 v2, p5

    move-object v3, v1

    :goto_0
    if-eqz v2, :cond_7

    instance-of v4, v2, Landroidx/compose/ui/node/n;

    if-eqz v4, :cond_0

    move-object v10, v2

    check-cast v10, Landroidx/compose/ui/node/n;

    move-object v5, p0

    move-object v6, p1

    move-wide v7, p2

    move-object/from16 v9, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/node/d0;->v(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/n;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->f1()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_6

    instance-of v4, v2, Landroidx/compose/ui/node/i;

    if-eqz v4, :cond_6

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/i;

    invoke-virtual {v4}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    const/4 v7, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_1

    move-object v2, v4

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Landroidx/compose/runtime/collection/b;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/f$c;

    invoke-direct {v3, v7, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v2, v1

    :cond_3
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v4

    goto :goto_1

    :cond_5
    if-ne v6, v7, :cond_6

    goto :goto_0

    :cond_6
    :goto_3
    invoke-static {v3}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v2

    goto :goto_0

    :cond_7
    return-void
.end method

.method public q0(JJJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v13}, Lz/a;->q0(JJJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method public final v(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/n;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 14

    move-object v1, p0

    move-object/from16 v0, p5

    iget-object v2, v1, Landroidx/compose/ui/node/d0;->b:Landroidx/compose/ui/node/n;

    iput-object v0, v1, Landroidx/compose/ui/node/d0;->b:Landroidx/compose/ui/node/n;

    iget-object v3, v1, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v3}, Lz/g;->H0()Lz/d;

    move-result-object v5

    invoke-interface {v5}, Lz/d;->getDensity()Lo0/e;

    move-result-object v5

    invoke-interface {v3}, Lz/g;->H0()Lz/d;

    move-result-object v6

    invoke-interface {v6}, Lz/d;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v6

    invoke-interface {v3}, Lz/g;->H0()Lz/d;

    move-result-object v7

    invoke-interface {v7}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v7

    invoke-interface {v3}, Lz/g;->H0()Lz/d;

    move-result-object v8

    invoke-interface {v8}, Lz/d;->i()J

    move-result-wide v8

    invoke-interface {v3}, Lz/g;->H0()Lz/d;

    move-result-object v10

    invoke-interface {v10}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v10

    invoke-interface {v3}, Lz/g;->H0()Lz/d;

    move-result-object v11

    move-object/from16 v12, p4

    invoke-interface {v11, v12}, Lz/d;->b(Lo0/e;)V

    invoke-interface {v11, v4}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    move-object v4, p1

    invoke-interface {v11, p1}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    move-wide/from16 v12, p2

    invoke-interface {v11, v12, v13}, Lz/d;->f(J)V

    move-object/from16 v12, p6

    invoke-interface {v11, v12}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->n()V

    :try_start_0
    invoke-interface {v0, p0}, Landroidx/compose/ui/node/n;->n(Lz/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-interface {v3}, Lz/g;->H0()Lz/d;

    move-result-object v0

    invoke-interface {v0, v5}, Lz/d;->b(Lo0/e;)V

    invoke-interface {v0, v6}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-interface {v0, v7}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    invoke-interface {v0, v8, v9}, Lz/d;->f(J)V

    invoke-interface {v0, v10}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    iput-object v2, v1, Landroidx/compose/ui/node/d0;->b:Landroidx/compose/ui/node/n;

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-interface {v3}, Lz/g;->H0()Lz/d;

    move-result-object v0

    invoke-interface {v0, v5}, Lz/d;->b(Lo0/e;)V

    invoke-interface {v0, v6}, Lz/d;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-interface {v0, v7}, Lz/d;->h(Landroidx/compose/ui/graphics/m1;)V

    invoke-interface {v0, v8, v9}, Lz/d;->f(J)V

    invoke-interface {v0, v10}, Lz/d;->d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    throw v2
.end method

.method public x0(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0, p1}, Lz/a;->x0(I)F

    move-result p1

    return p1
.end method

.method public y0(F)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/d0;->a:Lz/a;

    invoke-virtual {v0, p1}, Lz/a;->y0(F)F

    move-result p1

    return p1
.end method

.method public final z(Landroidx/compose/ui/node/n;Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/u;->d(J)J

    move-result-wide v3

    invoke-virtual {v5}, Landroidx/compose/ui/node/NodeCoordinator;->a1()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->W()Landroidx/compose/ui/node/d0;

    move-result-object v1

    move-object v2, p2

    move-object v6, p1

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/d0;->v(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/n;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method
