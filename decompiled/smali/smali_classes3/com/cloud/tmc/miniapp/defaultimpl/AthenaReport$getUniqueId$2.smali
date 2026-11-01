.class public final Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;
.super Lcom/cloud/tmc/integration/net/TmcResponseCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/integration/net/TmcResponseCallback<",
        "Lcom/cloud/tmc/integration/model/UniqueIdBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/integration/structure/App;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;Lcom/cloud/tmc/integration/structure/App;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2$getType$1;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2$getType$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "object :\n               \u2026niqueIdBean?>?>() {}.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p2, "fail"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getUniqueIdMaps$p(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;->getRequesting()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Lcom/cloud/tmc/integration/model/UniqueIdBean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/model/UniqueIdBean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/UniqueIdBean;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u57cb\u70b9getUniqueId success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AthenaReport"

    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getUniqueIdMaps$p(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;->getRequesting()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/model/UniqueIdBean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/UniqueIdBean;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO00o:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$getUniqueId$2;->OooO0O0:Lcom/cloud/tmc/integration/structure/App;

    invoke-static {p2}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getUniqueIdMaps$p(Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$UniqueIdBean;->setUniqueId(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
