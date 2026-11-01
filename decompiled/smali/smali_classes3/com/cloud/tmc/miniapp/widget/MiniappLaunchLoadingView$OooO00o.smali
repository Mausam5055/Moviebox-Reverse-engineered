.class public final Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->getRepeatCount()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->setRepeatCount(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->getRepeatCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->setRepeatCount(I)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->getRepeatAnimation()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->getAnimationRunnable()Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->getRepeatCount()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x3d4c0000    # -90.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v0, :cond_1

    const-string v0, "mLoadingImg"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/widget/MiniappLaunchLoadingView;->getRepeatCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    :cond_2
    return-void
.end method
