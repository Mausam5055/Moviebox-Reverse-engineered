.class Lcom/cloud/hisavana/sdk/i1$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/CountTimeView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/i1;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/i1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/i1;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1$d;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$d;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->W(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$d;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->W(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/CountTimeView;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$d;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->u0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$d;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->v0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->B()V

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$d;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->D0()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$d;->a:Lcom/cloud/hisavana/sdk/i1;

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public onFinish()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "TranSplash"

    const-string v2, "splash ad onTimeEnd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$d;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->s0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$d;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->t0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->C()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$d;->a:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->D0()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
