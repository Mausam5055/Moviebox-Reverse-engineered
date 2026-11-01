.class public Lcom/bytedance/adsdk/sP/vS/TKC;
.super Lcom/bytedance/adsdk/sP/vS/Sj;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private Dq:F

.field private EjP:J

.field private HiB:F

.field private Jcg:I

.field protected Sj:Z

.field private TEQ:Lcom/bytedance/adsdk/sP/Jcg;

.field private TKC:Z

.field private Ym:Z

.field private sP:F

.field private uA:F

.field private vS:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/Sj;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->sP:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TKC:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->EjP:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->HiB:F

    iput v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Jcg:I

    const/high16 v1, -0x31000000

    iput v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Dq:F

    const/high16 v1, 0x4f000000

    iput v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->uA:F

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj:Z

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Ym:Z

    return-void
.end method

.method private RiZ()F
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0

    :cond_0
    const v1, 0x4e6e6b28    # 1.0E9f

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->aa()F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->sP:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v1, v0

    return v1
.end method

.method private dx()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Dq:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->uA:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Dq:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->uA:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const-string v1, "Frame must be [%f,%f]. It is %f"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sU()Z
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public Dq()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Dq:F

    const/high16 v0, 0x4f000000

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->uA:F

    return-void
.end method

.method protected EjP(Z)V
    .locals 1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj:Z

    :cond_0
    return-void
.end method

.method public Fmk()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->TzV()V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/Sj;->EjP()V

    return-void
.end method

.method public Jcg()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    return v0
.end method

.method public Sj(F)V
    .locals 2

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->HiB:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/adsdk/sP/vS/HiB;->sP(FFF)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->HiB:F

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Ym:Z

    if-eqz v0, :cond_1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    :cond_1
    iput p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->EjP:J

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/Sj;->TKC()V

    return-void
.end method

.method public Sj(FF)V
    .locals 3

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const v0, -0x800001

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->vS()F

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v1, :cond_1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Jcg;->Jcg()F

    move-result v1

    :goto_1
    invoke-static {p1, v0, v1}, Lcom/bytedance/adsdk/sP/vS/HiB;->sP(FFF)F

    move-result p1

    invoke-static {p2, v0, v1}, Lcom/bytedance/adsdk/sP/vS/HiB;->sP(FFF)F

    move-result p2

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Dq:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->uA:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_3

    :cond_2
    iput p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Dq:F

    iput p2, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->uA:F

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    invoke-static {v0, p1, p2}, Lcom/bytedance/adsdk/sP/vS/HiB;->sP(FFF)F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(F)V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "minFrame (%s) must be <= maxFrame (%s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Sj(I)V
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->uA:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(FF)V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/Jcg;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Dq:F

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Jcg;->vS()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->uA:F

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Jcg;->Jcg()F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(FF)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Jcg;->vS()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/Jcg;->Jcg()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(FF)V

    :goto_1
    iget p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->HiB:F

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(F)V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/Sj;->TKC()V

    return-void
.end method

.method public TEQ()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->sP:F

    return v0
.end method

.method public TKC(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->sP:F

    return-void
.end method

.method public TKC(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Ym:Z

    return-void
.end method

.method protected TzV()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->EjP(Z)V

    return-void
.end method

.method public Ym()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj:Z

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sU()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS/Sj;->Sj(Z)V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sU()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v0

    :goto_0
    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(F)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->EjP:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Jcg:I

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->dNu()V

    return-void
.end method

.method public Zq()F
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Dq:F

    const/high16 v2, -0x31000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->vS()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public aa()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->TzV()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sU()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS/Sj;->sP(Z)V

    return-void
.end method

.method public cancel()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sP()V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->TzV()V

    return-void
.end method

.method protected dNu()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->EjP(Z)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method public doFrame(J)V
    .locals 6

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->dNu()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "LottieValueAnimator#doFrame"

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->Sj(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->EjP:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    sub-long v3, p1, v1

    :goto_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->RiZ()F

    move-result v1

    long-to-float v2, v3

    div-float/2addr v2, v1

    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->HiB:F

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sU()Z

    move-result v3

    if-eqz v3, :cond_2

    neg-float v2, v2

    :cond_2
    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/bytedance/adsdk/sP/vS/HiB;->TKC(FFF)Z

    move-result v2

    iget v3, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->HiB:F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/bytedance/adsdk/sP/vS/HiB;->sP(FFF)F

    move-result v1

    iput v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->HiB:F

    iget-boolean v4, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Ym:Z

    if-eqz v4, :cond_3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v1, v4

    :cond_3
    iput v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    iput-wide p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->EjP:J

    iget-boolean v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Ym:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->HiB:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/Sj;->TKC()V

    :cond_5
    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Jcg:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result v2

    if-lt v1, v2, :cond_7

    iget p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->sP:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result p1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result p1

    :goto_1
    iput p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->HiB:F

    iput p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->TzV()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sU()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/vS/Sj;->sP(Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/Sj;->Sj()V

    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Jcg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Jcg:I

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    iget-boolean v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TKC:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TKC:Z

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uA()V

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sU()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v1

    :goto_2
    iput v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->HiB:F

    iput v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    :goto_3
    iput-wide p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->EjP:J

    :cond_a
    :goto_4
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->dx()V

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Ljava/lang/String;)F

    :cond_b
    :goto_5
    return-void
.end method

.method public getAnimatedFraction()F
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sU()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v0

    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v2

    :goto_0
    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_1
    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v2

    goto :goto_0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->vS()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->HiB()F

    move-result v0

    float-to-long v0, v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj:Z

    return v0
.end method

.method sP()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/adsdk/sP/vS/Sj;->sP()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sU()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS/Sj;->sP(Z)V

    return-void
.end method

.method public sP(F)V
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Dq:F

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(FF)V

    return-void
.end method

.method public sef()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj:Z

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->dNu()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->EjP:J

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sU()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Jcg()F

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(F)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->sU()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Jcg()F

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uvD()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Zq()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->Sj(F)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/Sj;->HiB()V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TKC:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TKC:Z

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->uA()V

    :cond_0
    return-void
.end method

.method public uA()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/sP/vS/TKC;->TKC(F)V

    return-void
.end method

.method public uvD()F
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->uA:F

    const/high16 v2, 0x4f000000

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->Jcg()F

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public vS()F
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->vS:F

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->vS()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/Jcg;->Jcg()F

    move-result v0

    iget-object v2, p0, Lcom/bytedance/adsdk/sP/vS/TKC;->TEQ:Lcom/bytedance/adsdk/sP/Jcg;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/sP/Jcg;->vS()F

    move-result v2

    sub-float/2addr v0, v2

    div-float/2addr v1, v0

    return v1
.end method
