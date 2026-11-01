.class public Lcom/bytedance/adsdk/ugeno/core/sP/sP;
.super Ljava/lang/Object;


# instance fields
.field private EjP:Landroid/content/Context;

.field private HiB:Z

.field private Sj:F

.field private TKC:Lcom/bytedance/adsdk/ugeno/core/TEQ;

.field private sP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/core/TEQ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->EjP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->TKC:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/ugeno/core/aa;Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->HiB:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->Sj:F

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-gez p1, :cond_2

    iget p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->sP:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_8

    :cond_2
    iput-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->HiB:Z

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->HiB:Z

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->HiB:Z

    return v3

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->Sj:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_6

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->sP:F

    sub-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, p3, v2

    if-ltz p3, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_8

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->TKC:Lcom/bytedance/adsdk/ugeno/core/TEQ;

    invoke-interface {p1, p3, p2, p2}, Lcom/bytedance/adsdk/ugeno/core/aa;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V

    return v1

    :cond_6
    :goto_0
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->HiB:Z

    goto :goto_1

    :cond_7
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->Sj:F

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/sP/sP;->sP:F

    :cond_8
    :goto_1
    return v1
.end method
