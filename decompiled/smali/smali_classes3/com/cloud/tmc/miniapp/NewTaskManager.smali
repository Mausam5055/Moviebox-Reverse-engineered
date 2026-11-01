.class public final Lcom/cloud/tmc/miniapp/NewTaskManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;,
        Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;,
        Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;,
        Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

.field public static final KEY_APM_PRELAUNCH_PROCESS:Ljava/lang/String; = "PreLaunchProcess"

.field public static final KEY_APM_PRELAUNCH_PROCESS_PHASE:Ljava/lang/String; = "PreLaunchProcessPhase"

.field public static final KEY_PROCESS_MESSAGE:Ljava/lang/String; = "processMessage"

.field private static final TAG:Ljava/lang/String; = "NewTaskManager"

.field public static final UNKNOWN_PROCESS:Ljava/lang/String; = "unknown process"

.field private static final enableTaskStorage$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/cloud/tmc/miniapp/NewTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaxIdleProcessNum:I

.field private static final sProcessInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isInitNativeStorage:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion$instance$2;->INSTANCE:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion$instance$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->instance$delegate:Lkotlin/Lazy;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion$enableTaskStorage$2;->INSTANCE:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion$enableTaskStorage$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->enableTaskStorage$delegate:Lkotlin/Lazy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x1

    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sMaxIdleProcessNum:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;-><init>()V

    const-class v1, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity1;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setActivityClazz(Ljava/lang/Class;)V

    const-string v1, ":mini"

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setMProcessName(Ljava/lang/String;)V

    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-direct {v2, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;-><init>(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;-><init>()V

    const-class v3, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity2;

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setActivityClazz(Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setMProcessName(Ljava/lang/String;)V

    new-instance v3, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-direct {v3, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;-><init>(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;-><init>()V

    const-class v3, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity3;

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setActivityClazz(Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setMProcessName(Ljava/lang/String;)V

    new-instance v3, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-direct {v3, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;-><init>(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;-><init>()V

    const-class v3, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity4;

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setActivityClazz(Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->setMProcessName(Ljava/lang/String;)V

    new-instance v1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-direct {v1, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;-><init>(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEnableTaskStorage$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->enableTaskStorage$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getSProcessInfos$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    return-object v0
.end method

.method private final clearIdleProcess(Z)V
    .locals 5

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMStatus()I

    move-result v3

    sget-object v4, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_IDLE()I

    move-result v4

    if-ne v3, v4, :cond_0

    if-nez p1, :cond_1

    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getCurrentIdleProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I

    move-result v3

    sget v4, Lcom/cloud/tmc/miniapp/NewTaskManager;->sMaxIdleProcessNum:I

    if-le v3, v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->releaseProcess(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMStatus()I

    move-result v3

    sget-object v4, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_LAST_USED()I

    move-result v4

    if-ne v3, v4, :cond_3

    if-nez p1, :cond_4

    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getCurrentIdleProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I

    move-result v3

    sget v4, Lcom/cloud/tmc/miniapp/NewTaskManager;->sMaxIdleProcessNum:I

    if-le v3, v4, :cond_3

    :cond_4
    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->releaseProcess(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)V

    goto :goto_2

    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p1
.end method

.method private final finishActivityTask(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_3

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v1

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishActivity(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v0, "NewTaskManager"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private final getFirstDeadProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_DEAD()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstProcessByStatus(I)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getFirstProcessByStatus(I)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 3

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMStatus()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getFirstRunningProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_RUNNING()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstProcessByStatus(I)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method private final getNextLaunchActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;
    .locals 6

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    :try_start_1
    const-string v0, "NewTaskManager"

    const-string v2, "getNextLaunchActivityInfo finish"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstLastUsedProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v0

    const-string v3, "NewTaskManager"

    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use last process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v2, "NewTaskManager"

    const-string v3, "getNextLaunchActivityInfo finish"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_1
    move-exception v0

    goto/16 :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstIdleProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "NewTaskManager"

    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use idle process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v2, "NewTaskManager"

    const-string v3, "getNextLaunchActivityInfo finish"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstDeadProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v2

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getCurrentRunningProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I

    move-result v0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    move-result v4

    if-ge v0, v4, :cond_3

    if-eqz v2, :cond_3

    const-string v0, "NewTaskManager"

    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Use new process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v2, "NewTaskManager"

    const-string v3, "getNextLaunchActivityInfo finish"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_3
    :try_start_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstRunningProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "NewTaskManager"

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reuse background info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    const-string v0, "NewTaskManager"

    const-string v3, "getNextLaunchActivityInfo finish"

    invoke-static {v0, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit v1

    return-object v2

    :cond_4
    :try_start_a
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstRunningProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "NewTaskManager"

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fallback: Reuse info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    const-string v2, "NewTaskManager"

    const-string v3, "getNextLaunchActivityInfo finish"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_5
    :try_start_c
    const-string v0, "NewTaskManager"

    const-string v2, "Error, Can\'t find container to launch, please Check"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    const-string v0, "NewTaskManager"

    const-string v2, "getNextLaunchActivityInfo finish"

    invoke-static {v0, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit v1

    return-object v3

    :goto_0
    :try_start_e
    const-string v2, "NewTaskManager"

    const-string v3, "getNextLaunchActivityInfo finish"

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_1
    monitor-exit v1

    throw v0
.end method

.method private final getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/service/EnvironmentService;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/service/EnvironmentService;

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/service/EnvironmentService;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getMProcessName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const-string p1, "unknown process"

    return-object p1
.end method

.method private final getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getProcessInfoByActivityInfo(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 3

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic moveToForeground$default(Lcom/cloud/tmc/miniapp/NewTaskManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->moveToForeground(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final printStatus()V
    .locals 0

    return-void
.end method

.method private final declared-synchronized releaseProcess(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_WAIT_RELEASE()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMStatus(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final removeFromRecentTasksList(Ljava/lang/Class;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "NewTaskManager"

    if-nez p1, :cond_0

    const-string p1, "removeFromRecentTasksList: className null"

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_DEAD()I

    move-result v3

    invoke-static {v2, p2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v2

    const-string v3, "activityManager.appTasks"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    const-string v5, "appTask.taskInfo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/cloud/tmc/miniapp/g;->a(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/cloud/tmc/miniapp/g;->a(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_2

    :cond_1
    move-object v7, v6

    :goto_1
    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    const-string v2, "removeFromRecentTasksList: finishAndRemoveTask success"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_2
    const-string v3, "removeFromRecentTasksList: recentTaskInfo null"

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/cloud/tmc/miniapp/g;->a(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeFromRecentTasksList: recentTaskInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_2
    const-string v3, "removeFromRecentTasksList exception"

    invoke-static {v1, v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_DEAD()I

    move-result v2

    invoke-static {v1, p2, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->finishActivityTask(Ljava/lang/Class;)V

    :cond_5
    return v0
.end method

.method private final updateConfig()V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getEnableTaskStorage(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "NewTaskManager"

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "init updateTaskInfoConfig:enableTaskStorage is false"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->t(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->a()I

    move-result v2

    const-class v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v3}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    const-string v5, "minisdk_storage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "miniapp_task_info_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    sget-object v4, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_2
    invoke-virtual {v4, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppId(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " init updateTaskInfoConfig:MiniappActivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_3
    return-void
.end method


# virtual methods
.method public final addActivityStack(Ljava/lang/String;)V
    .locals 5

    const-string v0, "NewTaskManager"

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    if-eqz v2, :cond_2

    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_2
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-nez p1, :cond_3

    move-object v4, v3

    goto :goto_1

    :cond_3
    move-object v4, p1

    :goto_1
    :try_start_1
    invoke-direct {v2, v4, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addActivityStack: add appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addActivityStack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final addStack(Ljava/lang/String;JLcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V
    .locals 5

    const-string v0, "addStack finish"

    const-string v1, "NewTaskManager"

    const-string v2, "appId"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    return-void

    :cond_0
    if-nez p4, :cond_1

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getActivityClazz()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessInfoByActivityInfo(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStack oldAppid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",new appId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeFromStack(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_RUNNING()I

    move-result v2

    invoke-virtual {p4, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMStatus(I)V

    invoke-virtual {p4, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppId(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppToken(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    goto :goto_2

    :goto_1
    :try_start_2
    const-string p2, "addStack exception:"

    invoke-static {v1, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    throw p1
.end method

.method public final checkFeedBackApp(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "1000391591855976448"

    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v2, "miniFeedbackId"

    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final checkMiniAppServerApp(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "1000550440273772544"

    :try_start_0
    const-class v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v2, "miniAppServerId"

    invoke-interface {v1, v2, v0}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final checkOpenMutipleTask(Ljava/lang/String;)Z
    .locals 1

    const-class p1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getOpenMutipleTask()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final checkRecentTaskList()V
    .locals 10

    const-string v0, "miniapp_task_info_"

    const-string v1, "minisdk_storage"

    const-class v2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v3, "NewTaskManager"

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "<checkRecentTaskList> getMaxTaskNum == 0, try clean recentTaskList"

    invoke-static {v3, v4}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->t(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Lkotlin/collections/IntIterator;

    invoke-virtual {v5}, Lkotlin/collections/IntIterator;->a()I

    move-result v5

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v1, v8}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-static {v2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v6, v7, v1, v8, v9}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    const-class v7, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity4;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    const-class v7, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity3;

    goto :goto_1

    :cond_3
    const-class v7, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity2;

    goto :goto_1

    :cond_4
    const-class v7, Lcom/cloud/tmc/miniapp/ui/multiprogress/MiniSubActivity1;

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<checkRecentTaskList> task_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " exit, try clean "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " recentTask"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_0

    invoke-direct {p0, v7, v6}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeFromRecentTasksList(Ljava/lang/Class;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_2
    const-string v1, "<checkRecentTaskList> error"

    invoke-static {v3, v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public final checkTaskId(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "NewTaskManager"

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getActivityClazz()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_2
    move-object v3, v4

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkTaskId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFromRecentTasksList activity appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",processInfo.mAppId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, "removeFromRecentTasksList,remove"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeFromRecentTasksList(Ljava/lang/Class;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Z

    goto :goto_3

    :cond_5
    const-string p2, "removeFromRecentTasksList, update"

    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final checkUseSingleTaskMode(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkFeedBackApp(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final getExistAppIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    if-eqz v2, :cond_0

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getFirstIdleProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_IDLE()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstProcessByStatus(I)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getFirstLastUsedProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_LAST_USED()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstProcessByStatus(I)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getForegroundAppId()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getChildAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMaxTaskNum()I
    .locals 3

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/service/ConfigService;

    const-string v1, "mutipleTaskV2"

    sget-object v2, Lcom/cloud/tmc/miniapp/CommonAppUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/CommonAppUtils;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/CommonAppUtils;->getDefaultMultiTaskCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/kernel/service/ConfigService;->getConfigInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NewTaskManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getProcessInfoByAppId(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
    .locals 3

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getTaskRootAppId()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isInitNativeStorage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager;->isInitNativeStorage:Z

    return v0
.end method

.method public final moveToForeground(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childAppId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "NewTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveToForeground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessInfoByAppId(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_RUNNING()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMStatus(I)V

    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    if-nez v2, :cond_3

    new-instance v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    invoke-direct {v2, p1, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2, p2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->setChildAppId(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string p1, "NewTaskManager"

    const-string p2, "moveToForeground:Can\'t find target in sActivityStack?"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    :try_start_1
    const-string p1, "NewTaskManager"

    const-string p2, "moveToForeground finish"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_2
    :try_start_2
    const-string p2, "NewTaskManager"

    const-string v1, "moveToForeground exception:"

    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string p1, "NewTaskManager"

    const-string p2, "moveToForeground finish"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    :try_start_4
    const-string p2, "NewTaskManager"

    const-string v1, "moveToForeground finish"

    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    monitor-exit v0

    throw p1
.end method

.method public final preLaunchActivity(Landroid/content/Context;Lcom/cloud/tmc/miniapp/process/AppRecord;)Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appRecord"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkRecentTaskList()V

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/process/AppRecord;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/process/AppRecord;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    :goto_1
    const-string v1, "NewTaskManager"

    const-string v2, "getNextLaunchActivityInfo error"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :try_start_1
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v1, 0x1

    :try_start_2
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/NewTaskManager;->isInitNativeStorage:Z

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager;->isInitNativeStorage:Z

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->updateConfig()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_3
    const-string v3, "NewTaskManager"

    const-string v4, "updateConfig error"

    invoke-static {v3, v4, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/process/AppRecord;->getAppId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-virtual {v5}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :catchall_2
    move-exception p2

    goto/16 :goto_4

    :cond_4
    move-object v4, p1

    :goto_3
    check-cast v4, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    if-eqz v4, :cond_5

    const-string p2, "NewTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preLaunchActivity: current activity , appId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string p1, "NewTaskManager"

    const-string v0, "preLaunchActivity finish"

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    return-object p2

    :catchall_3
    move-exception p2

    goto :goto_5

    :cond_5
    :try_start_5
    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-static {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getCurrentRunningProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I

    move-result v3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getMaxTaskNum()I

    move-result v4

    if-lt v3, v4, :cond_8

    const-string v4, "NewTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentRunningProcessNum\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_6
    const-string v3, ""

    :cond_7
    const-string v4, "NewTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldAppId\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeFromStack(Ljava/lang/String;Z)V

    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getNextLaunchActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lcom/cloud/tmc/miniapp/process/AppRecord;->getStartToken()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->addStack(Ljava/lang/String;JLcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string p1, "NewTaskManager"

    const-string p2, "preLaunchActivity finish"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    return-object v1

    :cond_9
    :try_start_7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v0

    goto :goto_6

    :goto_4
    monitor-exit v0

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_5
    :try_start_9
    const-string v0, "NewTaskManager"

    const-string v1, "preLaunchActivity exception:"

    invoke-static {v0, v1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_6
    const-string p2, "NewTaskManager"

    const-string v0, "preLaunchActivity finish"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    return-object p1

    :catchall_4
    move-exception p1

    const-string p2, "NewTaskManager"

    const-string v0, "preLaunchActivity finish"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    throw p1
.end method

.method public final remoceFromStackFromRecent(Ljava/lang/String;)V
    .locals 4

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getChildAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, ""

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->setChildAppId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessInfoByAppId(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeTaskQueue(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_DEAD()I

    move-result p1

    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :try_start_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v1

    throw p1
.end method

.method public final removeActivityStack(Ljava/lang/String;)V
    .locals 4

    const-string v0, "NewTaskManager"

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkOpenMutipleTask(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    if-eqz v2, :cond_2

    sget-object v1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeActivityStack: remove appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final removeFromStack(Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->getInstance()Lcom/cloud/tmc/miniapp/NewTaskManager;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->checkUseSingleTaskMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getChildAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, ""

    invoke-virtual {v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->setChildAppId(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string p1, "NewTaskManager"

    const-string p2, "removeFromStack finish"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :try_start_2
    const-string v2, "NewTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFromStack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessInfoByAppId(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    :try_start_3
    const-string p1, "NewTaskManager"

    const-string p2, "removeFromStack finish"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    return-void

    :cond_2
    :try_start_4
    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getProcessFullName(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    const-string v5, "NewTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeFromStack:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeTaskQueue(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getActivityClazz()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->removeFromRecentTasksList(Ljava/lang/Class;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)Z

    if-eqz p2, :cond_3

    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_DEAD()I

    move-result p1

    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->getFirstLastUsedProcess()Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$getCurrentIdleProcessNum(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;)I

    move-result p1

    sget p2, Lcom/cloud/tmc/miniapp/NewTaskManager;->sMaxIdleProcessNum:I

    if-lt p1, p2, :cond_4

    invoke-direct {p0, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager;->releaseProcess(Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;)V

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_IDLE()I

    move-result p1

    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    if-nez p1, :cond_7

    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;->getSTATUS_PROCESS_LAST_USED()I

    move-result p1

    invoke-static {v0, v2, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;->access$resetProcessInfoToStatus(Lcom/cloud/tmc/miniapp/NewTaskManager$Companion;Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;I)V

    :cond_7
    :goto_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/NewTaskManager;->clearIdleProcess(Z)V

    goto :goto_2

    :cond_8
    const-string p1, "NewTaskManager"

    const-string p2, "removeFromStack:Can\'t find target in sActivityStack?"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    const-string p1, "NewTaskManager"

    const-string p2, "removeFromStack finish"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :goto_3
    :try_start_6
    const-string p2, "NewTaskManager"

    const-string v0, "removeFromStack exception:"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    const-string p1, "NewTaskManager"

    const-string p2, "removeFromStack finish"

    invoke-static {p1, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v1

    return-void

    :catchall_2
    move-exception p1

    :try_start_8
    const-string p2, "NewTaskManager"

    const-string v0, "removeFromStack finish"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/NewTaskManager;->printStatus()V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_5
    monitor-exit v1

    throw p1
.end method

.method public final removeTaskQueue(Ljava/lang/String;)V
    .locals 3

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    sget-object p1, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v0, "NewTaskManager"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final setInitNativeStorage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager;->isInitNativeStorage:Z

    return-void
.end method

.method public final updateProcessInfoByAppId(Ljava/lang/String;)V
    .locals 5

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager;->sProcessInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->getMAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/cloud/tmc/miniapp/NewTaskManager;->taskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    invoke-virtual {v4}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getRootAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cloud/tmc/miniapp/NewTaskManager$TaskModel;->getChildAppId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, ""

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current root id -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,new root id -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NewTaskManager"

    invoke-static {v4, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->setMAppId(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method
