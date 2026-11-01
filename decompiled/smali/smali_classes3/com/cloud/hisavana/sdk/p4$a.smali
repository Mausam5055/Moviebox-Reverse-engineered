.class Lcom/cloud/hisavana/sdk/p4$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/p4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/p4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/p4;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fc_problem_onReceive,intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterGemini"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/p4;->c(Lcom/cloud/hisavana/sdk/p4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_click"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "mAdBean"

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "receive interstitial click"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/p4;->a(Lcom/cloud/hisavana/sdk/p4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/p4;->f(Lcom/cloud/hisavana/sdk/p4;)Lcom/cloud/hisavana/sdk/s3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/s3;->G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAllowTrackingADClick()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdClickTracking(Z)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "tracking is not allowed\uff0cchange isAdClickTracking = true"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p4;->f(Lcom/cloud/hisavana/sdk/p4;)Lcom/cloud/hisavana/sdk/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/s3;->I()V

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/p4;->c(Lcom/cloud/hisavana/sdk/p4;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_close"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "receive interstitial ad_close"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p2, p1}, Lcom/cloud/hisavana/sdk/p4;->a(Lcom/cloud/hisavana/sdk/p4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/p4;->f(Lcom/cloud/hisavana/sdk/p4;)Lcom/cloud/hisavana/sdk/s3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/s3;->G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p4;->f(Lcom/cloud/hisavana/sdk/p4;)Lcom/cloud/hisavana/sdk/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/s3;->J()V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p4;->i(Lcom/cloud/hisavana/sdk/p4;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p1, v3}, Lcom/cloud/hisavana/sdk/p4;->b(Lcom/cloud/hisavana/sdk/p4;Lcom/cloud/hisavana/sdk/p4$a;)Lcom/cloud/hisavana/sdk/p4$a;

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/p4;->c(Lcom/cloud/hisavana/sdk/p4;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "receive interstitial error"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p4;->f(Lcom/cloud/hisavana/sdk/p4;)Lcom/cloud/hisavana/sdk/s3;

    move-result-object p1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v1, "error_code"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "error_msg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/s3;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p4;->i(Lcom/cloud/hisavana/sdk/p4;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p1, v3}, Lcom/cloud/hisavana/sdk/p4;->b(Lcom/cloud/hisavana/sdk/p4;Lcom/cloud/hisavana/sdk/p4$a;)Lcom/cloud/hisavana/sdk/p4$a;

    goto/16 :goto_1

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/p4;->c(Lcom/cloud/hisavana/sdk/p4;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_show"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "receive interstitial show"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p4;->f(Lcom/cloud/hisavana/sdk/p4;)Lcom/cloud/hisavana/sdk/s3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/s3;->K()V

    goto :goto_1

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/p4;->c(Lcom/cloud/hisavana/sdk/p4;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_pre_imp"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "receive interstitial pre impression"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/p4;->c(Lcom/cloud/hisavana/sdk/p4;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_destroy"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "receive interstitial ad_destroy"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/p4;->i(Lcom/cloud/hisavana/sdk/p4;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/p4$a;->a:Lcom/cloud/hisavana/sdk/p4;

    invoke-static {p1, v3}, Lcom/cloud/hisavana/sdk/p4;->b(Lcom/cloud/hisavana/sdk/p4;Lcom/cloud/hisavana/sdk/p4$a;)Lcom/cloud/hisavana/sdk/p4$a;

    :cond_a
    :goto_1
    return-void
.end method
