.class public Lcom/bytedance/adsdk/sP/Sj/Sj/uA;
.super Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;


# instance fields
.field private final Dq:Landroid/graphics/RectF;

.field private final EjP:Ljava/lang/String;

.field private final Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:Z

.field private final Jcg:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/RadialGradient;",
            ">;"
        }
    .end annotation
.end field

.field private final TEQ:I

.field private final Ym:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Lcom/bytedance/adsdk/sP/TKC/sP/EjP;",
            "Lcom/bytedance/adsdk/sP/TKC/sP/EjP;",
            ">;"
        }
    .end annotation
.end field

.field private final aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private sef:Lcom/bytedance/adsdk/sP/Sj/sP/dNu;

.field private final uA:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

.field private final vS:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/graphics/LinearGradient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/vS;)V
    .locals 11

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->Dq()Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;->Sj()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->uA()Lcom/bytedance/adsdk/sP/TKC/sP/TzV$sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$sP;->Sj()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->aa()F

    move-result v6

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->EjP()Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    move-result-object v7

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->Jcg()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v8

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->TEQ()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->Ym()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/bytedance/adsdk/sP/TKC/Sj/EjP;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Ljava/util/List;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;)V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->vS:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Jcg:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Dq:Landroid/graphics/RectF;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->Sj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->EjP:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->sP()Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->uA:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->Fmk()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->HiB:Z

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/uA;->wE()Lcom/bytedance/adsdk/sP/Jcg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Jcg;->HiB()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->TEQ:I

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/TKC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/TKC;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Ym:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->HiB()Lcom/bytedance/adsdk/sP/TKC/Sj/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/vS;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    invoke-virtual {p3}, Lcom/bytedance/adsdk/sP/TKC/sP/vS;->vS()Lcom/bytedance/adsdk/sP/TKC/Sj/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/vS;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    return-void
.end method

.method private EjP()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq()F

    move-result v0

    iget v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->TEQ:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq()F

    move-result v1

    iget v2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->TEQ:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Ym:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Dq()F

    move-result v2

    iget v3, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->TEQ:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    mul-int/lit16 v0, v0, 0x20f

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, v2

    :cond_2
    return v0
.end method

.method private Sj([I)[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->sef:Lcom/bytedance/adsdk/sP/Sj/sP/dNu;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private TKC()Landroid/graphics/RadialGradient;
    .locals 13

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->EjP()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Jcg:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RadialGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Ym:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;->sP()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Sj([I)[I

    move-result-object v10

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;->Sj()[F

    move-result-object v11

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v7

    float-to-double v4, v0

    sub-float/2addr v1, v8

    float-to-double v0, v1

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v9, v0

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Jcg:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method

.method private sP()Landroid/graphics/LinearGradient;
    .locals 14

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->EjP()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->vS:Landroid/util/LongSparseArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Ym:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;->sP()[I

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Sj([I)[I

    move-result-object v11

    invoke-virtual {v4}, Lcom/bytedance/adsdk/sP/TKC/sP/EjP;->Sj()[F

    move-result-object v12

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->vS:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->HiB:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->Dq:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;->Sj(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->uA:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    sget-object v1, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->sP()Landroid/graphics/LinearGradient;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/uA;->TKC()Landroid/graphics/RadialGradient;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;->sP:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/sP/Sj/Sj/Sj;->Sj(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
