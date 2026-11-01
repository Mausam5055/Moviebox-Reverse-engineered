.class public Lcom/bytedance/adsdk/sP/Sj/Sj/vS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/Ym;
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;


# instance fields
.field private Dq:Z

.field private final EjP:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

.field private final Sj:Landroid/graphics/Path;

.field private final TKC:Lcom/bytedance/adsdk/sP/uA;

.field private final sP:Ljava/lang/String;

.field private final vS:Lcom/bytedance/adsdk/sP/TKC/sP/sP;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/sP;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/sP;->Sj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->sP:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->TKC:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/sP;->TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/vS;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/sP;->sP()Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->vS:Lcom/bytedance/adsdk/sP/TKC/sP/sP;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    return-void
.end method

.method private sP()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Dq:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->TKC:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public EjP()Landroid/graphics/Path;
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Dq:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->vS:Lcom/bytedance/adsdk/sP/TKC/sP/sP;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TKC/sP/sP;->HiB()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Dq:Z

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->EjP:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    const v4, 0x3f0d6239    # 0.55228f

    mul-float v12, v3, v4

    mul-float/2addr v4, v1

    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->vS:Lcom/bytedance/adsdk/sP/TKC/sP/sP;

    invoke-virtual {v5}, Lcom/bytedance/adsdk/sP/TKC/sP/sP;->EjP()Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    neg-float v11, v1

    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v14, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    sub-float v8, v13, v12

    neg-float v6, v3

    sub-float v21, v13, v4

    const/16 v20, 0x0

    move v15, v8

    move/from16 v16, v11

    move/from16 v17, v6

    move/from16 v18, v21

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v7, v4

    move v9, v1

    move v14, v11

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    add-float/2addr v12, v13

    const/4 v11, 0x0

    move v6, v12

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v21

    move v8, v12

    move v9, v14

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    add-float v14, v12, v13

    sub-float v16, v13, v4

    const/4 v11, 0x0

    move v6, v14

    move v7, v15

    move v8, v3

    move/from16 v9, v16

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v6, v3

    move v7, v4

    move v8, v14

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    sub-float v17, v13, v12

    neg-float v3, v3

    const/4 v11, 0x0

    move/from16 v6, v17

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v14, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    const/16 v19, 0x0

    move v1, v15

    move v15, v3

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_0
    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->HiB:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    iget-object v3, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;->Sj(Landroid/graphics/Path;)V

    iput-boolean v2, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Dq:Z

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Sj:Landroid/graphics/Path;

    return-object v1
.end method

.method public Sj()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->sP()V

    return-void
.end method

.method public Sj(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;

    instance-of v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->sP()Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    move-result-object v1

    sget-object v2, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/vS;->Jcg:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;->Sj(Lcom/bytedance/adsdk/sP/Sj/Sj/dx;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
