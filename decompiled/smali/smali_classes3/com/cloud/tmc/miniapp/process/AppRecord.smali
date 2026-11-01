.class public final Lcom/cloud/tmc/miniapp/process/AppRecord;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/process/AppRecord$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/process/AppRecord$OooO00o;

.field private static final TAG:Ljava/lang/String; = "Tmcintegration:AppRecord"

.field private static lastStartToken:J = -0x1L


# instance fields
.field private activityClz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final appId:Ljava/lang/String;

.field private isReceivedRemoteReady:Z

.field private isTaskRoot:Z

.field private mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

.field private mSceneParams:Landroid/os/Bundle;

.field private mStartParams:Landroid/os/Bundle;

.field private remoteLpid:I

.field private runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final startToken:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/process/AppRecord$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/process/AppRecord$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/process/AppRecord;->Companion:Lcom/cloud/tmc/miniapp/process/AppRecord$OooO00o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->appId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->startToken:J

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mStartParams:Landroid/os/Bundle;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p5, :cond_0

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mSceneParams:Landroid/os/Bundle;

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const-string p1, "startToken"

    invoke-virtual {p5, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 7
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/process/AppRecord;-><init>(Ljava/lang/String;JLandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$getLastStartToken$cp()J
    .locals 2

    sget-wide v0, Lcom/cloud/tmc/miniapp/process/AppRecord;->lastStartToken:J

    return-wide v0
.end method

.method public static final synthetic access$setLastStartToken$cp(J)V
    .locals 0

    sput-wide p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->lastStartToken:J

    return-void
.end method


# virtual methods
.method public final finishClient()V
    .locals 0

    return-void
.end method

.method public final getActivityClz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->activityClz:Ljava/lang/Class;

    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppModel()Lcom/cloud/tmc/integration/model/AppModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-object v0
.end method

.method public final getRemoteLpid()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->remoteLpid:I

    return v0
.end method

.method public final getRunningTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public final getSceneParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mSceneParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getStartParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mStartParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getStartToken()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->startToken:J

    return-wide v0
.end method

.method public final isReceivedRemoteReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->isReceivedRemoteReady:Z

    return v0
.end method

.method public final isTaskRoot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->isTaskRoot:Z

    return v0
.end method

.method public final setActivityClz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->activityClz:Ljava/lang/Class;

    return-void
.end method

.method public final setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mAppModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-void
.end method

.method public final setReceivedRemoteReady(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->remoteLpid:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->isReceivedRemoteReady:Z

    return-void
.end method

.method public final setRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public final setSceneParams(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mSceneParams:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-class v0, Lcom/cloud/tmc/miniapp/process/AppRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public final setStartParams(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mStartParams:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-class v0, Lcom/cloud/tmc/miniapp/process/AppRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method

.method public final setTaskRoot(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->isTaskRoot:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->mStartParams:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/process/AppRecord;->activityClz:Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppRecord{mStartToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", appId=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', activityClz="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
