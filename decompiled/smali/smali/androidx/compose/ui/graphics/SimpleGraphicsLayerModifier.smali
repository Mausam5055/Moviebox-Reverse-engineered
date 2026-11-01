.class final Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/x;


# instance fields
.field private A:J

.field private B:J

.field private C:I

.field private D:Lkotlin/jvm/functions/Function1;

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:J

.field private y:Landroidx/compose/ui/graphics/a5;

.field private z:Z


# direct methods
.method private constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/a5;ZLandroidx/compose/ui/graphics/w4;JJI)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    move v1, p1

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->n:F

    move v1, p2

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->o:F

    move v1, p3

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->p:F

    move v1, p4

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->q:F

    move v1, p5

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->r:F

    move v1, p6

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->s:F

    move v1, p7

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->t:F

    move v1, p8

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->u:F

    move v1, p9

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->v:F

    move v1, p10

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->w:F

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->x:J

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->y:Landroidx/compose/ui/graphics/a5;

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->z:Z

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->A:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->B:J

    move/from16 v1, p20

    iput v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->C:I

    new-instance v1, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$layerBlock$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$layerBlock$1;-><init>(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V

    iput-object v1, v0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->D:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/a5;ZLandroidx/compose/ui/graphics/w4;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;-><init>(FFFFFFFFFFJLandroidx/compose/ui/graphics/a5;ZLandroidx/compose/ui/graphics/w4;JJI)V

    return-void
.end method

.method public static final synthetic D1(Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->D:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method public final A()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->o:F

    return v0
.end method

.method public final A0(Landroidx/compose/ui/graphics/a5;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->y:Landroidx/compose/ui/graphics/a5;

    return-void
.end method

.method public final E1()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->p:F

    return v0
.end method

.method public final F1()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->A:J

    return-wide v0
.end method

.method public final G1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->z:Z

    return v0
.end method

.method public final H1()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->C:I

    return v0
.end method

.method public final I1()Landroidx/compose/ui/graphics/w4;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final J1()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->s:F

    return v0
.end method

.method public final K1()Landroidx/compose/ui/graphics/a5;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->y:Landroidx/compose/ui/graphics/a5;

    return-object v0
.end method

.method public final L1()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->B:J

    return-wide v0
.end method

.method public final M1()V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->D:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->L2(Lkotlin/jvm/functions/Function1;Z)V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->r:F

    return-void
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->n:F

    return-void
.end method

.method public final b0()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->x:J

    return-wide v0
.end method

.method public final c(Landroidx/compose/ui/graphics/w4;)V
    .locals 0

    return-void
.end method

.method public final d(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->w:F

    return-void
.end method

.method public final d0(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->x:J

    return-void
.end method

.method public final e(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->t:F

    return-void
.end method

.method public final f(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->u:F

    return-void
.end method

.method public final g(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->v:F

    return-void
.end method

.method public final h(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->o:F

    return-void
.end method

.method public i1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->q:F

    return-void
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->C:I

    return-void
.end method

.method public final m()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->u:F

    return v0
.end method

.method public final o()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->v:F

    return v0
.end method

.method public final p(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->A:J

    return-void
.end method

.method public final q()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->w:F

    return v0
.end method

.method public final r(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->z:Z

    return-void
.end method

.method public final s(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->B:J

    return-void
.end method

.method public final setAlpha(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->p:F

    return-void
.end method

.method public final t()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->n:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleGraphicsLayerModifier(scaleX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", scaleY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->p:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", translationX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->q:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", translationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", shadowElevation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->s:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotationX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->t:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotationY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->u:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rotationZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->v:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", cameraDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transformOrigin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->x:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/e5;->g(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->y:Landroidx/compose/ui/graphics/a5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renderEffect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ambientShadowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->A:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spotShadowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->B:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/u1;->t(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", compositingStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->C:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/w3;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->s:F

    return-void
.end method

.method public final w()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->r:F

    return v0
.end method

.method public final x()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->q:F

    return v0
.end method

.method public final y()F
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;->t:F

    return v0
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 7

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/s;->P(J)Landroidx/compose/ui/layout/g0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->u0()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/g0;->l0()I

    move-result v2

    new-instance v4, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$measure$1;

    invoke-direct {v4, p2, p0}, Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier$measure$1;-><init>(Landroidx/compose/ui/layout/g0;Landroidx/compose/ui/graphics/SimpleGraphicsLayerModifier;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/w;->b(Landroidx/compose/ui/layout/x;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method
