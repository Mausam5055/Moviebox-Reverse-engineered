.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OnPauseAppPointImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/point/OnPauseAppPoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/defaultimpl/OnPauseAppPointImpl$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/defaultimpl/OnPauseAppPointImpl$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/OnPauseAppPointImpl$OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/OnPauseAppPointImpl$OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/OnPauseAppPointImpl;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/OnPauseAppPointImpl$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalized()V
    .locals 2

    const-string v0, "OnPauseAppPointImpl"

    const-string v1, "onFinalized"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInitialized()V
    .locals 2

    const-string v0, "OnPauseAppPointImpl"

    const-string v1, "onInitialized"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Lcom/cloud/tmc/integration/structure/App;Lcom/cloud/tmc/kernel/extension/ExtensionManager;)V
    .locals 0

    const-string p2, "app"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-class p2, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    invoke-interface {p1, p2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/model/AudioRecordCache;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/model/AudioRecordCache;->getRecorderClientCache()Ljava/util/HashMap;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isStopped()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isRecording()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->isPaused()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/audio/recording/RecorderClient;->pauseRecording()V

    :cond_3
    :goto_0
    sget-object p1, Lcom/cloud/tmc/integration/utils/ScreenUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/ScreenUtils;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/utils/ScreenUtils;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string p2, "OnPauseAppPointImpl"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
