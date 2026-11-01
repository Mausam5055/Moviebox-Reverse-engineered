.class Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->releasePlayer()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOnScreen rebuild videoPlayer path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeAdVideoView"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->e(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z

    move-result v3

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    invoke-static {v4}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->f(Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->setMediaData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
