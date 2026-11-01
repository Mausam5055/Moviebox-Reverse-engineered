.class public Lcom/bytedance/adsdk/sP/Sj/sP/uvD;
.super Ljava/lang/Object;


# instance fields
.field private Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Lcom/bytedance/adsdk/sP/Jcg/TKC;",
            "Lcom/bytedance/adsdk/sP/Jcg/TKC;",
            ">;"
        }
    .end annotation
.end field

.field private final EjP:Landroid/graphics/Matrix;

.field private Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:[F

.field private Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final Sj:Landroid/graphics/Matrix;

.field private TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final TKC:Landroid/graphics/Matrix;

.field private Ym:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

.field private aa:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

.field private final sP:Landroid/graphics/Matrix;

.field private sef:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/sP/TKC/Sj/aa;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->Sj()Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->Sj()Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/HiB;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->sP()Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->sP()Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/Jcg;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/Jcg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/Jcg;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->EjP()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->EjP()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->Dq()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->Dq()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    :goto_4
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Ym:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sP:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TKC:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->HiB:[F

    goto :goto_5

    :cond_5
    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sP:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TKC:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP:Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->HiB:[F

    :goto_5
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->uA()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->uA()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    :goto_6
    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->HiB()Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->HiB()Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/EjP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->vS()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->vS()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    goto :goto_7

    :cond_8
    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    :goto_7
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->Jcg()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/aa;->Jcg()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/TKC/Sj/sP;->Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sef:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    return-void

    :cond_9
    iput-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sef:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    return-void
.end method

.method private HiB()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->HiB:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public EjP()Landroid/graphics/Matrix;
    .locals 13

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/bytedance/adsdk/sP/Sj/sP/dNu;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;->uA()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Ym:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    const/high16 v4, 0x42b40000    # 90.0f

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;->uA()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    :goto_1
    iget-object v5, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    if-nez v5, :cond_5

    move v4, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;->uA()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v4

    float-to-double v4, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    :goto_2
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;->uA()F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->HiB()V

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->HiB:[F

    const/4 v6, 0x0

    aput v3, v5, v6

    const/4 v7, 0x1

    aput v4, v5, v7

    neg-float v8, v4

    const/4 v9, 0x3

    aput v8, v5, v9

    const/4 v10, 0x4

    aput v3, v5, v10

    const/16 v11, 0x8

    aput v2, v5, v11

    iget-object v12, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sP:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->HiB()V

    iget-object v5, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->HiB:[F

    aput v2, v5, v6

    aput v0, v5, v9

    aput v2, v5, v10

    aput v2, v5, v11

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TKC:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->HiB()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->HiB:[F

    aput v3, v0, v6

    aput v8, v0, v7

    aput v4, v0, v9

    aput v3, v0, v10

    aput v2, v0, v11

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TKC:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sP:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TKC:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->EjP:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_6
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/sP/Jcg/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->Sj()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->sP()F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->Sj()F

    move-result v3

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->sP()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_8
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_9

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_a

    :cond_9
    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_b
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public Sj()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    return-object v0
.end method

.method public Sj(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sef:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    :cond_5
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    :cond_6
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Ym:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    :cond_7
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(F)V

    :cond_8
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sef:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    :cond_5
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    :cond_6
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Ym:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    :cond_7
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;)V

    :cond_8
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->TEQ:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sef:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Ym:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->aa:Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/Sj/sP/Sj;)V

    return-void
.end method

.method public TKC()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->sef:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    return-object v0
.end method

.method public sP(F)Landroid/graphics/Matrix;
    .locals 9

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Jcg:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Dq:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/adsdk/sP/Jcg/TKC;

    :goto_1
    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->Sj()F

    move-result v3

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Jcg/TKC;->sP()F

    move-result v2

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->uA:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->vS:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj;->Jcg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    :goto_2
    iget-object v2, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_5

    move v3, p1

    goto :goto_3

    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_7
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Sj:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public sP()Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Sj/sP/Sj<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Sj/sP/uvD;->Fmk:Lcom/bytedance/adsdk/sP/Sj/sP/Sj;

    return-object v0
.end method
