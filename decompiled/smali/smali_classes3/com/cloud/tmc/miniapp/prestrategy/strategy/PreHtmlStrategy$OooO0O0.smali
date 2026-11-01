.class public final Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->requestHtml(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final OooO00o:Ljava/lang/String;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

.field public final synthetic OooO0OO:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic OooO0Oo:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0OO:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0Oo:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, ""

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestZeroSharpNewsHtml-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0OO:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_0

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$removePreRequestNum(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)V

    const-class p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->PRE_REQUEST_HTML_RET:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ret"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "triggerType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p2, p1, p3, p1, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "requestZeroSharpNewsHtml"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onSuccess(ILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$removePreRequestNum(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)V

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestHtml-> success "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p3, 0xc8

    const/4 p4, 0x1

    if-ne p1, p3, :cond_4

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string p3, ""

    sget-object p5, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->PRE_REQUEST_HTML_RET:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v0, ""

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ret"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "triggerType"

    invoke-virtual {v1, v2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, p3, p5, v0, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    move-result-object p1

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0Oo:Landroid/content/Context;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    move-result-object p4

    iget-object p5, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-interface {p4, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const-class p4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string p5, "miniStrategyPreHtml"

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-interface {p4, v1, p5, v0, p2}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class p2, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string p4, "maxminiPreRequest"

    const/16 p5, 0xa

    invoke-interface {p2, p4, p5}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestHtml.size->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-le p4, p2, :cond_1

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestHtml.size->"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    move-result-object p4

    const/4 p5, 0x0

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v2, "miniStrategyPreHtml"

    invoke-interface {v0, v1, v2, p4}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove preCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-class p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string p4, "miniStrategyPreHtml"

    const-string p5, "miniStrategyPreHtmlList"

    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getPreRequestList$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtilsKt;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    invoke-interface {p2, v1, p4, p5, p3}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v2, "miniStrategyPreHtml"

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_time"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO00o:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "requestHtml-> pre request not in preRequestList -> "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :goto_3
    monitor-exit p1

    throw p2

    :cond_4
    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    const-string p2, ""

    sget-object p3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->PRE_REQUEST_HTML_RET:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string p5, ""

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ret"

    invoke-virtual {v0, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "triggerType"

    invoke-virtual {v0, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, p2, p3, p5, v0}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0OO:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_6

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :goto_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0OO:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_5

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy$OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;->access$getTAG$p(Lcom/cloud/tmc/miniapp/prestrategy/strategy/PreHtmlStrategy;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "requestHtml-> Throwable"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    return-void
.end method
