.class Lcom/cloud/hisavana/sdk/k1$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/k1;->g(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener<",
        "Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Lcom/cloud/hisavana/sdk/k1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/k1;JILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/k1$b;->f:Lcom/cloud/hisavana/sdk/k1;

    iput-wide p2, p0, Lcom/cloud/hisavana/sdk/k1$b;->b:J

    iput p4, p0, Lcom/cloud/hisavana/sdk/k1$b;->c:I

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/cloud/hisavana/sdk/k1$b;->e:Z

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/k1$b;->b:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/cloud/hisavana/sdk/k1$b;->c:I

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    long-to-int v4, v0

    if-nez p1, :cond_0

    const-string p1, "request error"

    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :goto_1
    const-string v7, ""

    const/4 v5, 0x1

    invoke-static/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->J(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/k1$b;->f:Lcom/cloud/hisavana/sdk/k1;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/k1;->d(Lcom/cloud/hisavana/sdk/k1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/k1$b;->k(ILcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;)V

    return-void
.end method

.method public bridge synthetic h(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/k1$b;->l(ILcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;Ljava/lang/String;)V

    return-void
.end method

.method protected k(ILcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;)V
    .locals 0

    return-void
.end method

.method public l(ILcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/k1$b;->b:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k1$b;->f:Lcom/cloud/hisavana/sdk/k1;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/k1;->d(Lcom/cloud/hisavana/sdk/k1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestSuccess statusCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ConfigManager"

    invoke-virtual {v2, v3, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/k1$b;->f:Lcom/cloud/hisavana/sdk/k1;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/cloud/hisavana/sdk/k1;->b(Lcom/cloud/hisavana/sdk/k1;J)J

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/k1$b;->f:Lcom/cloud/hisavana/sdk/k1;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/k1;->l(Lcom/cloud/hisavana/sdk/k1;)J

    move-result-wide v2

    const-string v4, "requestConfigTime"

    invoke-virtual {p1, v4, v2, v3}, Lj7/a;->q(Ljava/lang/String;J)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;

    move-result-object p1

    iget v2, p0, Lcom/cloud/hisavana/sdk/k1$b;->c:I

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    long-to-int v4, v0

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/k1$b;->f:Lcom/cloud/hisavana/sdk/k1;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/k1;->p(Lcom/cloud/hisavana/sdk/k1;)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->J(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/k1$b;->f:Lcom/cloud/hisavana/sdk/k1;

    iget v0, p0, Lcom/cloud/hisavana/sdk/k1$b;->c:I

    const/4 v1, 0x1

    invoke-static {p2, p1, v0, v1}, Lcom/cloud/hisavana/sdk/k1;->h(Lcom/cloud/hisavana/sdk/k1;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/cloud/hisavana/sdk/k1$b;->e:Z

    if-eqz p1, :cond_1

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p1

    const-string p2, "ssp_cloud_config_raw_response"

    invoke-virtual {p1, p2, p3}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/cloud/hisavana/sdk/k1$b;->c:I

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/k1$b;->d:Ljava/lang/String;

    long-to-int v2, v0

    const-string v4, "response is null or responseCode is wrong"

    const-string v5, ""

    const/4 v3, 0x1

    move v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->J(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
