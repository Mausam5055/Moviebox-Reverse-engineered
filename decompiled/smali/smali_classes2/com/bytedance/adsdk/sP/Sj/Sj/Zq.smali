.class public Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/Fmk;
.implements Lcom/bytedance/adsdk/sP/Sj/Sj/Ym;
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;


# instance fields
.field private final Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final EjP:Z

.field private final HiB:Lcom/bytedance/adsdk/sP/uA;

.field private final Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final Sj:Landroid/graphics/Path;

.field private TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final TKC:Ljava/lang/String;

.field private Ym:Z

.field private final sP:Landroid/graphics/RectF;

.field private final uA:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

.field private final vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/Ym;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->sP:Landroid/graphics/RectF;

    new-instance v0, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    invoke-direct {v0}, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->uA:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->Sj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->TKC:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->HiB()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->EjP:Z

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->HiB:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->EjP()Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/Ym;->sP()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p3, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    return-void
.end method

.method private sP()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Ym:Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->HiB:Lcom/bytedance/adsdk/sP/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/uA;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public EjP()Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Ym:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->EjP:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Ym:Z

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    iget-object v5, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    check-cast v5, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    invoke-virtual {v5}, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;->uA()F

    move-result v5

    :goto_0
    cmpl-float v7, v5, v6

    if-nez v7, :cond_3

    iget-object v7, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_3
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    cmpl-float v8, v5, v7

    if-lez v8, :cond_4

    move v5, v7

    :cond_4
    iget-object v7, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v7}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    iget-object v8, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget v10, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v1

    add-float/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    iget v9, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v3

    iget v10, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v1

    sub-float/2addr v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v8, v5, v6

    const/4 v9, 0x0

    const/high16 v10, 0x42b40000    # 90.0f

    if-lez v8, :cond_5

    iget-object v11, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->sP:Landroid/graphics/RectF;

    iget v12, v7, Landroid/graphics/PointF;->x:F

    add-float v13, v12, v3

    mul-float v14, v5, v4

    sub-float/2addr v13, v14

    iget v15, v7, Landroid/graphics/PointF;->y:F

    add-float v16, v15, v1

    sub-float v14, v16, v14

    add-float/2addr v12, v3

    add-float/2addr v15, v1

    invoke-virtual {v11, v13, v14, v12, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v11, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    iget-object v12, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->sP:Landroid/graphics/RectF;

    invoke-virtual {v11, v12, v6, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_5
    iget-object v6, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v3

    add-float/2addr v11, v5

    iget v12, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v1

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_6

    iget-object v6, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->sP:Landroid/graphics/RectF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v3

    iget v13, v7, Landroid/graphics/PointF;->y:F

    add-float v14, v13, v1

    mul-float v15, v5, v4

    sub-float/2addr v14, v15

    sub-float/2addr v11, v3

    add-float/2addr v11, v15

    add-float/2addr v13, v1

    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->sP:Landroid/graphics/RectF;

    invoke-virtual {v6, v11, v10, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_6
    iget-object v6, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v3

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v1

    add-float/2addr v12, v5

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_7

    iget-object v6, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->sP:Landroid/graphics/RectF;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    sub-float v12, v11, v3

    iget v13, v7, Landroid/graphics/PointF;->y:F

    sub-float v14, v13, v1

    sub-float/2addr v11, v3

    mul-float v15, v5, v4

    add-float/2addr v11, v15

    sub-float/2addr v13, v1

    add-float/2addr v13, v15

    invoke-virtual {v6, v12, v14, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v6, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    iget-object v11, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->sP:Landroid/graphics/RectF;

    const/high16 v12, 0x43340000    # 180.0f

    invoke-virtual {v6, v11, v12, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_7
    iget-object v6, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v3

    sub-float/2addr v11, v5

    iget v12, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v1

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v8, :cond_8

    iget-object v6, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->sP:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    add-float v11, v8, v3

    mul-float/2addr v5, v4

    sub-float/2addr v11, v5

    iget v4, v7, Landroid/graphics/PointF;->y:F

    sub-float v7, v4, v1

    add-float/2addr v8, v3

    sub-float/2addr v4, v1

    add-float/2addr v4, v5

    invoke-virtual {v6, v11, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->sP:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v1, v3, v4, v10, v9}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_8
    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->uA:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    iget-object v3, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;->Sj(Landroid/graphics/Path;)V

    iput-boolean v2, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Ym:Z

    iget-object v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->Sj:Landroid/graphics/Path;

    return-object v1
.end method

.method public Sj()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->sP()V

    return-void
.end method

.method public Sj(Ljava/util/List;Ljava/util/List;)V
    .locals 4
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

    if-ge p2, v0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;

    instance-of v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->sP()Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    move-result-object v2

    sget-object v3, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->uA:Lcom/bytedance/adsdk/sP/Sj/Sj/sP;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/Sj/Sj/sP;->Sj(Lcom/bytedance/adsdk/sP/Sj/Sj/dx;)V

    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/bytedance/adsdk/sP/Sj/Sj/dNu;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/Sj/dNu;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/Sj/dNu;->sP()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Zq;->TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
