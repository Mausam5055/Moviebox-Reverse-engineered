.class Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->h(II[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$mime:I

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$statusCode:I

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$mime:I

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$statusCode:I

    new-instance v2, Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    iget v3, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$mime:I

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$1;->val$filePath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    return-void
.end method
