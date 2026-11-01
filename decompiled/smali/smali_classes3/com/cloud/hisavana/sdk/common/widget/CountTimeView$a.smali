.class Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;
.super Le7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    invoke-direct {p0, p2, p3, p4, p5}, Le7/e;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->c(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->c(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;->onFinish()V

    :cond_0
    return-void
.end method

.method public f(J)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SKIP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->a(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    long-to-int p1, p1

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->b(Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;I)I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$a;->f:Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
