.class Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setCompanionSize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/q4;->f(Z)V

    :cond_0
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "AdVideoView"

    const-string v0, "setCompanionSize onRequestSuccess"

    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->e(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/ScaleImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$b;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/q4;->f(Z)V

    :cond_1
    return-void
.end method
