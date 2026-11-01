.class Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;
.super Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;-><init>(Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->y(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_6

    :cond_0
    iget-object v3, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v3}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->l(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v4}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->m(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-super {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;->a()V

    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->n(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/view/View;Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v2}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/mbnative/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/content/Context;)Lcom/mbridge/msdk/nativex/view/mbfullview/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->p(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/mbridge/msdk/nativex/view/mbfullview/a;->a(Landroid/view/View;Lcom/mbridge/msdk/nativex/view/mbfullview/BaseView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v5

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-virtual {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->getAddNVT2ToNoticeURL()Ljava/lang/String;

    move-result-object v7

    sget v10, Lcom/mbridge/msdk/click/retry/a;->o:I

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v10}, Lcom/mbridge/msdk/click/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZI)V

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->r(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->k(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v1}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->q(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->webViewShow(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView$p;->b:Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;

    invoke-static {v0}, Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;->s(Lcom/mbridge/msdk/nativex/view/BaseMBMediaView;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->orientation(Z)V

    goto :goto_1

    :cond_4
    invoke-super {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;->a()V

    return-void

    :cond_5
    invoke-super {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;->a()V

    goto :goto_1

    :cond_6
    invoke-super {p0}, Lcom/mbridge/msdk/nativex/view/MediaViewPlayerView$h;->a()V

    :goto_1
    return-void
.end method
