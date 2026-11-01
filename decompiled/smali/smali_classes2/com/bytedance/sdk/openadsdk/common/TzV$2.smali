.class Lcom/bytedance/sdk/openadsdk/common/TzV$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/view/ViewGroup$MarginLayoutParams;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/common/TzV;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/TzV;Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV$2;->sP:Lcom/bytedance/sdk/openadsdk/common/TzV;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/TzV$2;->Sj:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV$2;->Sj:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TzV$2;->sP:Lcom/bytedance/sdk/openadsdk/common/TzV;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/common/TzV;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TzV$2;->Sj:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
