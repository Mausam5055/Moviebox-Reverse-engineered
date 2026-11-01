.class Lcom/bytedance/adsdk/sP/vS$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/vS;->TEQ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$9;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f7ae148    # 0.98f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$9;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/vS;->HiB(Lcom/bytedance/adsdk/sP/vS;)I

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$9;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/vS;->vS(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/Jcg$Sj;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/bytedance/adsdk/sP/Jcg$Sj;->EjP:I

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$9;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->Jcg(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$9;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/vS;->TKC(Lcom/bytedance/adsdk/sP/vS;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$9;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->Sj()V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$9;->Sj:Lcom/bytedance/adsdk/sP/vS;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/sP/vS;->setProgress(F)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$9;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/vS;->sP(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$9;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/vS;->Dq(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/vS$Sj;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$9;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/vS;->Dq(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/vS$Sj;

    :cond_1
    return-void
.end method
