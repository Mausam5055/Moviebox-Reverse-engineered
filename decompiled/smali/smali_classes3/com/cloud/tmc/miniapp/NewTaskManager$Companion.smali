.class public final Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/NewTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCurrentIdleProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getCurrentIdleProcessNum()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getCurrentRunningProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getCurrentRunningProcessNum()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getEnableTaskStorage(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getEnableTaskStorage()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V

    return-void
.end method

.method private final getCurrentIdleProcessNum()I
    .locals 2

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_IDLE()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getCurrentProcessNumByStatus(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_LAST_USED()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getCurrentProcessNumByStatus(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method private final getCurrentProcessNumByStatus(I)I
    .locals 3

    invoke-static {}, Lcom/cloud/tmc/miniapp/NewTaskManager;->access$getSProcessInfos$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMStatus()I

    move-result v2

    if-ne v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final getCurrentRunningProcessNum()I
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_RUNNING()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getCurrentProcessNumByStatus(I)I

    move-result v0

    return v0
.end method

.method private final getEnableTaskStorage()Z
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/miniapp/NewTaskManager;->access$getEnableTaskStorage$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppId(Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppToken(J)V

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMStatus(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/miniapp/NewTaskManager;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/NewTaskManager;

    return-object v0
.end method

.method public final updateTaskIdByAppId(Ljava/lang/String;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkFeedBackApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniapp/NewTaskManager;->access$getSProcessInfos$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setTaskId(I)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getEnableTaskStorage()Z

    move-result p2

    if-eqz p2, :cond_4

    const-class p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "miniapp_task_info_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    const-string v3, "minisdk_storage"

    invoke-interface {p2, v0, v3, v1, p1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveUpdateTaskIdByAppId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NewTaskManager"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
