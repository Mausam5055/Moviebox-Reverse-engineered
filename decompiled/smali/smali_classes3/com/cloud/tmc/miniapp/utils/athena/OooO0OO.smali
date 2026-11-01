.class public final Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;
.super Ljava/lang/Object;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

.field public static OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static OooO0OO:Landroid/app/Application;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO0O0:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(Ljava/util/List;)V
    .locals 5

    const-string v0, "$dataCaches"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":mfah report -> cache, post, athenaAppId = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AthenaUtil"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    iget v3, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final OooO0O0(Ljava/util/List;)V
    .locals 5

    const-string v0, "$dataCaches"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":report -> cache, post, athenaAppId = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AthenaUtil"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    iget v3, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/String;Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;
    .locals 13

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const-string v4, "athenaReportBean"

    const-string v6, "steps"

    if-eqz p2, :cond_0

    sget-object v8, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO0OO:Landroid/app/Application;

    new-instance p2, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO00o;

    invoke-direct {p2}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO00o;-><init>()V

    new-instance v7, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0O0;

    invoke-direct {v7}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0O0;-><init>()V

    new-instance v9, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0OO;

    invoke-direct {v9}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0OO;-><init>()V

    new-instance v10, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO;

    invoke-direct {v10}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO;-><init>()V

    new-instance v11, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0o;

    invoke-direct {v11}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0o;-><init>()V

    const/4 v12, 0x5

    new-array v12, v12, [Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;

    aput-object p2, v12, v5

    aput-object v7, v12, v3

    aput-object v9, v12, v2

    aput-object v10, v12, v1

    aput-object v11, v12, v0

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    invoke-direct {v0, v5, v5, v5}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;-><init>(ZZZ)V

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;

    const/4 v11, 0x1

    move-object v7, v1

    move-object v9, p1

    move-object v10, p2

    move-object v12, v0

    invoke-direct/range {v7 .. v12}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;)V

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;

    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0$OooO00o;)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO0OO:Landroid/app/Application;

    new-instance p2, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO00o;

    invoke-direct {p2}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO00o;-><init>()V

    new-instance v8, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0OO;

    invoke-direct {v8}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0OO;-><init>()V

    new-instance v9, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO;

    invoke-direct {v9}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO;-><init>()V

    new-instance v10, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0o;

    invoke-direct {v10}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooO0o;-><init>()V

    new-array v0, v0, [Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;

    aput-object p2, v0, v5

    aput-object v8, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    invoke-direct {v0, v5, v5, v5}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;-><init>(ZZZ)V

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;

    const/4 v10, 0x1

    move-object v6, v1

    move-object v8, p1

    move-object v9, p2

    move-object v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO0O0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;)V

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;

    invoke-interface {p1, v1}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0;->OooO00o(Lcom/cloud/tmc/miniapp/utils/athena/strategy/steps/OooOO0$OooO00o;)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMainProcess()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    new-instance p1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    invoke-direct {p1, v5, v5, v5}, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;-><init>(ZZZ)V

    return-object p1
.end method

.method public final OooO00o()V
    .locals 6

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->isMiniProcess()Z

    move-result v0

    sget-object v1, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport$OooO00o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getMainProcessInitAthenaFlag$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getMiniProcessInitAthenaFlag$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {}, Lcom/cloud/tmc/miniapp/defaultimpl/AthenaReport;->access$getZeroProcessInitAthenaFlag$cp()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "miniProcessAppOrPageReady -> delay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isMiniProcess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mainProcessInitAthenaFlag:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", miniProcessInitAthenaFlag:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", zeroProcessInitAthenaFlag:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AthenaUtil"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 6

    const-string v0, "AthenaUtil"

    const-string v1, "appId"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appId: ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",->mfah report -> report all cache :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v2, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    :try_start_4
    const-string v2, "clearAthenaDataForId"

    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":mfah report -> exist cache, post all size = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v2, Lcom/cloud/tmc/miniapp/utils/athena/b;

    invoke-direct {v2, v1}, Lcom/cloud/tmc/miniapp/utils/athena/b;-><init>(Ljava/util/List;)V

    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    goto :goto_6

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iget-object v4, v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":report -> cache, post, athenaAppId = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tag = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    iget v4, v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v1}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :goto_5
    const-string v1, "athena cache report "

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_6
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lyi/a;

    invoke-direct {v0, p1, p2}, Lyi/a;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p3, p1}, Lyi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;

    move-result-object p1

    invoke-virtual {p1}, Lyi/a;->b()V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    const-string v0, "AthenaUtil"

    const-string v1, "tag"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p4, v1}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;Z)Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    iget-boolean v4, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0O0:Z

    iget-boolean v5, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0OO:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":getAthenaStrategyResult -> setCache = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", clearCache = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isMfah = "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0OO:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "athenaDataBean"

    const-string v4, ", tag = "

    if-eqz v2, :cond_4

    :try_start_1
    iget-boolean v2, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": mfah report -> save cache, athenaAppId = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    new-instance v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-direct {v1, p2, p1, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "appId"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0Oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-virtual {p1, p4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_1
    :try_start_3
    const-string p2, "setAthenaDataForId"

    invoke-static {v0, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    :goto_2
    sget-object p4, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-direct {v0, p2, p1, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o()V

    sget-object p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    :cond_4
    iget-boolean p4, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO00o:Z

    if-nez p4, :cond_8

    iget-boolean p4, v1, Lcom/cloud/tmc/miniapp/utils/athena/strategy/OooO00o;->OooO0O0:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v1, ":report -> no cache, post only current, athenaAppId = "

    if-eqz p4, :cond_7

    :try_start_4
    sget-object p4, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":report -> exist cache, post all size = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-direct {v1, p2, p1, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance p2, Lcom/cloud/tmc/miniapp/utils/athena/a;

    invoke-direct {p2, p4}, Lcom/cloud/tmc/miniapp/utils/athena/a;-><init>(Ljava/util/List;)V

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    goto/16 :goto_5

    :cond_5
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p3

    iget p4, p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iget-object v1, p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":report -> cache, post, athenaAppId = "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;

    iget-object p4, p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    iget v1, p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iget-object p2, p2, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    invoke-virtual {p3, p4, v1, p2}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":report -> save cache, athenaAppId = "

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p4, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    invoke-direct {v0, p2, p1, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO00o()V

    sget-object p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO0O0;->OooO0OO:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    :cond_9
    :goto_5
    return-void
.end method

.method public final OooO0O0(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/utils/athena/OooO0OO;->OooO00o(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "AthenaUtil"

    const-string p3, "forceAthenaReport"

    invoke-static {p2, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
