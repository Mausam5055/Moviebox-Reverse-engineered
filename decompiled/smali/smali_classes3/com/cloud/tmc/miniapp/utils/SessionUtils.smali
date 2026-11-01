.class public final Lcom/cloud/tmc/miniapp/utils/SessionUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/render/proxy/SessionUtilProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO00o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/SessionUtils;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/SessionUtils;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/SessionUtils;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;->OooO0O0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public removeSession(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/SessionUtils;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_0
    :goto_0
    return-void
.end method

.method public updateSession(Ljava/lang/String;ZZ)V
    .locals 7

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const-string v1, "_"

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/SessionUtils;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/SessionUtils;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p3, Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v2, v1, v0}, Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;-><init>(ZLjava/lang/String;I)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/utils/SessionUtils;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/utils/SessionUtils;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p1}, Lkotlin/collections/MapsKt;->i(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;

    iget-boolean p3, p1, Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;->OooO00o:Z

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    iput-boolean v2, p1, Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;->OooO00o:Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "<set-?>"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;->OooO0O0:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/utils/SessionUtils;->OooO00o:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p3, Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v2, v1, v0}, Lcom/cloud/tmc/miniapp/utils/SessionUtils$OooO00o;-><init>(ZLjava/lang/String;I)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method
