.class Lcom/bytedance/adsdk/sP/vS$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/vS;->Ym()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:F

.field final synthetic TKC:Lcom/bytedance/adsdk/sP/vS;

.field final synthetic sP:Lcom/bytedance/adsdk/sP/Jcg$Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;FLcom/bytedance/adsdk/sP/Jcg$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$10;->TKC:Lcom/bytedance/adsdk/sP/vS;

    iput p2, p0, Lcom/bytedance/adsdk/sP/vS$10;->Sj:F

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/vS$10;->sP:Lcom/bytedance/adsdk/sP/Jcg$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$10;->Sj:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$10;->TKC:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/vS;->sP(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$10;->TKC:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/vS;->uA(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/vS$sP;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$10;->TKC:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {p1}, Lcom/bytedance/adsdk/sP/vS;->uA(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/vS$sP;

    :cond_0
    return-void
.end method
