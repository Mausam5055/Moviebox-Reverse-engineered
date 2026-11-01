.class public final Lcom/cloud/tmc/integration/chain/app/AppChainContext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/chain/ChainContext;
.implements Lcom/cloud/tmc/integration/chain/app/IAppOpen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/chain/app/AppChainContext$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0019\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003JB\u0010g\u001a\u0002022\u001a\u0008\u0002\u0010h\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0(0!2\u0014\u0008\u0002\u0010i\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!2\u0006\u0010j\u001a\u000202H\u0002JH\u0010k\u001a\u00020l2\u0006\u0010m\u001a\u00020R2\u001a\u0008\u0002\u0010h\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0(0!2\u0014\u0008\u0002\u0010i\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!2\u0006\u0010n\u001a\u00020\u001bJ\u0010\u0010o\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0016J\u0010\u0010r\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0002J\u0008\u0010s\u001a\u00020\u001bH\u0002J\u0018\u0010b\u001a\u00020\u001b2\u0006\u0010t\u001a\u00020\u001b2\u0006\u0010u\u001a\u00020\u001bH\u0002J\u0010\u0010v\u001a\u00020\"2\u0006\u0010w\u001a\u00020\u0012H\u0002J\u0010\u0010x\u001a\u00020l2\u0006\u0010y\u001a\u00020qH\u0016J\u0010\u0010z\u001a\u00020l2\u0006\u0010w\u001a\u00020\u0012H\u0002J\u0010\u0010{\u001a\u00020l2\u0006\u0010|\u001a\u00020\u0012H\u0002J\u0010\u0010}\u001a\u00020l2\u0006\u0010~\u001a\u00020\u0012H\u0002J\u0011\u0010\u007f\u001a\u00020l2\u0007\u0010\u0080\u0001\u001a\u00020\u0012H\u0002J\u0011\u0010\u0081\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0002J\u0018\u0010\u0082\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020q2\u0007\u0010\u0083\u0001\u001a\u000202J\u0011\u0010\u0084\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020qH\u0002J\u0018\u0010\u0085\u0001\u001a\u00020l2\u0006\u0010p\u001a\u00020q2\u0007\u0010\u0083\u0001\u001a\u000202J\u0007\u0010\u0086\u0001\u001a\u00020lJ\u0011\u0010\u0087\u0001\u001a\u00020l2\u0006\u0010y\u001a\u00020qH\u0002J\u0011\u0010\u0088\u0001\u001a\u00020l2\u0006\u0010y\u001a\u00020qH\u0002J\u0011\u0010\u0089\u0001\u001a\u00020l2\u0006\u0010w\u001a\u00020\u0012H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR&\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R,\u0010\'\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0(0!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010$\"\u0004\u0008*\u0010&R\u001a\u0010+\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0007\"\u0004\u0008-\u0010\tR\u001a\u0010.\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0007\"\u0004\u00080\u0010\tR\u001a\u00101\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00103\"\u0004\u00084\u00105R\u001a\u00106\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00103\"\u0004\u00087\u00105R\u001a\u00108\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u001d\"\u0004\u0008:\u0010\u001fR\u001a\u0010;\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u00103\"\u0004\u0008=\u00105R\u001a\u0010>\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0007\"\u0004\u0008@\u0010\tR\u001a\u0010A\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u00103\"\u0004\u0008C\u00105R\u001a\u0010D\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u0007\"\u0004\u0008F\u0010\tR\u001a\u0010G\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u00103\"\u0004\u0008I\u00105R\u001a\u0010J\u001a\u00020KX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010M\"\u0004\u0008N\u0010OR\u0017\u0010P\u001a\u0008\u0012\u0004\u0012\u00020R0Q\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008S\u0010TR\u001a\u0010U\u001a\u00020KX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010M\"\u0004\u0008W\u0010OR\u001a\u0010X\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010\u0007\"\u0004\u0008Z\u0010\tR&\u0010[\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\"0!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010$\"\u0004\u0008]\u0010&R,\u0010^\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0(0!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010$\"\u0004\u0008`\u0010&R\u001a\u0010a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010\u001d\"\u0004\u0008c\u0010\u001fR&\u0010d\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u001b0!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010$\"\u0004\u0008f\u0010&\u00a8\u0006\u008a\u0001"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/chain/app/AppChainContext;",
        "Lcom/cloud/tmc/integration/chain/ChainContext;",
        "Lcom/cloud/tmc/integration/chain/app/IAppOpen;",
        "()V",
        "appId",
        "",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "value",
        "Lcom/cloud/tmc/integration/chain/ContextType;",
        "contextType",
        "getContextType",
        "()Lcom/cloud/tmc/integration/chain/ContextType;",
        "setContextType",
        "(Lcom/cloud/tmc/integration/chain/ContextType;)V",
        "currentChainEndState",
        "Lcom/cloud/tmc/integration/chain/ChainState;",
        "getCurrentChainEndState",
        "()Lcom/cloud/tmc/integration/chain/ChainState;",
        "setCurrentChainEndState",
        "(Lcom/cloud/tmc/integration/chain/ChainState;)V",
        "currentChainStartState",
        "getCurrentChainStartState",
        "setCurrentChainStartState",
        "firstPageMaxStage",
        "",
        "getFirstPageMaxStage",
        "()I",
        "setFirstPageMaxStage",
        "(I)V",
        "firstPageStateCostTime",
        "",
        "",
        "getFirstPageStateCostTime",
        "()Ljava/util/Map;",
        "setFirstPageStateCostTime",
        "(Ljava/util/Map;)V",
        "firstPageStateRangeTime",
        "",
        "getFirstPageStateRangeTime",
        "setFirstPageStateRangeTime",
        "h5ProgressCollectList",
        "getH5ProgressCollectList",
        "setH5ProgressCollectList",
        "hotOpenType",
        "getHotOpenType",
        "setHotOpenType",
        "isReportEnd",
        "",
        "()Z",
        "setReportEnd",
        "(Z)V",
        "isReportMid",
        "setReportMid",
        "maxStage",
        "getMaxStage",
        "setMaxStage",
        "offScreenRender",
        "getOffScreenRender",
        "setOffScreenRender",
        "openChannel",
        "getOpenChannel",
        "setOpenChannel",
        "openMiniAppEndResult",
        "getOpenMiniAppEndResult",
        "setOpenMiniAppEndResult",
        "openMiniAppFailedReason",
        "getOpenMiniAppFailedReason",
        "setOpenMiniAppFailedReason",
        "openMiniAppMidResult",
        "getOpenMiniAppMidResult",
        "setOpenMiniAppMidResult",
        "openedPageCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getOpenedPageCount",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "setOpenedPageCount",
        "(Ljava/util/concurrent/atomic/AtomicInteger;)V",
        "pageContexts",
        "Ljava/util/Stack;",
        "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
        "getPageContexts",
        "()Ljava/util/Stack;",
        "pageIndexOfApp",
        "getPageIndexOfApp",
        "setPageIndexOfApp",
        "scene",
        "getScene",
        "setScene",
        "stateCostTime",
        "getStateCostTime",
        "setStateCostTime",
        "stateRangeTime",
        "getStateRangeTime",
        "setStateRangeTime",
        "syncType",
        "getSyncType",
        "setSyncType",
        "syncTypeMap",
        "getSyncTypeMap",
        "setSyncTypeMap",
        "appendStagesFail",
        "tmpStateRangeTime",
        "tmpStateCostTime",
        "existInStage",
        "appendStagesSuccess",
        "",
        "pageChainContext",
        "stage",
        "destroy",
        "data",
        "Landroid/os/Bundle;",
        "destroyReport",
        "getMaxStageFromCompare",
        "currentSyncType",
        "nextSyncType",
        "getTime",
        "chainState",
        "hotOpen",
        "dataBundle",
        "insertData",
        "parseChainEnd",
        "chainEndState",
        "parseChainStart",
        "chainStartState",
        "parseChianError",
        "appErrorState",
        "reportAppOpenEndFail",
        "reportAppOpenEndSuccess",
        "launch",
        "reportAppOpenMidFail",
        "reportAppOpenMidSuccess",
        "reportFailureClickReloadButton",
        "reportPageOpenEndFail",
        "reportPageOpenMidFail",
        "setChainState",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

.field private currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

.field private firstPageMaxStage:I

.field private firstPageStateCostTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private firstPageStateRangeTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private h5ProgressCollectList:Ljava/lang/String;

.field private hotOpenType:Ljava/lang/String;

.field private isReportEnd:Z

.field private isReportMid:Z

.field private maxStage:I

.field private offScreenRender:Z

.field private openChannel:Ljava/lang/String;

.field private openMiniAppEndResult:Z

.field private openMiniAppFailedReason:Ljava/lang/String;

.field private openMiniAppMidResult:Z

.field private openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pageContexts:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
            ">;"
        }
    .end annotation
.end field

.field private pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

.field private scene:Ljava/lang/String;

.field private stateCostTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private stateRangeTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private syncType:I

.field private syncTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageContexts:Ljava/util/Stack;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "0"

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateCostTime:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncTypeMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    const-string v0, "-1"

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    return-void
.end method

.method private final appendStagesFail(Ljava/util/Map;Ljava/util/Map;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-class v1, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_appendStages"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chainPoint"

    invoke-static {v2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    const-string v2, "3"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-gt v2, v1, :cond_2

    move v5, v2

    :goto_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Long;

    aput-object v7, v9, v0

    aput-object v8, v9, v2

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v5, v1, :cond_2

    add-int/2addr v5, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object p3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateCostTime:Ljava/util/Map;

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->t0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, v2

    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateCostTime:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    return p3
.end method

.method static synthetic appendStagesFail$default(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Ljava/util/Map;Ljava/util/Map;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appendStagesFail(Ljava/util/Map;Ljava/util/Map;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic appendStagesSuccess$default(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Lcom/cloud/tmc/integration/chain/page/PageChainContext;Ljava/util/Map;Ljava/util/Map;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appendStagesSuccess(Lcom/cloud/tmc/integration/chain/page/PageChainContext;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method private final destroyReport(Landroid/os/Bundle;)V
    .locals 5

    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppMidResult:Z

    iget-boolean v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppEndResult:Z

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_destroyReport->openMiniAppMidResult:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", openMiniAppEndResult:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pageIndexOfApp:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppMidResult:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportPageOpenMidFail(Landroid/os/Bundle;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenMidFail(Landroid/os/Bundle;)V

    :cond_1
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppEndResult:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportPageOpenEndFail(Landroid/os/Bundle;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenEndFail(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method private final getMaxStageFromCompare()I
    .locals 2

    iget v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    iget v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageMaxStage:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private final getSyncType(II)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J
    .locals 2

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private final insertData(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertData_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SYNC_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SYNC_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncTypeMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getChainType()Lcom/cloud/tmc/integration/chain/ChainType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/ChainType;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    invoke-direct {p0, p1, v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getSyncType(II)I

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    :cond_0
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_MINI_APP_FAILED_REASON:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "\u89e3\u6790\u5931\u8d25\u539f\u56e0\u9519\u8bef"

    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    :cond_2
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_H5_PROGRESS_STATUS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "data.getString(APP_H5_PROGRESS_STATUS, \"\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    :cond_3
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_OFF_SCREEN_RENDER:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->APP_OFF_SCREEN_RENDER:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method

.method private final parseChainEnd(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseChainEnd_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final parseChainStart(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseChainStart_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->log(Ljava/lang/String;)V

    instance-of v0, p1, Lcom/cloud/tmc/integration/chain/startState/SetupStepStartState;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_APP_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_APP_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    const-string v1, "3"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_SCENE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainStartState.dataBund\u2026tString(CHAIN_SCENE, \"0\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    :cond_3
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_OPEN_CHANNEL:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainStartState.dataBund\u2026CHAIN_OPEN_CHANNEL, \"-1\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    :cond_4
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final parseChianError(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseChianError_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final reportAppOpenEndFail(Landroid/os/Bundle;)V
    .locals 10

    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_reportAppOpenEndFail->isReportEnd:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "openMiniAppResult"

    const-string v2, "false"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openMiniAppFailedReason"

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "maxStage"

    invoke-direct {p0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getMaxStageFromCompare()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "syncType"

    iget v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "open_channel"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "hot_open_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-nez v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-eqz v5, :cond_6

    if-eqz p1, :cond_6

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    goto :goto_2

    :cond_4
    move-wide v8, v6

    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    :cond_5
    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v0, v5}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appendStagesFail(Ljava/util/Map;Ljava/util/Map;Z)Z

    move-result v2

    const-string v3, "isExitInStage"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "stageCostTime"

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stageRangeTime"

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "scene"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "page_path"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "openedPageCount"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "appH5ProgressStatus"

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "offScreenRender"

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    const-string v2, "mini_app_open_end"

    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final reportAppOpenMidFail(Landroid/os/Bundle;)V
    .locals 10

    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_reportAppOpenMidFail->isReportMid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "openMiniAppResult"

    const-string v2, "false"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openMiniAppFailedReason"

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "maxStage"

    invoke-direct {p0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getMaxStageFromCompare()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "syncType"

    iget v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "open_channel"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "hot_open_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-nez v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-eqz v5, :cond_6

    if-eqz p1, :cond_6

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    goto :goto_2

    :cond_4
    move-wide v8, v6

    :goto_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    :cond_5
    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v0, v5}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appendStagesFail(Ljava/util/Map;Ljava/util/Map;Z)Z

    move-result v2

    const-string v3, "isExitInStage"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "stageCostTime"

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stageRangeTime"

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "scene"

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "page_path"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "openedPageCount"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    const-string v2, "mini_app_open_mid"

    invoke-interface {p1, v0, v2, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final reportPageOpenEndFail(Landroid/os/Bundle;)V
    .locals 10

    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_reportPageOpenEndFail"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "openPageResult"

    const-string v1, "false"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openPageFailedReason"

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "maxStage"

    iget v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "open_channel"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "hot_open_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-nez p1, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    const-string v6, "isExitInStage"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-eqz p1, :cond_5

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v5, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    goto :goto_2

    :cond_3
    move-wide v8, v6

    :goto_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    :cond_4
    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "stageCostTime"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "stageRangeTime"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "scene"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v2, "page_path"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p1, "pageIndex"

    const-string v2, "1"

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isAdd"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "offScreenRender"

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    const-string v2, "mini_page_open_end"

    invoke-interface {p1, v1, v2, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final reportPageOpenMidFail(Landroid/os/Bundle;)V
    .locals 10

    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_reportPageOpenMidFail"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "openPageResult"

    const-string v1, "false"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openPageFailedReason"

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "maxStage"

    iget v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "open_channel"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "hot_open_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-nez p1, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    move p1, v4

    :goto_1
    const-string v6, "isExitInStage"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-eqz p1, :cond_5

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v5, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    goto :goto_2

    :cond_3
    move-wide v8, v6

    :goto_2
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    :cond_4
    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "stageCostTime"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "stageRangeTime"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "scene"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v2, "page_path"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p1, "pageIndex"

    const-string v2, "1"

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isAdd"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    const-string v2, "mini_page_open_mid"

    invoke-interface {p1, v1, v2, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final appendStagesSuccess(Lcom/cloud/tmc/integration/chain/page/PageChainContext;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "pageChainContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tmpStateRangeTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tmpStateCostTime"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_appendStages"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x11

    if-ne p4, v0, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    if-ne p4, v0, :cond_1

    iget-boolean p4, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    if-nez p4, :cond_1

    :goto_0
    iget-object p4, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p2, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p4, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    invoke-interface {p3, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getStateRangeTime()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getStateCostTime()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public destroy(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "chainPoint"

    const-class v1, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_destroy"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->destroyReport(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageContexts:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getContextType()Lcom/cloud/tmc/integration/chain/ContextType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/chain/ContextType;->TYPE_APP:Lcom/cloud/tmc/integration/chain/ContextType;

    return-object v0
.end method

.method public final getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    return-object v0
.end method

.method public final getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    return-object v0
.end method

.method public final getFirstPageMaxStage()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageMaxStage:I

    return v0
.end method

.method public final getFirstPageStateCostTime()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateCostTime:Ljava/util/Map;

    return-object v0
.end method

.method public final getFirstPageStateRangeTime()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    return-object v0
.end method

.method public final getH5ProgressCollectList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    return-object v0
.end method

.method public final getHotOpenType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxStage()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    return v0
.end method

.method public final getOffScreenRender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z

    return v0
.end method

.method public final getOpenChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenMiniAppEndResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppEndResult:Z

    return v0
.end method

.method public final getOpenMiniAppFailedReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenMiniAppMidResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppMidResult:Z

    return v0
.end method

.method public final getOpenedPageCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final getPageContexts()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageContexts:Ljava/util/Stack;

    return-object v0
.end method

.method public final getPageIndexOfApp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final getScene()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public final getStateCostTime()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    return-object v0
.end method

.method public final getStateRangeTime()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    return-object v0
.end method

.method public final getSyncType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    return v0
.end method

.method public final getSyncTypeMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public hotOpen(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "dataBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "hot_open_type"

    const-string v1, "-1"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    const-class v2, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_hotOpen -> hotOpenType:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const-string v1, "shell_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :pswitch_1
    const-string v1, "shell_0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->INSTANCE:Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;

    const-string v2, "hotOpenType"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1, v0}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->openActivatePageShell(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "normal_4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :pswitch_3
    const-string v1, "normal_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->INSTANCE:Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->openNewPage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    const-string v1, "normal_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :pswitch_5
    const-string v1, "normal_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->INSTANCE:Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/integration/chain/hotopen/HotOpenManager;->openActivatePage(Lcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5b4b2ad9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7aa69de1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isReportEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    return v0
.end method

.method public final isReportMid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/chain/ChainContext$DefaultImpls;->log(Lcom/cloud/tmc/integration/chain/ChainContext;Ljava/lang/String;)V

    return-void
.end method

.method public final reportAppOpenEndSuccess(Landroid/os/Bundle;Z)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "chainPoint"

    const-class v1, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_reportAppOpenEndSuccess->isReportEnd:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppEndResult:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "openMiniAppResult"

    const-string v1, "true"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openMiniAppFailedReason"

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "syncType"

    iget v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "isExitInStage"

    const-string v1, "false"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "open_channel"

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hot_open_type"

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "scene"

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openByLaunch"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "page_path"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "appH5ProgressStatus"

    iget-object p2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "offScreenRender"

    iget-boolean p2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    const-string v1, "mini_app_open_end"

    invoke-interface {p1, p2, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final reportAppOpenMidSuccess(Landroid/os/Bundle;Z)V
    .locals 4

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "chainPoint"

    const-class v1, Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_reportAppOpenMidSuccess->isReportMid:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppMidResult:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "openMiniAppResult"

    const-string v1, "true"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openMiniAppFailedReason"

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "syncType"

    iget v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "isExitInStage"

    const-string v1, "false"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "open_channel"

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hot_open_type"

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "scene"

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openByLaunch"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "page_path"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object p2, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    const-string v1, "mini_app_open_mid"

    invoke-interface {p1, p2, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final reportFailureClickReloadButton()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "openMiniAppFailedReason"

    const-string v2, "reload"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportPageOpenMidFail(Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportPageOpenEndFail(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Tmc"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appId:Ljava/lang/String;

    return-void
.end method

.method public setChainState(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 3

    const-string v0, "chainState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChainState_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->log(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getChainType()Lcom/cloud/tmc/integration/chain/ChainType;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/integration/chain/app/AppChainContext$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->insertData(Lcom/cloud/tmc/integration/chain/ChainState;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->parseChianError(Lcom/cloud/tmc/integration/chain/ChainState;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->parseChainEnd(Lcom/cloud/tmc/integration/chain/ChainState;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->parseChainStart(Lcom/cloud/tmc/integration/chain/ChainState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public setContextType(Lcom/cloud/tmc/integration/chain/ContextType;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setCurrentChainEndState(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    return-void
.end method

.method public final setCurrentChainStartState(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    return-void
.end method

.method public final setFirstPageMaxStage(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageMaxStage:I

    return-void
.end method

.method public final setFirstPageStateCostTime(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateCostTime:Ljava/util/Map;

    return-void
.end method

.method public final setFirstPageStateRangeTime(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->firstPageStateRangeTime:Ljava/util/Map;

    return-void
.end method

.method public final setH5ProgressCollectList(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->h5ProgressCollectList:Ljava/lang/String;

    return-void
.end method

.method public final setHotOpenType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->hotOpenType:Ljava/lang/String;

    return-void
.end method

.method public final setMaxStage(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->maxStage:I

    return-void
.end method

.method public final setOffScreenRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->offScreenRender:Z

    return-void
.end method

.method public final setOpenChannel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openChannel:Ljava/lang/String;

    return-void
.end method

.method public final setOpenMiniAppEndResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppEndResult:Z

    return-void
.end method

.method public final setOpenMiniAppFailedReason(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppFailedReason:Ljava/lang/String;

    return-void
.end method

.method public final setOpenMiniAppMidResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openMiniAppMidResult:Z

    return-void
.end method

.method public final setOpenedPageCount(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->openedPageCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public final setPageIndexOfApp(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->pageIndexOfApp:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public final setReportEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd:Z

    return-void
.end method

.method public final setReportMid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid:Z

    return-void
.end method

.method public final setScene(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->scene:Ljava/lang/String;

    return-void
.end method

.method public final setStateCostTime(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateCostTime:Ljava/util/Map;

    return-void
.end method

.method public final setStateRangeTime(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->stateRangeTime:Ljava/util/Map;

    return-void
.end method

.method public final setSyncType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncType:I

    return-void
.end method

.method public final setSyncTypeMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->syncTypeMap:Ljava/util/Map;

    return-void
.end method
