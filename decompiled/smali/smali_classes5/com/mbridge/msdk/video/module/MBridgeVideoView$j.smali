.class Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/dycreator/baseview/rewardpopview/AcquireRewardPopViewBehaviourListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeVideoView;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutOfContentClicked(FF)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/video/module/listener/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->u(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/video/module/listener/a;

    move-result-object p1

    const/16 p2, 0x69

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onReceivedFail(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    invoke-static {}, Lcom/mbridge/msdk/util/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->k(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v1, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, p1}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public onReceivedSuccess(I)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->l(Lcom/mbridge/msdk/video/module/MBridgeVideoView;Z)Z

    invoke-static {}, Lcom/mbridge/msdk/util/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCover(Z)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->z(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v0

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoCompleteTime(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->k(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz p1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x82

    invoke-interface {p1, v1, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->m(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$j;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->B(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v0, p1, v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method
