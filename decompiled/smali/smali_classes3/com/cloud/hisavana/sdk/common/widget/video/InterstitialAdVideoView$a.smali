.class Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/q4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/q4;->a(Lcom/cloud/hisavana/sdk/p;)V

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->e(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/q4;->b()V

    :cond_0
    return-void
.end method

.method public c(JJI)V
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/q4;->c(JJI)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/q4;->e()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->f(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/q4;->f(Z)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/q4;->onComplete()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->g(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->h(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->g(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->repeat()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/q4;->onIsPlayingChanged(Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->e(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/q4;->onVideoSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/InterstitialAdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/q4;->onVolumeChanged(F)V

    :cond_0
    return-void
.end method
