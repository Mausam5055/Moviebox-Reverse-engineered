.class Lcom/bytedance/sdk/component/adexpress/vS/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/vS/sP;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/vS/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/sP;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/vS/sP;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->sP(Lcom/bytedance/sdk/component/adexpress/vS/sP;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/vS/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/vS/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/vS/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/vS/sP;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
