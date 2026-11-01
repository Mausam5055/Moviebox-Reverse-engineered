.class Lcom/cloud/hisavana/sdk/b$c$d;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/b$c;->k()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/b$c;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$d;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$d;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->n(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$d;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->n(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$d;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->n(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$d;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->n(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$d;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->n(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c$d;->b:Lcom/cloud/hisavana/sdk/b$c;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/b$c;->n(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
