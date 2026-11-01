.class Lcom/cloud/hisavana/sdk/q2$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/q2;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic c:Lcom/cloud/hisavana/sdk/q2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/q2;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/q2$b;->c:Lcom/cloud/hisavana/sdk/q2;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/q2$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashLoadManager"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q2$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q2$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q2$b;->c:Lcom/cloud/hisavana/sdk/q2;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/q2;->i(Lcom/cloud/hisavana/sdk/q2;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q2$b;->c:Lcom/cloud/hisavana/sdk/q2;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/q2;->n(Lcom/cloud/hisavana/sdk/q2;I)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/q2$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/q2$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/util/z;->a:Lcom/cloud/hisavana/sdk/common/util/z;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/q2$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/cloud/hisavana/sdk/q2$b$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/q2$b$a;-><init>(Lcom/cloud/hisavana/sdk/q2$b;)V

    invoke-virtual {p1, v0, p2, v1}, Lcom/cloud/hisavana/sdk/common/util/z;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/util/n;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/q2$b;->c:Lcom/cloud/hisavana/sdk/q2;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/q2;->g(Lcom/cloud/hisavana/sdk/q2;)V

    :cond_1
    :goto_0
    return-void
.end method
