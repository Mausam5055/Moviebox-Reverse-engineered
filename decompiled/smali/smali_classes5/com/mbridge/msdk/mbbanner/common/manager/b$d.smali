.class Lcom/mbridge/msdk/mbbanner/common/manager/b$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic b:Lcom/mbridge/msdk/mbbanner/common/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$d;->b:Lcom/mbridge/msdk/mbbanner/common/manager/b;

    iput-object p2, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5728\u5355\u72ec\u5b50\u7ebf\u7a0b\u4fdd\u5b58\u6570\u636e\u5e93 \u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$d;->b:Lcom/mbridge/msdk/mbbanner/common/manager/b;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->e(Lcom/mbridge/msdk/mbbanner/common/manager/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/j;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/db/j;->a()V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$d;->b:Lcom/mbridge/msdk/mbbanner/common/manager/b;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->e(Lcom/mbridge/msdk/mbbanner/common/manager/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/b$d;->a:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/mbbanner/common/util/BannerUtils;->uisList(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/mbbanner/common/manager/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5728\u5355\u72ec\u5b50\u7ebf\u7a0b\u4fdd\u5b58\u6570\u636e\u5e93 \u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
