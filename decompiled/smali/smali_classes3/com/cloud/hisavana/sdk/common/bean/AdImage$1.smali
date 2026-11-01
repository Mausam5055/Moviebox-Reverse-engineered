.class Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/bean/AdImage;->attachView(Landroid/widget/ImageView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->access$100(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/cloud/hisavana/sdk/common/util/f;->a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->access$002(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;->this$0:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    invoke-static {v4}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->access$000(Lcom/cloud/hisavana/sdk/common/bean/AdImage;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v3, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1$1;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1$1;-><init>(Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;Landroid/graphics/drawable/BitmapDrawable;J)V

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
