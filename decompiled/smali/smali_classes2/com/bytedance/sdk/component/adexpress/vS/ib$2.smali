.class Lcom/bytedance/sdk/component/adexpress/vS/ib$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/vS/ib;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/vS/ib;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/ib;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/ib$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/ib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/ib$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/ib;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/vS/ib;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/ib;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/ib$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/ib;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/ib$2;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/ib;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
