.class Lcom/bytedance/sdk/openadsdk/core/model/TzV$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
