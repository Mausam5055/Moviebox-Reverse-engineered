.class Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->p(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->lambda$run$1(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->lambda$run$0(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method private static synthetic lambda$run$0(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_BITMAP_TOO_LARGE:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method private static synthetic lambda$run$1(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    const/16 p0, 0xc8

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;->g(ILcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/N0;->w(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/b;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/common/http/b;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/m;->c(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Ll7/c;->b([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    new-instance v3, Lcom/cloud/hisavana/sdk/common/http/c;

    invoke-direct {v3, v1, v0, v2}, Lcom/cloud/hisavana/sdk/common/http/c;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;->val$listener:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_BITMAP_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_2
    :goto_2
    return-void
.end method
