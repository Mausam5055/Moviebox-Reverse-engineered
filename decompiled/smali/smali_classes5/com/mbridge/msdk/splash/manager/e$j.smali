.class Lcom/mbridge/msdk/splash/manager/e$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/manager/e;->e(Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:I

.field final synthetic c:Lcom/mbridge/msdk/splash/manager/e;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$j;->c:Lcom/mbridge/msdk/splash/manager/e;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/manager/e$j;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput p3, p0, Lcom/mbridge/msdk/splash/manager/e$j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6d86

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/e$j;->c:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/mbridge/msdk/splash/manager/e$j;->b:I

    iget-object v4, p0, Lcom/mbridge/msdk/splash/manager/e$j;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/splash/manager/e$j;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string v4, "campaignex"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "msg"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/e$j;->c:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/manager/e;->d(Lcom/mbridge/msdk/splash/manager/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$j;->c:Lcom/mbridge/msdk/splash/manager/e;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/e$j;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$j;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v0, p0, Lcom/mbridge/msdk/splash/manager/e$j;->b:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$j;->c:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/e;->d(Lcom/mbridge/msdk/splash/manager/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-nez p3, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$j;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    const-string p3, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$j;->c:Lcom/mbridge/msdk/splash/manager/e;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/e$j;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
