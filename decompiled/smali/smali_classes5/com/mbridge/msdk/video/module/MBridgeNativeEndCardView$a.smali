.class Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$a;
.super Lcom/mbridge/msdk/widget/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$a;->b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-direct {p0}, Lcom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$a;->b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;->ctaView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$a;->b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardViewDiff;->checkProgressBarIntercepted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$a;->b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setTriggerClickSource(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$a;->b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$a;->b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-object p1, p1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setTriggerClickSource(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$a;->b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;I)V

    :cond_1
    :goto_0
    return-void
.end method
