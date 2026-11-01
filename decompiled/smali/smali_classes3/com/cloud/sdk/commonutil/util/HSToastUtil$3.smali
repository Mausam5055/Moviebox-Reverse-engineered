.class Lcom/cloud/sdk/commonutil/util/HSToastUtil$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil$3;->val$resId:I

    iput-object p2, p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a()Landroid/widget/Toast;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a()Landroid/widget/Toast;

    move-result-object v0

    iget v2, p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil$3;->val$resId:I

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->c(Landroid/widget/Toast;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/cloud/sdk/commonutil/util/HSToastUtil$3;->val$resId:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->b(Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/HSToastUtil;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
