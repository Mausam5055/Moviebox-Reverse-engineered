.class public final Lz/a;
.super Ljava/lang/Object;

# interfaces
.implements Lz/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/a$a;
    }
.end annotation


# instance fields
.field private final a:Lz/a$a;

.field private final b:Lz/d;

.field private c:Landroidx/compose/ui/graphics/m4;

.field private d:Landroidx/compose/ui/graphics/m4;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lz/a$a;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lz/a$a;-><init>(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/m1;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, p0, Lz/a;->a:Lz/a$a;

    new-instance v0, Lz/a$b;

    invoke-direct {v0, p0}, Lz/a$b;-><init>(Lz/a;)V

    iput-object v0, p0, Lz/a;->b:Lz/d;

    return-void
.end method

.method static synthetic B(Lz/a;Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    sget-object p6, Lz/g;->o1:Lz/g$a;

    invoke-virtual {p6}, Lz/g$a;->b()I

    move-result p6

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lz/a;->z(Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;

    move-result-object p0

    return-object p0
.end method

.method private final C(JFFIILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;
    .locals 3

    invoke-direct {p0}, Lz/a;->L()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    invoke-direct {p0, p1, p2, p8}, Lz/a;->G(JF)J

    move-result-wide p1

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->a()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result p8

    if-nez p8, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/graphics/m4;->s(J)V

    :cond_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->y()Landroid/graphics/Shader;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Landroidx/compose/ui/graphics/m4;->x(Landroid/graphics/Shader;)V

    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->i()Landroidx/compose/ui/graphics/v1;

    move-result-object p1

    invoke-static {p1, p9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {v0, p9}, Landroidx/compose/ui/graphics/m4;->z(Landroidx/compose/ui/graphics/v1;)V

    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->l()I

    move-result p1

    invoke-static {p1, p10}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v0, p10}, Landroidx/compose/ui/graphics/m4;->n(I)V

    :cond_3
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->getStrokeWidth()F

    move-result p1

    cmpg-float p1, p1, p3

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v0, p3}, Landroidx/compose/ui/graphics/m4;->setStrokeWidth(F)V

    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->v()F

    move-result p1

    cmpg-float p1, p1, p4

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v0, p4}, Landroidx/compose/ui/graphics/m4;->A(F)V

    :goto_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->p()I

    move-result p1

    invoke-static {p1, p5}, Landroidx/compose/ui/graphics/c5;->e(II)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {v0, p5}, Landroidx/compose/ui/graphics/m4;->m(I)V

    :cond_6
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->u()I

    move-result p1

    invoke-static {p1, p6}, Landroidx/compose/ui/graphics/d5;->e(II)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {v0, p6}, Landroidx/compose/ui/graphics/m4;->r(I)V

    :cond_7
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->t()Landroidx/compose/ui/graphics/p4;

    invoke-static {p2, p7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-interface {v0, p7}, Landroidx/compose/ui/graphics/m4;->q(Landroidx/compose/ui/graphics/p4;)V

    :cond_8
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->B()I

    move-result p1

    invoke-static {p1, p11}, Landroidx/compose/ui/graphics/x3;->d(II)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-interface {v0, p11}, Landroidx/compose/ui/graphics/m4;->o(I)V

    :cond_9
    return-object v0
.end method

.method static synthetic D(Lz/a;JFFIILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;
    .locals 13

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    sget-object v0, Lz/g;->o1:Lz/g$a;

    invoke-virtual {v0}, Lz/g$a;->b()I

    move-result v0

    move v12, v0

    goto :goto_0

    :cond_0
    move/from16 v12, p11

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lz/a;->C(JFFIILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    return-object v0
.end method

.method private final G(JF)J
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/u1;->n(J)F

    move-result v0

    mul-float v3, v0, p3

    const/16 v7, 0xe

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v1, p1

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/u1;->k(JFFFFILjava/lang/Object;)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private final I()Landroidx/compose/ui/graphics/m4;
    .locals 2

    iget-object v0, p0, Lz/a;->c:Landroidx/compose/ui/graphics/m4;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/n4;->a:Landroidx/compose/ui/graphics/n4$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n4$a;->a()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->C(I)V

    iput-object v0, p0, Lz/a;->c:Landroidx/compose/ui/graphics/m4;

    :cond_0
    return-object v0
.end method

.method private final L()Landroidx/compose/ui/graphics/m4;
    .locals 2

    iget-object v0, p0, Lz/a;->d:Landroidx/compose/ui/graphics/m4;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/t0;->a()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/n4;->a:Landroidx/compose/ui/graphics/n4$a;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/n4$a;->b()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->C(I)V

    iput-object v0, p0, Lz/a;->d:Landroidx/compose/ui/graphics/m4;

    :cond_0
    return-object v0
.end method

.method private final M(Lz/h;)Landroidx/compose/ui/graphics/m4;
    .locals 3

    sget-object v0, Lz/l;->a:Lz/l;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lz/a;->I()Landroidx/compose/ui/graphics/m4;

    move-result-object p1

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lz/m;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lz/a;->L()Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->getStrokeWidth()F

    move-result v1

    check-cast p1, Lz/m;

    invoke-virtual {p1}, Lz/m;->f()F

    move-result v2

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lz/m;->f()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->setStrokeWidth(F)V

    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->p()I

    move-result v1

    invoke-virtual {p1}, Lz/m;->b()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/c5;->e(II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lz/m;->b()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->m(I)V

    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->v()F

    move-result v1

    invoke-virtual {p1}, Lz/m;->d()F

    move-result v2

    cmpg-float v1, v1, v2

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lz/m;->d()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->A(F)V

    :goto_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->u()I

    move-result v1

    invoke-virtual {p1}, Lz/m;->c()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/d5;->e(II)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lz/m;->c()I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->r(I)V

    :cond_4
    invoke-interface {v0}, Landroidx/compose/ui/graphics/m4;->t()Landroidx/compose/ui/graphics/p4;

    invoke-virtual {p1}, Lz/m;->e()Landroidx/compose/ui/graphics/p4;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lz/m;->e()Landroidx/compose/ui/graphics/p4;

    invoke-interface {v0, v1}, Landroidx/compose/ui/graphics/m4;->q(Landroidx/compose/ui/graphics/p4;)V

    :cond_5
    move-object p1, v0

    :goto_2
    return-object p1

    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final n(JLz/h;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;
    .locals 2

    invoke-direct {p0, p3}, Lz/a;->M(Lz/h;)Landroidx/compose/ui/graphics/m4;

    move-result-object p3

    invoke-direct {p0, p1, p2, p4}, Lz/a;->G(JF)J

    move-result-wide p1

    invoke-interface {p3}, Landroidx/compose/ui/graphics/m4;->a()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result p4

    if-nez p4, :cond_0

    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/graphics/m4;->s(J)V

    :cond_0
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m4;->y()Landroid/graphics/Shader;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p3, p1}, Landroidx/compose/ui/graphics/m4;->x(Landroid/graphics/Shader;)V

    :cond_1
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m4;->i()Landroidx/compose/ui/graphics/v1;

    move-result-object p1

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p3, p5}, Landroidx/compose/ui/graphics/m4;->z(Landroidx/compose/ui/graphics/v1;)V

    :cond_2
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m4;->l()I

    move-result p1

    invoke-static {p1, p6}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3, p6}, Landroidx/compose/ui/graphics/m4;->n(I)V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/ui/graphics/m4;->B()I

    move-result p1

    invoke-static {p1, p7}, Landroidx/compose/ui/graphics/x3;->d(II)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p3, p7}, Landroidx/compose/ui/graphics/m4;->o(I)V

    :cond_4
    return-object p3
.end method

.method static synthetic v(Lz/a;JLz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;
    .locals 9

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    sget-object v0, Lz/g;->o1:Lz/g$a;

    invoke-virtual {v0}, Lz/g$a;->b()I

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lz/a;->n(JLz/h;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    return-object v0
.end method

.method private final z(Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;
    .locals 4

    invoke-direct {p0, p2}, Lz/a;->M(Lz/h;)Landroidx/compose/ui/graphics/m4;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lz/a;->i()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/compose/ui/graphics/j1;->a(JLandroidx/compose/ui/graphics/m4;F)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->y()Landroid/graphics/Shader;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroidx/compose/ui/graphics/m4;->x(Landroid/graphics/Shader;)V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->a()J

    move-result-wide v0

    sget-object p1, Landroidx/compose/ui/graphics/u1;->b:Landroidx/compose/ui/graphics/u1$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/u1;->m(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/u1$a;->a()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/graphics/m4;->s(J)V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, p3

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p2, p3}, Landroidx/compose/ui/graphics/m4;->setAlpha(F)V

    :goto_0
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->i()Landroidx/compose/ui/graphics/v1;

    move-result-object p1

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p2, p4}, Landroidx/compose/ui/graphics/m4;->z(Landroidx/compose/ui/graphics/v1;)V

    :cond_4
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->l()I

    move-result p1

    invoke-static {p1, p5}, Landroidx/compose/ui/graphics/c1;->E(II)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-interface {p2, p5}, Landroidx/compose/ui/graphics/m4;->n(I)V

    :cond_5
    invoke-interface {p2}, Landroidx/compose/ui/graphics/m4;->B()I

    move-result p1

    invoke-static {p1, p6}, Landroidx/compose/ui/graphics/x3;->d(II)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {p2, p6}, Landroidx/compose/ui/graphics/m4;->o(I)V

    :cond_6
    return-object p2
.end method


# virtual methods
.method public C0()F
    .locals 1

    iget-object v0, p0, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->f()Lo0/e;

    move-result-object v0

    invoke-interface {v0}, Lo0/n;->C0()F

    move-result v0

    return v0
.end method

.method public D0(Landroidx/compose/ui/graphics/Path;JFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 12

    move-object v10, p0

    iget-object v0, v10, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v11

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p2

    move-object/from16 v3, p5

    move/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v9}, Lz/a;->v(Lz/a;JLz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    move-object v1, p1

    invoke-interface {v11, p1, v0}, Landroidx/compose/ui/graphics/m1;->q(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public synthetic E0(F)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->e(Lo0/e;F)F

    move-result p1

    return p1
.end method

.method public final F()Lz/a$a;
    .locals 1

    iget-object v0, p0, Lz/a;->a:Lz/a$a;

    return-object v0
.end method

.method public G0(Ljava/util/List;IJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 16

    move-object/from16 v14, p0

    iget-object v0, v14, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v15

    sget-object v0, Landroidx/compose/ui/graphics/d5;->a:Landroidx/compose/ui/graphics/d5$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/d5$a;->b()I

    move-result v6

    const/16 v12, 0x200

    const/4 v13, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v5, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v13}, Lz/a;->D(Lz/a;JFFIILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v15, v2, v1, v0}, Landroidx/compose/ui/graphics/m1;->g(ILjava/util/List;Landroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public synthetic H(F)J
    .locals 2

    invoke-static {p0, p1}, Lo0/m;->b(Lo0/n;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public H0()Lz/d;
    .locals 1

    iget-object v0, p0, Lz/a;->b:Lz/d;

    return-object v0
.end method

.method public synthetic J(J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/m;->a(Lo0/n;J)F

    move-result p1

    return p1
.end method

.method public K0(JFJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 12

    move-object v10, p0

    iget-object v0, v10, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v11

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object/from16 v3, p7

    move/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p9

    invoke-static/range {v0 .. v9}, Lz/a;->v(Lz/a;JLz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    move v1, p3

    move-wide/from16 v2, p4

    invoke-interface {v11, v2, v3, p3, v0}, Landroidx/compose/ui/graphics/m1;->r(JFLandroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public L0(JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 16

    move-object/from16 v10, p0

    iget-object v0, v10, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v11

    invoke-static/range {p3 .. p4}, Ly/g;->m(J)F

    move-result v12

    invoke-static/range {p3 .. p4}, Ly/g;->n(J)F

    move-result v13

    invoke-static/range {p3 .. p4}, Ly/g;->m(J)F

    move-result v0

    invoke-static/range {p5 .. p6}, Ly/m;->i(J)F

    move-result v1

    add-float v14, v0, v1

    invoke-static/range {p3 .. p4}, Ly/g;->n(J)F

    move-result v0

    invoke-static/range {p5 .. p6}, Ly/m;->g(J)F

    move-result v1

    add-float v15, v0, v1

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p8

    move/from16 v4, p7

    move-object/from16 v5, p9

    move/from16 v6, p10

    invoke-static/range {v0 .. v9}, Lz/a;->v(Lz/a;JLz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    move-object/from16 p1, v11

    move/from16 p2, v12

    move/from16 p3, v13

    move/from16 p4, v14

    move/from16 p5, v15

    move-object/from16 p6, v0

    invoke-interface/range {p1 .. p6}, Landroidx/compose/ui/graphics/m1;->f(FFFFLandroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public N0(Landroidx/compose/ui/graphics/j1;JJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 15

    move-object v9, p0

    iget-object v0, v9, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v10

    invoke-static/range {p2 .. p3}, Ly/g;->m(J)F

    move-result v11

    invoke-static/range {p2 .. p3}, Ly/g;->n(J)F

    move-result v12

    invoke-static/range {p2 .. p3}, Ly/g;->m(J)F

    move-result v0

    invoke-static/range {p4 .. p5}, Ly/m;->i(J)F

    move-result v1

    add-float v13, v0, v1

    invoke-static/range {p2 .. p3}, Ly/g;->n(J)F

    move-result v0

    invoke-static/range {p4 .. p5}, Ly/m;->g(J)F

    move-result v1

    add-float v14, v0, v1

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move/from16 v3, p6

    move-object/from16 v4, p8

    move/from16 v5, p9

    invoke-static/range {v0 .. v8}, Lz/a;->B(Lz/a;Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    move-object/from16 p1, v10

    move/from16 p2, v11

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v14

    move-object/from16 p6, v0

    invoke-interface/range {p1 .. p6}, Landroidx/compose/ui/graphics/m1;->f(FFFFLandroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public synthetic O0()J
    .locals 2

    invoke-static {p0}, Lz/f;->a(Lz/g;)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic Q(F)J
    .locals 2

    invoke-static {p0, p1}, Lo0/d;->g(Lo0/e;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic Q0(J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/d;->f(Lo0/e;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public T(JJJJLz/h;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 18

    move-object/from16 v10, p0

    iget-object v0, v10, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v11

    invoke-static/range {p3 .. p4}, Ly/g;->m(J)F

    move-result v12

    invoke-static/range {p3 .. p4}, Ly/g;->n(J)F

    move-result v13

    invoke-static/range {p3 .. p4}, Ly/g;->m(J)F

    move-result v0

    invoke-static/range {p5 .. p6}, Ly/m;->i(J)F

    move-result v1

    add-float v14, v0, v1

    invoke-static/range {p3 .. p4}, Ly/g;->n(J)F

    move-result v0

    invoke-static/range {p5 .. p6}, Ly/m;->g(J)F

    move-result v1

    add-float v15, v0, v1

    invoke-static/range {p7 .. p8}, Ly/a;->d(J)F

    move-result v16

    invoke-static/range {p7 .. p8}, Ly/a;->e(J)F

    move-result v17

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p9

    move/from16 v4, p10

    move-object/from16 v5, p11

    move/from16 v6, p12

    invoke-static/range {v0 .. v9}, Lz/a;->v(Lz/a;JLz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    move-object/from16 p1, v11

    move/from16 p2, v12

    move/from16 p3, v13

    move/from16 p4, v14

    move/from16 p5, v15

    move/from16 p6, v16

    move/from16 p7, v17

    move-object/from16 p8, v0

    invoke-interface/range {p1 .. p8}, Landroidx/compose/ui/graphics/m1;->s(FFFFFFLandroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public U0(Landroidx/compose/ui/graphics/e4;JJJJFLz/h;Landroidx/compose/ui/graphics/v1;II)V
    .locals 19

    move-object/from16 v7, p0

    iget-object v0, v7, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v8

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p11

    move/from16 v3, p10

    move-object/from16 v4, p12

    move/from16 v5, p13

    move/from16 v6, p14

    invoke-direct/range {v0 .. v6}, Lz/a;->z(Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;II)Landroidx/compose/ui/graphics/m4;

    move-result-object v18

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-wide/from16 v16, p8

    invoke-interface/range {v8 .. v18}, Landroidx/compose/ui/graphics/m1;->h(Landroidx/compose/ui/graphics/e4;JJJJLandroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public V0(Landroidx/compose/ui/graphics/j1;JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 17

    move-object/from16 v9, p0

    iget-object v0, v9, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v10

    invoke-static/range {p2 .. p3}, Ly/g;->m(J)F

    move-result v11

    invoke-static/range {p2 .. p3}, Ly/g;->n(J)F

    move-result v12

    invoke-static/range {p2 .. p3}, Ly/g;->m(J)F

    move-result v0

    invoke-static/range {p4 .. p5}, Ly/m;->i(J)F

    move-result v1

    add-float v13, v0, v1

    invoke-static/range {p2 .. p3}, Ly/g;->n(J)F

    move-result v0

    invoke-static/range {p4 .. p5}, Ly/m;->g(J)F

    move-result v1

    add-float v14, v0, v1

    invoke-static/range {p6 .. p7}, Ly/a;->d(J)F

    move-result v15

    invoke-static/range {p6 .. p7}, Ly/a;->e(J)F

    move-result v16

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    move/from16 v3, p8

    move-object/from16 v4, p10

    move/from16 v5, p11

    invoke-static/range {v0 .. v8}, Lz/a;->B(Lz/a;Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    move-object/from16 p1, v10

    move/from16 p2, v11

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    move/from16 p7, v16

    move-object/from16 p8, v0

    invoke-interface/range {p1 .. p8}, Landroidx/compose/ui/graphics/m1;->s(FFFFFFLandroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public synthetic c0(F)I
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->a(Lo0/e;F)I

    move-result p1

    return p1
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->f()Lo0/e;

    move-result-object v0

    invoke-interface {v0}, Lo0/e;->getDensity()F

    move-result v0

    return v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->g()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h0(J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/d;->d(Lo0/e;J)F

    move-result p1

    return p1
.end method

.method public synthetic i()J
    .locals 2

    invoke-static {p0}, Lz/f;->b(Lz/g;)J

    move-result-wide v0

    return-wide v0
.end method

.method public i0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 11

    move-object v9, p0

    iget-object v0, v9, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v10

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v8}, Lz/a;->B(Lz/a;Landroidx/compose/ui/graphics/j1;Lz/h;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    move-object v1, p1

    invoke-interface {v10, p1, v0}, Landroidx/compose/ui/graphics/m1;->q(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public q0(JJJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;I)V
    .locals 16

    move-object/from16 v14, p0

    iget-object v0, v14, Lz/a;->a:Lz/a$a;

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v15

    sget-object v0, Landroidx/compose/ui/graphics/d5;->a:Landroidx/compose/ui/graphics/d5$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/d5$a;->b()I

    move-result v6

    const/16 v12, 0x200

    const/4 v13, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p7

    move/from16 v5, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    invoke-static/range {v0 .. v13}, Lz/a;->D(Lz/a;JFFIILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IIILjava/lang/Object;)Landroidx/compose/ui/graphics/m4;

    move-result-object v0

    move-object/from16 p7, v15

    move-wide/from16 p8, p3

    move-wide/from16 p10, p5

    move-object/from16 p12, v0

    invoke-interface/range {p7 .. p12}, Landroidx/compose/ui/graphics/m1;->m(JJLandroidx/compose/ui/graphics/m4;)V

    return-void
.end method

.method public synthetic x0(I)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->c(Lo0/e;I)F

    move-result p1

    return p1
.end method

.method public synthetic y0(F)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->b(Lo0/e;F)F

    move-result p1

    return p1
.end method
