.class public final Lv6/j;
.super Lcom/cloud/hisavana/net/impl/StringCallback;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/cloud/hisavana/net/RequestParams;

.field public final synthetic e:J

.field public final synthetic f:Lv6/i$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;JLv6/i$a;)V
    .locals 0

    iput-object p1, p0, Lv6/j;->c:Ljava/lang/String;

    iput-object p2, p0, Lv6/j;->d:Lcom/cloud/hisavana/net/RequestParams;

    iput-wide p3, p0, Lv6/j;->e:J

    iput-object p5, p0, Lv6/j;->f:Lv6/i$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/impl/StringCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final x(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string p3, "ADSDK"

    const/4 v0, 0x3

    invoke-static {p3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "----- onFailure full url = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lv6/j;->c:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \n----- postBodyString = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lv6/j;->d:Lcom/cloud/hisavana/net/RequestParams;

    invoke-virtual {v0}, Lcom/cloud/hisavana/net/RequestParams;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " \n ----- status code =  "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n ----- response = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ABTEST"

    invoke-virtual {v0, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lv6/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-wide v0, p0, Lv6/j;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lv6/j;->f:Lv6/i$a;

    iget-wide v0, p0, Lv6/j;->e:J

    invoke-virtual {p2, v0, v1, p1}, Lv6/i$a;->a(JI)V

    return-void
.end method

.method public final y(ILjava/lang/String;)V
    .locals 9

    const-string v0, "ADSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "ABTEST"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "----- onSuccess full url = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lv6/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n----- postBodyString = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lv6/j;->d:Lcom/cloud/hisavana/net/RequestParams;

    invoke-virtual {v2}, Lcom/cloud/hisavana/net/RequestParams;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \n ----- status code =  "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n ----- response = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lv6/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-wide v2, p0, Lv6/j;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lv6/j;->e:J

    iget-object v0, p0, Lv6/j;->f:Lv6/i$a;

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response fail, statusCode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, p1}, Lv6/i$a;->a(JI)V

    goto/16 :goto_3

    :cond_1
    const/4 p1, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_2
    :try_start_0
    const-class v5, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    invoke-static {p2, v5}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "response fail, error = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v1, v5}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2711

    invoke-virtual {v0, v2, v3, v5}, Lv6/i$a;->a(JI)V

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_4

    :goto_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "response fail, layerId is diff, layerId = "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2712

    invoke-virtual {v0, v2, v3, p1}, Lv6/i$a;->a(JI)V

    goto :goto_3

    :cond_4
    sget-object v0, Lv6/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    invoke-direct {v2, v4, p1, v4}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v0, v1}, Lv6/z;->setLayerId(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lv6/z;->setRequestTime(J)V

    invoke-virtual {v2, p2}, Lv6/z;->setInfo(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    invoke-static {v2}, Lv6/e;->e(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p2

    const-string v0, "response success, response is null"

    invoke-virtual {p2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    invoke-direct {p2, v4, p1, v4}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, v2, v3}, Lv6/z;->setLayerId(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lv6/z;->setRequestTime(J)V

    const-string p1, "{}"

    invoke-virtual {p2, p1}, Lv6/z;->setInfo(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    invoke-static {p2}, Lv6/e;->e(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V

    :cond_6
    :goto_3
    return-void
.end method
