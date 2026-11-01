.class Lcom/mbridge/msdk/video/module/MBridgeVideoView$l$a;
.super Lcom/mbridge/msdk/widget/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;->a(Lcom/mbridge/msdk/video/dynview/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l$a;->b:Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;

    invoke-direct {p0}, Lcom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    instance-of p1, p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l$a;->b:Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;->c:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setTriggerClickSource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l$a;->b:Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;->c:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setTriggerClickSource(I)V

    :goto_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l$a;->b:Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;->c:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l$a;->b:Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;->c:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result p1

    const/16 v0, 0x386

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l$a;->b:Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;->c:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->b(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l$a;->b:Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeVideoView$l;->c:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    const-string v0, "video_play_click"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->a(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
