.class Lcom/mbridge/msdk/video/module/MBridgeClickCTAView$e;
.super Lcom/mbridge/msdk/video/module/listener/impl/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;->preLoadData(Lcom/mbridge/msdk/video/signal/factory/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;Landroid/widget/ImageView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeClickCTAView$e;->d:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    invoke-direct {p0, p2, p3, p4}, Lcom/mbridge/msdk/video/module/listener/impl/e;-><init>(Landroid/widget/ImageView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/module/listener/impl/e;->onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeClickCTAView$e;->d:Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;->c(Lcom/mbridge/msdk/video/module/MBridgeClickCTAView;)V

    return-void
.end method
