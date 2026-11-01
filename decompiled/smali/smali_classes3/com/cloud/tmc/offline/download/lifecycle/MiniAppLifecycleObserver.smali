.class public final Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver$Companion;,
        Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver;",
        "Landroidx/lifecycle/r;",
        "",
        "appId",
        "<init>",
        "(Ljava/lang/String;)V",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "event",
        "",
        "dispatchStateChange",
        "(Landroidx/lifecycle/Lifecycle$Event;)V",
        "checkSpecialGroupsReport",
        "()V",
        "Landroidx/lifecycle/u;",
        "source",
        "onStateChanged",
        "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V",
        "Ljava/lang/String;",
        "Companion",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver$Companion;

.field private static final TAG:Ljava/lang/String; = "MiniAppLifecycleObserve"


# instance fields
.field private final appId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver;->Companion:Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver;->appId:Ljava/lang/String;

    return-void
.end method

.method private final checkSpecialGroupsReport()V
    .locals 3

    :try_start_0
    const-string v0, "100000"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/cloud/tmc/offline/download/OfflineManager;->getContext$com_cloud_tmc_offline_download()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportResourceRecord(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    const-string v1, "MiniAppLifecycleObserve"

    const-string v2, "checkSpecialGroupsReport"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private final dispatchStateChange(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    sget-object v0, Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/cloud/tmc/offline/download/utils/TrackReportUtils;->reportResourceRecord(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver;->checkSpecialGroupsReport()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/cloud/tmc/offline/download/lifecycle/MiniAppLifecycleObserver;->dispatchStateChange(Landroidx/lifecycle/Lifecycle$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "MiniAppLifecycleObserve"

    const-string v0, "onStateChanged"

    invoke-static {p2, v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
