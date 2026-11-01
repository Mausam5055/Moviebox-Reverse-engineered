.class public final Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/NewTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

.field private static STATUS_PROCESS_BACKGROUND:I

.field private static STATUS_PROCESS_DEAD:I

.field private static STATUS_PROCESS_IDLE:I

.field private static STATUS_PROCESS_LAST_USED:I

.field private static STATUS_PROCESS_RUNNING:I

.field private static STATUS_PROCESS_WAIT_RELEASE:I


# instance fields
.field private mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

.field private mAppId:Ljava/lang/String;

.field private mAppToken:J

.field private mStatus:I

.field private taskId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->Companion:Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo$Companion;

    const/4 v0, 0x1

    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_IDLE:I

    const/4 v0, 0x2

    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_RUNNING:I

    const/4 v0, 0x3

    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_BACKGROUND:I

    const/4 v0, 0x4

    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_WAIT_RELEASE:I

    const/4 v0, 0x5

    sput v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_LAST_USED:I

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V
    .locals 1

    const-string v0, "activityInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_DEAD:I

    iput v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mStatus:I

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    return-void
.end method

.method public static final synthetic access$getSTATUS_PROCESS_BACKGROUND$cp()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_BACKGROUND:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESS_DEAD$cp()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_DEAD:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESS_IDLE$cp()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_IDLE:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESS_LAST_USED$cp()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_LAST_USED:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESS_RUNNING$cp()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_RUNNING:I

    return v0
.end method

.method public static final synthetic access$getSTATUS_PROCESS_WAIT_RELEASE$cp()I
    .locals 1

    sget v0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_WAIT_RELEASE:I

    return v0
.end method

.method public static final synthetic access$setSTATUS_PROCESS_BACKGROUND$cp(I)V
    .locals 0

    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_BACKGROUND:I

    return-void
.end method

.method public static final synthetic access$setSTATUS_PROCESS_DEAD$cp(I)V
    .locals 0

    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_DEAD:I

    return-void
.end method

.method public static final synthetic access$setSTATUS_PROCESS_IDLE$cp(I)V
    .locals 0

    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_IDLE:I

    return-void
.end method

.method public static final synthetic access$setSTATUS_PROCESS_LAST_USED$cp(I)V
    .locals 0

    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_LAST_USED:I

    return-void
.end method

.method public static final synthetic access$setSTATUS_PROCESS_RUNNING$cp(I)V
    .locals 0

    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_RUNNING:I

    return-void
.end method

.method public static final synthetic access$setSTATUS_PROCESS_WAIT_RELEASE$cp(I)V
    .locals 0

    sput p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->STATUS_PROCESS_WAIT_RELEASE:I

    return-void
.end method


# virtual methods
.method public final getMActivityInfo()Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    return-object v0
.end method

.method public final getMAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMAppToken()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppToken:J

    return-wide v0
.end method

.method public final getMStatus()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mStatus:I

    return v0
.end method

.method public final getTaskId()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->taskId:I

    return v0
.end method

.method public final setMActivityInfo(Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    return-void
.end method

.method public final setMAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public final setMAppToken(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppToken:J

    return-void
.end method

.method public final setMStatus(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mStatus:I

    return-void
.end method

.method public final setTaskId(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->taskId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcessInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getMProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",activityName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mActivityInfo:Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/NewTaskManager$ActivityInfo;->getActivityClazz()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",apptoken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/NewTaskManager$ProcessInfo;->mAppToken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "builder.append(mActivity\u2026end(mAppToken).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
