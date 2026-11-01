.class Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/s4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->e0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TAdInterstitialActivity"

    const-string v2, "handleThePageClosingProcess closeAd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "s_err_code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "error_url"

    invoke-virtual {v6, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_LOAD_WEB_MATERIAL_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    return-void
.end method

.method public b(FFFFZ)I
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p1, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p1, p4}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;FFFF)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    move-result p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    move-result-object p4

    invoke-static {p2, p4, p3, p1, p5}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;ZZZ)I

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)I

    move-result p1

    return p1
.end method
