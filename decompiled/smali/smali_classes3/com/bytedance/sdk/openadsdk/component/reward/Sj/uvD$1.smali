.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD$1;->Sj:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/uvD;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->setProgress(I)V

    :cond_0
    return-void
.end method
