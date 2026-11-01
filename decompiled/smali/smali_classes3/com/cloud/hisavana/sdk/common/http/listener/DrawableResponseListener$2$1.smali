.class Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

.field final synthetic val$finalDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$1;->this$1:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$1;->val$finalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$1;->this$1:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    iget v1, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$mime:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/16 v2, 0xbbf

    const-string v3, "parse bitmap error."

    invoke-direct {v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iget v0, v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$statusCode:I

    new-instance v2, Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$1;->this$1:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;

    iget v4, v3, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$mime:I

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$1;->val$finalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v3, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$filePath:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    :goto_0
    return-void
.end method
