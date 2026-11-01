.class Lcom/mbridge/msdk/mbbanner/common/manager/d$k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/d;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/common/manager/d;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$k;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$k;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->e(Lcom/mbridge/msdk/mbbanner/common/manager/d;)F

    move-result p1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$k;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->f(Lcom/mbridge/msdk/mbbanner/common/manager/d;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/communication/d;->a(FF)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$k;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    iget-object v0, v0, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/mbbanner/common/util/BannerUtils;->managerCampaignEX(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$k;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V

    return-void
.end method
