.class Lcom/hisavana/mediation/config/CloudControlConfigSync$3;
.super Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hisavana/mediation/config/CloudControlConfigSync;->o(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener<",
        "Lcom/hisavana/mediation/bean/CloudControlConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    iput-wide p1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->b:J

    iput-object p3, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->c:Ljava/lang/String;

    iput p4, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->d:I

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 10

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudControlConfigSync --> error msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\uff0c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_init"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "cloudControlVersion"

    invoke-virtual {v0, v1}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    const-string v3, "cloud_config_error_code"

    invoke-virtual {v0, v3, v1}, Lj7/a;->p(Ljava/lang/String;I)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->b:J

    iget-object v8, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->c:Ljava/lang/String;

    iget v9, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->d:I

    const/4 v3, 0x0

    invoke-static/range {v3 .. v9}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->f(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_2

    :cond_2
    iget-wide v6, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->b:J

    iget-object v8, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->c:Ljava/lang/String;

    iget v9, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->d:I

    const/4 v3, 0x0

    const-string v4, "no message"

    invoke-static/range {v3 .. v9}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->f(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    :goto_2
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->l()I

    move-result v0

    const/4 v1, 0x1

    const/16 v3, 0x1e4

    const/16 v4, 0x1e1

    if-lt v0, v1, :cond_4

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->p()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v0

    if-ne v0, v4, :cond_3

    const-string v0, "request cloud network time out"

    invoke-static {v4, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c(ILjava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v0

    if-ne v0, v3, :cond_4

    const-string v0, "request cloud is host fail "

    invoke-static {v3, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c(ILjava/lang/String;)V

    :cond_4
    :goto_3
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentCloudRetryCount = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->l()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , errorCode = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->l()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    if-ne p1, v3, :cond_6

    :cond_5
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->n()I

    iget p1, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->d:I

    iget-object v0, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->i(ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/hisavana/mediation/bean/CloudControlConfig;

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->k(ILcom/hisavana/mediation/bean/CloudControlConfig;)V

    return-void
.end method

.method public k(ILcom/hisavana/mediation/bean/CloudControlConfig;)V
    .locals 7

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p1

    const-string v0, "cloud_config_error_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lj7/a;->p(Ljava/lang/String;I)V

    if-eqz p2, :cond_7

    sget-boolean p1, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloudControlConfigSync --> CloudControl is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "sdk_init"

    invoke-virtual {p1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, "last_req_config_time"

    invoke-virtual {p1, v0, v2, v3}, Lj7/a;->q(Ljava/lang/String;J)V

    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlCacheInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    int-to-long v3, v0

    const-wide/32 v5, 0x36ee80

    mul-long/2addr v3, v5

    const-string v0, "req_config_interval"

    invoke-virtual {v2, v0, v3, v4}, Lj7/a;->q(Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCodeSeats()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hisavana/common/bean/Network;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/hisavana/common/bean/Network;->setTempPrice(D)V

    invoke-static {v3}, Lcom/hisavana/common/utils/AdUtil;->overwriteAdmobNetworkPrice(Lcom/hisavana/common/bean/Network;)V

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;

    invoke-direct {v0, p0, p2}, Lcom/hisavana/mediation/config/CloudControlConfigSync$3$1;-><init>(Lcom/hisavana/mediation/config/CloudControlConfigSync$3;Lcom/hisavana/mediation/bean/CloudControlConfig;)V

    invoke-virtual {p1, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig;->getData()Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$ConfigData;->getCloudControlVersion()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->b:J

    iget-object v5, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->c:Ljava/lang/String;

    iget v6, p0, Lcom/hisavana/mediation/config/CloudControlConfigSync$3;->d:I

    const/4 v0, 0x1

    invoke-static/range {v0 .. v6}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->f(ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->p()V

    const/16 p1, 0x1e4

    const-string p2, "request cloud is host fail "

    invoke-static {p1, p2}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->c(ILjava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method
