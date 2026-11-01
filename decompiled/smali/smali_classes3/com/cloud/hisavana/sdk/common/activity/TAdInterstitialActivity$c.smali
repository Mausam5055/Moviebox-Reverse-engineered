.class Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;
.super Le7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroid/widget/ProgressBar;

.field final synthetic g:Landroid/widget/TextView;

.field final synthetic h:Landroid/view/View;

.field final synthetic i:Landroid/view/View;

.field final synthetic j:Landroid/widget/ImageView;

.field final synthetic k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;JJLandroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->f:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->g:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->h:Landroid/view/View;

    iput-object p9, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->i:Landroid/view/View;

    iput-object p10, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->j:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3, p4, p5}, Le7/e;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Le7/e;

    move-result-object v0

    invoke-virtual {v0}, Le7/e;->d()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->f:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    const-string v3, "I01"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget v2, Lcom/cloud/hisavana/sdk/R$drawable;->ad_rewarded_time_rest_done:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/cloud/hisavana/sdk/R$string;->hs_download_t01_countdown_tv_done:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;I)I

    return-void
.end method

.method public f(J)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;I)I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->f:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->r1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "I01"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->g:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$string;->hs_download_t01_countdown_tv:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {p2, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->g:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$c;->k:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
