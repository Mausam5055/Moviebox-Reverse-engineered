.class Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$imageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ll7/b;->e(Ljava/lang/String;ZLandroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    if-eqz v0, :cond_1

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2$a;->b:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;->val$imageView:Landroid/widget/ImageView;

    invoke-static {v0, v2, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->e(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-void
.end method
