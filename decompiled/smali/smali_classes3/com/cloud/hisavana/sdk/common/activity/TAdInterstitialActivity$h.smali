.class Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;
.super Lcom/cloud/hisavana/sdk/f4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/f4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/f4;->b()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z

    return-void
.end method

.method public c(JJI)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/f4;->c(JJI)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/f4;->onComplete()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->onVolumeChanged(F)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Z(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)V

    return-void
.end method
