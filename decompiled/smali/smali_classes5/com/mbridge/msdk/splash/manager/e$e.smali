.class Lcom/mbridge/msdk/splash/manager/e$e;
.super Lcom/mbridge/msdk/splash/request/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/manager/e;->a(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:Lcom/mbridge/msdk/splash/manager/e;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/e;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$e;->g:Lcom/mbridge/msdk/splash/manager/e;

    iput-object p3, p0, Lcom/mbridge/msdk/splash/manager/e$e;->e:Ljava/lang/String;

    iput p4, p0, Lcom/mbridge/msdk/splash/manager/e$e;->f:I

    invoke-direct {p0, p2}, Lcom/mbridge/msdk/splash/request/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignUnit;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$e;->g:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/manager/e;->f(Lcom/mbridge/msdk/splash/manager/e;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/e$e;->e:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$e;->g:Lcom/mbridge/msdk/splash/manager/e;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$e;->g:Lcom/mbridge/msdk/splash/manager/e;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/mbridge/msdk/foundation/error/b;

    const v2, 0xd6d83

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/error/b;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$e;->g:Lcom/mbridge/msdk/splash/manager/e;

    iget-object v2, p0, Lcom/mbridge/msdk/splash/manager/e$e;->e:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/b;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    invoke-static {v0, v1, v2, p2, p1}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$e;->g:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/e;->g(Lcom/mbridge/msdk/splash/manager/e;)V

    :goto_2
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/mbridge/msdk/splash/manager/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/mbridge/msdk/foundation/error/b;

    const v0, 0xd6d82

    invoke-direct {p1, v0}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/error/b;->c(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mbridge/msdk/splash/manager/e$e;->g:Lcom/mbridge/msdk/splash/manager/e;

    iget-object v0, p0, Lcom/mbridge/msdk/splash/manager/e$e;->e:Ljava/lang/String;

    iget v1, p0, Lcom/mbridge/msdk/splash/manager/e$e;->f:I

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$e;->g:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {p1}, Lcom/mbridge/msdk/splash/manager/e;->g(Lcom/mbridge/msdk/splash/manager/e;)V

    return-void
.end method
