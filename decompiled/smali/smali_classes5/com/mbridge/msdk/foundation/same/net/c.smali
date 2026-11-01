.class public Lcom/mbridge/msdk/foundation/same/net/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/net/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mbridge/msdk/foundation/same/net/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public adType:I

.field private mRequestTime:Lcom/mbridge/msdk/foundation/same/report/campaignreport/b;

.field public placementId:Ljava/lang/String;

.field private startTime:J

.field public unitId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->adType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->placementId:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->mRequestTime:Lcom/mbridge/msdk/foundation/same/report/campaignreport/b;

    return-void
.end method


# virtual methods
.method public calcRequestTime(J)V
    .locals 4

    new-instance v0, Lcom/mbridge/msdk/foundation/entity/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/entity/h;-><init>()V

    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/campaignreport/b;

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/foundation/same/report/campaignreport/b;-><init>(Lcom/mbridge/msdk/foundation/entity/h;)V

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/c;->mRequestTime:Lcom/mbridge/msdk/foundation/same/report/campaignreport/b;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/report/campaignreport/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->mRequestTime:Lcom/mbridge/msdk/foundation/same/report/campaignreport/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/campaignreport/a;->b(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->mRequestTime:Lcom/mbridge/msdk/foundation/same/report/campaignreport/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/mbridge/msdk/foundation/same/net/c;->startTime:J

    sub-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/campaignreport/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/mbridge/msdk/foundation/same/net/exception/a;)V
    .locals 0

    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onNetworking()V
    .locals 0

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->startTime:J

    return-void
.end method

.method public onProgressChange(JJ)V
    .locals 0

    return-void
.end method

.method public onRetry()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/mbridge/msdk/foundation/same/net/e;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/foundation/same/net/e<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "Listener"

    const-string v1, "_"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/c;->placementId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mbridge/msdk/foundation/same/net/c;->adType:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/setting/h;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/mbridge/msdk/foundation/same/net/e;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/mbridge/msdk/foundation/same/net/e;->c:Ljava/lang/Object;

    instance-of v3, v2, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "status"

    if-eqz v3, :cond_0

    :try_start_1
    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iget-object v2, p1, Lcom/mbridge/msdk/foundation/same/net/e;->c:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/c;->b()Lcom/mbridge/msdk/foundation/same/net/utils/c;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/mbridge/msdk/foundation/same/net/utils/c;->a(Ljava/lang/String;ILjava/lang/String;J)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/mbridge/msdk/foundation/same/net/e;->c:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/mbridge/msdk/foundation/same/net/e;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iget-object p1, p1, Lcom/mbridge/msdk/foundation/same/net/e;->c:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/c;->b()Lcom/mbridge/msdk/foundation/same/net/utils/c;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/mbridge/msdk/foundation/same/net/utils/c;->a(Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public saveHbState(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->mRequestTime:Lcom/mbridge/msdk/foundation/same/report/campaignreport/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/campaignreport/a;->c(I)V

    :cond_0
    return-void
.end method

.method public saveRequestTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/c;->mRequestTime:Lcom/mbridge/msdk/foundation/same/report/campaignreport/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/report/campaignreport/a;->a(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/c;->mRequestTime:Lcom/mbridge/msdk/foundation/same/report/campaignreport/b;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/campaignreport/a;->a()V

    :cond_0
    return-void
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/foundation/same/net/c;->adType:I

    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/c;->placementId:Ljava/lang/String;

    return-void
.end method

.method public setUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/c;->unitId:Ljava/lang/String;

    return-void
.end method
