.class Lcom/cloud/hisavana/sdk/common/bean/AdImage$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;

.field final synthetic val$bd:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$startTimer:J


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;Landroid/graphics/drawable/BitmapDrawable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1$1;->this$1:Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1$1;->val$bd:Landroid/graphics/drawable/BitmapDrawable;

    iput-wide p3, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1$1;->val$startTimer:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRun()V
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1$1;->this$1:Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1$1;->val$bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-class v1, Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blur costs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/common/bean/AdImage$1$1;->val$startTimer:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
