.class Lcom/mbridge/msdk/advanced/manager/b$g;
.super Lcom/mbridge/msdk/advanced/request/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/advanced/manager/b;->a(Ljava/lang/String;I)Lcom/mbridge/msdk/advanced/request/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/mbridge/msdk/advanced/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/b;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    iput-object p3, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->e:Ljava/lang/String;

    iput p4, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->f:I

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/advanced/request/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {v0}, Lcom/mbridge/msdk/advanced/manager/b;->h(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->e:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onLoadCompaginSuccess \u6570\u636e\u521a\u8bf7\u6c42\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {v1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {v1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/advanced/manager/b$g$a;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/mbridge/msdk/advanced/manager/b$g$a;-><init>(Lcom/mbridge/msdk/advanced/manager/b$g;Ljava/lang/Exception;ILcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->c(Lcom/mbridge/msdk/advanced/manager/b;)V

    :goto_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/advanced/manager/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadCompaginFailed load failed errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " msg:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->b(Lcom/mbridge/msdk/advanced/manager/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/mbridge/msdk/advanced/manager/b$g$b;

    invoke-direct {v0, p0, p2}, Lcom/mbridge/msdk/advanced/manager/b$g$b;-><init>(Lcom/mbridge/msdk/advanced/manager/b$g;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$g;->g:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {p1}, Lcom/mbridge/msdk/advanced/manager/b;->c(Lcom/mbridge/msdk/advanced/manager/b;)V

    return-void
.end method
