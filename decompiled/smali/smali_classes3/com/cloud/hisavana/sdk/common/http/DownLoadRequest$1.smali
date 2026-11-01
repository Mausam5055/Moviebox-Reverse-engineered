.class Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

.field final synthetic val$materialType:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILandroid/widget/ImageView;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$materialType:I

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;->val$url:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    new-instance v2, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;

    invoke-direct {v2, p0, v1, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1$a;-><init>(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;ZLjava/lang/String;)V

    invoke-static {v2}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method
