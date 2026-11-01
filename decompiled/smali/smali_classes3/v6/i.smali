.class public abstract Lv6/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V
    .locals 8

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v7, Lv6/h;

    move-object v1, v7

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lv6/h;-><init>(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V

    invoke-virtual {v0, v7}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final b(JJLcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V
    .locals 8

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->c(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ABTEST"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p0

    const-string p1, "ABFetcher fail, network is disconnect"

    invoke-virtual {p0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lv6/e;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v2, Lv6/l;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lv6/z;->getRequestTime()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long p2, v4, p2

    if-gtz p2, :cond_2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p0

    const-string p1, "ABFetcher fail, request interval not met"

    invoke-virtual {p0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v7, Lv6/i$a;

    invoke-direct {v7}, Lv6/i$a;-><init>()V

    sget-object p2, Lv6/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "ABHttp request status = requesting, reqQueue = "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getLayerUrl layerId = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->getUseTestEnvironment()Ljava/lang/Boolean;

    move-result-object p3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    goto :goto_1

    :cond_4
    move p3, p2

    :goto_1
    const-string v0, "/summary"

    if-eqz p3, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "https://test-api-accel.shalltry.com/v2/layers/"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "https://api.galileoab.com/v2/layers/"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_2
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;->getUseTestEnvironment()Ljava/lang/Boolean;

    move-result-object p2

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    :cond_6
    if-eqz p2, :cond_7

    const-string p2, "5N0YBoq.hQJd6zuuGZFtKzB0snSgo1BG"

    goto :goto_3

    :cond_7
    const-string p2, "kyHauhL.gnQ1cJdVp0RsibhEBqhLELK9"

    :goto_3
    new-instance p4, Lcom/cloud/hisavana/net/RequestParams;

    invoke-direct {p4}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    const-string v0, "x-api-key"

    invoke-virtual {p4, v0, p2}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/hisavana/net/HttpRequest;->a:Lcom/cloud/hisavana/net/HttpRequest;

    new-instance v0, Lv6/j;

    move-object v2, v0

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p0

    invoke-direct/range {v2 .. v7}, Lv6/j;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;JLv6/i$a;)V

    invoke-virtual {p2, p3, p4, v0}, Lcom/cloud/hisavana/net/HttpRequest;->h(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V

    :goto_4
    return-void
.end method
