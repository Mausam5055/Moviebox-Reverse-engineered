.class Lcom/cloud/hisavana/sdk/m$d;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/m;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/m;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/m$d;->b:Lcom/cloud/hisavana/sdk/m;

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

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BannerDownload"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m$d;->b:Lcom/cloud/hisavana/sdk/m;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/m;->i(Lcom/cloud/hisavana/sdk/m;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/m$d;->b:Lcom/cloud/hisavana/sdk/m;

    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/m;->o(Lcom/cloud/hisavana/sdk/m;I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/m$d;->b:Lcom/cloud/hisavana/sdk/m;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/m;->g(Lcom/cloud/hisavana/sdk/m;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/m;->j(Lcom/cloud/hisavana/sdk/m;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method
