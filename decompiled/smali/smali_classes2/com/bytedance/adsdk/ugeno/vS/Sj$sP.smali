.class public Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;
.super Lcom/bytedance/adsdk/ugeno/Dq/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/vS/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sP"
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private Sj(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    div-float/2addr v2, v1

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    div-float/2addr v3, v0

    mul-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object p1
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg(Lcom/bytedance/adsdk/ugeno/vS/Sj;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;->Sj(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;->Sj(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;->Sj:Lcom/bytedance/adsdk/ugeno/vS/Sj;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg(Lcom/bytedance/adsdk/ugeno/vS/Sj;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;->Sj(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
