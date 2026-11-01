.class Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;
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

.field final synthetic val$data:[B

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$mime:I

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;[BIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$data:[B

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$mime:I

    iput p4, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$statusCode:I

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->lambda$run$1()V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->lambda$run$0()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/16 v2, 0xbc8

    const-string v3, "bitmap is too large."

    invoke-direct {v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method private synthetic lambda$run$1()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/16 v2, 0xbc8

    const-string v3, "bitmap is too large."

    invoke-direct {v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$data:[B

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/N0;->A(Landroid/content/Context;[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/listener/a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/a;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/http/listener/b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/b;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->val$data:[B

    invoke-static {v0}, Ll7/c;->b([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;->this$0:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a:Landroid/os/Handler;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$1;

    invoke-direct {v2, p0, v0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$1;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_2
    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;

    invoke-direct {v1, p0, v0}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2$a;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener$2;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    :goto_3
    return-void
.end method
