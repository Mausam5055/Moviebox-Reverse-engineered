.class Lcom/cloud/hisavana/sdk/n4$c;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/n4;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic c:Lcom/cloud/hisavana/sdk/n4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/n4$c;->c:Lcom/cloud/hisavana/sdk/n4;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/n4$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4$c;->c:Lcom/cloud/hisavana/sdk/n4;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/n4;->o(Lcom/cloud/hisavana/sdk/n4;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4$c;->c:Lcom/cloud/hisavana/sdk/n4;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/n4;->o(Lcom/cloud/hisavana/sdk/n4;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4$c;->c:Lcom/cloud/hisavana/sdk/n4;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/n4;->l(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4$c;->c:Lcom/cloud/hisavana/sdk/n4;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/n4;->r(Lcom/cloud/hisavana/sdk/n4;I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n4$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n4$c;->c:Lcom/cloud/hisavana/sdk/n4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/n4;->o(Lcom/cloud/hisavana/sdk/n4;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/z;->a:Lcom/cloud/hisavana/sdk/common/util/z;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/cloud/hisavana/sdk/n4$c$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/n4$c$a;-><init>(Lcom/cloud/hisavana/sdk/n4$c;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/cloud/hisavana/sdk/common/util/z;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/util/n;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n4$c;->c:Lcom/cloud/hisavana/sdk/n4;

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ZIP_MATERIAL_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/n4;->l(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n4$c;->c:Lcom/cloud/hisavana/sdk/n4;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/n4$c;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/n4;->m(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :goto_0
    return-void
.end method
