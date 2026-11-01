.class Lcom/mbridge/msdk/advanced/manager/b$g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/manager/b$g;->a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:I

.field final synthetic c:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

.field final synthetic d:Lcom/mbridge/msdk/advanced/manager/b$g;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/b$g;Ljava/lang/Exception;ILcom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g$a;->d:Lcom/mbridge/msdk/advanced/manager/b$g;

    iput-object p2, p0, Lcom/mbridge/msdk/advanced/manager/b$g$a;->a:Ljava/lang/Exception;

    iput p3, p0, Lcom/mbridge/msdk/advanced/manager/b$g$a;->b:I

    iput-object p4, p0, Lcom/mbridge/msdk/advanced/manager/b$g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6d83

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$g$a;->a:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$g$a;->d:Lcom/mbridge/msdk/advanced/manager/b$g;

    iget-object v2, v1, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    iget-object v1, v1, Lcom/mbridge/msdk/advanced/manager/b$g;->e:Ljava/lang/String;

    iget v3, p0, Lcom/mbridge/msdk/advanced/manager/b$g$a;->b:I

    iget-object v4, p0, Lcom/mbridge/msdk/advanced/manager/b$g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mbridge/msdk/advanced/manager/b$g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/mbridge/msdk/advanced/manager/b$g$a;->c:Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    invoke-static {v2, v0, v1, v3, v4}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method
