.class Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;
.super Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q(Ljava/lang/String;Landroid/widget/ImageView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

.field final synthetic c:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;->b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;->c:Landroid/widget/ImageView;

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

    const-string v2, "loadImageView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownLoadRequest"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;->b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void
.end method

.method public g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;->b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/16 v0, 0xbbf

    const-string v1, "mediaBean == null."

    invoke-direct {p2, v0, v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->attachView(Landroid/widget/ImageView;)Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;->b:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    :cond_2
    return-void
.end method
