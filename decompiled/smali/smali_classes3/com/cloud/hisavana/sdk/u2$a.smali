.class Lcom/cloud/hisavana/sdk/u2$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/u2;->C(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/u2;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/u2;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u2$a;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interactiveEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplashImage"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2$a;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/u2;->g(Lcom/cloud/hisavana/sdk/u2;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2$a;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/u2;->p(Lcom/cloud/hisavana/sdk/u2;)Lcom/cloud/hisavana/sdk/i1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2$a;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/u2;->p(Lcom/cloud/hisavana/sdk/u2;)Lcom/cloud/hisavana/sdk/i1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/i1;->J()Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->cancel()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->changeFinishMode()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "SplashImage"

    const-string v2, "handleClick "

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2$a;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/u2;->u(Lcom/cloud/hisavana/sdk/u2;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/u2;->e(Lcom/cloud/hisavana/sdk/u2;Landroid/view/View;)V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "SplashImage"

    const-string v2, "timeoutShutdown "

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2$a;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/u2;->p(Lcom/cloud/hisavana/sdk/u2;)Lcom/cloud/hisavana/sdk/i1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2$a;->a:Lcom/cloud/hisavana/sdk/u2;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/u2;->p(Lcom/cloud/hisavana/sdk/u2;)Lcom/cloud/hisavana/sdk/i1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->B0()V

    :cond_0
    return-void
.end method
