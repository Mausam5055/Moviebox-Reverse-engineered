.class Lcom/cloud/hisavana/sdk/v4$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/r3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/v4;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/v4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/v4;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/v4$c;->a:Lcom/cloud/hisavana/sdk/v4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v4$c;->a:Lcom/cloud/hisavana/sdk/v4;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/v4;->a(Lcom/cloud/hisavana/sdk/v4;)Lcom/cloud/hisavana/sdk/v4$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v4$c;->a:Lcom/cloud/hisavana/sdk/v4;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/v4;->a(Lcom/cloud/hisavana/sdk/v4;)Lcom/cloud/hisavana/sdk/v4$f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cloud/hisavana/sdk/v4$f;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "MaterialDownload"

    const-string v2, "loadPlatformAd onSuccess mAdBean "

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/v4$c;->a:Lcom/cloud/hisavana/sdk/v4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/v4;->a(Lcom/cloud/hisavana/sdk/v4;)Lcom/cloud/hisavana/sdk/v4$f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/v4$c;->a:Lcom/cloud/hisavana/sdk/v4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/v4;->a(Lcom/cloud/hisavana/sdk/v4;)Lcom/cloud/hisavana/sdk/v4$f;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/cloud/hisavana/sdk/v4$f;->b(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
