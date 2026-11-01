.class Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isFromLocal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$filePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$filePath:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/cloud/hisavana/net/disklrucache/utils/DiskLruCacheUtil;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_BITMAP_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_1
    return-void

    :cond_2
    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;

    invoke-direct {v1, p0, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;-><init>(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method
