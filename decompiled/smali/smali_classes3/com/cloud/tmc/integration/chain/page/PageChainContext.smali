.class public final Lcom/cloud/tmc/integration/chain/page/PageChainContext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/chain/ChainContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/chain/page/PageChainContext$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008#\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J:\u0010Q\u001a\u00020R2\u001a\u0008\u0002\u0010S\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000e0\u00062\u0014\u0008\u0002\u0010T\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0002J\u0010\u0010U\u001a\u00020R2\u0006\u0010V\u001a\u00020WH\u0016J\u0012\u0010X\u001a\u0004\u0018\u00010\u00002\u0006\u0010E\u001a\u00020\u0007H\u0002J\u0010\u0010Y\u001a\u00020W2\u0006\u0010Z\u001a\u00020WH\u0002J\u0010\u0010[\u001a\u00020\u00082\u0006\u0010\\\u001a\u00020\u0016H\u0002J\u0010\u0010]\u001a\u00020R2\u0006\u0010\\\u001a\u00020\u0016H\u0002J\u0010\u0010^\u001a\u00020R2\u0006\u0010_\u001a\u00020\u0016H\u0002J\u0010\u0010`\u001a\u00020R2\u0006\u0010a\u001a\u00020\u0016H\u0002J\u0010\u0010b\u001a\u00020R2\u0006\u0010c\u001a\u00020\u0016H\u0002J\u0010\u0010d\u001a\u00020R2\u0006\u0010V\u001a\u00020WH\u0002J\u0010\u0010e\u001a\u00020R2\u0006\u0010V\u001a\u00020WH\u0002J\u0010\u0010f\u001a\u00020R2\u0006\u0010V\u001a\u00020WH\u0002J\u0010\u0010g\u001a\u00020R2\u0006\u0010V\u001a\u00020WH\u0002J\u0010\u0010h\u001a\u00020W2\u0006\u0010i\u001a\u00020\u0007H\u0002J\u0010\u0010j\u001a\u00020R2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0010\u0010k\u001a\u00020R2\u0006\u0010\\\u001a\u00020\u0016H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR,\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000e0\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u001a\u0010\u001e\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010 \"\u0004\u0008%\u0010\"R\u001a\u0010&\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010(\"\u0004\u0008,\u0010*R\u001a\u0010-\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001a\u00103\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010 \"\u0004\u00085\u0010\"R\u001a\u00106\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010(\"\u0004\u00088\u0010*R\u001a\u00109\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010 \"\u0004\u0008;\u0010\"R\u001a\u0010<\u001a\u00020\'X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010(\"\u0004\u0008>\u0010*R\u001a\u0010?\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u00100\"\u0004\u0008A\u00102R\u001a\u0010B\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010 \"\u0004\u0008D\u0010\"R\u001a\u0010E\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010 \"\u0004\u0008G\u0010\"R\u001a\u0010H\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010 \"\u0004\u0008J\u0010\"R&\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008L\u0010\n\"\u0004\u0008M\u0010\u000cR,\u0010N\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000e0\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010\n\"\u0004\u0008P\u0010\u000c\u00a8\u0006l"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
        "Lcom/cloud/tmc/integration/chain/ChainContext;",
        "()V",
        "appChainContext",
        "Lcom/cloud/tmc/integration/chain/app/AppChainContext;",
        "appStateCostTime",
        "",
        "",
        "",
        "getAppStateCostTime",
        "()Ljava/util/Map;",
        "setAppStateCostTime",
        "(Ljava/util/Map;)V",
        "appStateRangeTime",
        "",
        "getAppStateRangeTime",
        "setAppStateRangeTime",
        "contextType",
        "Lcom/cloud/tmc/integration/chain/ContextType;",
        "getContextType",
        "()Lcom/cloud/tmc/integration/chain/ContextType;",
        "currentChainEndState",
        "Lcom/cloud/tmc/integration/chain/ChainState;",
        "getCurrentChainEndState",
        "()Lcom/cloud/tmc/integration/chain/ChainState;",
        "setCurrentChainEndState",
        "(Lcom/cloud/tmc/integration/chain/ChainState;)V",
        "currentChainStartState",
        "getCurrentChainStartState",
        "setCurrentChainStartState",
        "drawEndType",
        "getDrawEndType",
        "()Ljava/lang/String;",
        "setDrawEndType",
        "(Ljava/lang/String;)V",
        "h5ProgressCollectList",
        "getH5ProgressCollectList",
        "setH5ProgressCollectList",
        "isReportEnd",
        "",
        "()Z",
        "setReportEnd",
        "(Z)V",
        "isReportMid",
        "setReportMid",
        "maxStage",
        "",
        "getMaxStage",
        "()I",
        "setMaxStage",
        "(I)V",
        "openChannel",
        "getOpenChannel",
        "setOpenChannel",
        "openMiniPageEndResult",
        "getOpenMiniPageEndResult",
        "setOpenMiniPageEndResult",
        "openMiniPageFailedReason",
        "getOpenMiniPageFailedReason",
        "setOpenMiniPageFailedReason",
        "openMiniPageMidResult",
        "getOpenMiniPageMidResult",
        "setOpenMiniPageMidResult",
        "pageIndexOfApp",
        "getPageIndexOfApp",
        "setPageIndexOfApp",
        "pageUrl",
        "getPageUrl",
        "setPageUrl",
        "renderId",
        "getRenderId",
        "setRenderId",
        "scene",
        "getScene",
        "setScene",
        "stateCostTime",
        "getStateCostTime",
        "setStateCostTime",
        "stateRangeTime",
        "getStateRangeTime",
        "setStateRangeTime",
        "appendStages",
        "",
        "tmpStateRangeTime",
        "tmpStateCostTime",
        "destroy",
        "data",
        "Landroid/os/Bundle;",
        "findPageContext",
        "generateAppReportData",
        "dataBundle",
        "getTime",
        "chainState",
        "insertData",
        "parseChainEnd",
        "chainEndState",
        "parseChainStart",
        "chainStartState",
        "parseChianError",
        "pageErrorState",
        "reportPageOpenEndFail",
        "reportPageOpenEndSuccess",
        "reportPageOpenMidFail",
        "reportPageOpenMidSuccess",
        "reportPsData",
        "appId",
        "setAppChainContext",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

.field private appStateCostTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private appStateRangeTime:Ljava/util/Map;
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

.field private currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

.field private currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

.field private drawEndType:Ljava/lang/String;

.field private h5ProgressCollectList:Ljava/lang/String;

.field private isReportEnd:Z

.field private isReportMid:Z

.field private maxStage:I

.field private openChannel:Ljava/lang/String;

.field private openMiniPageEndResult:Z

.field private openMiniPageFailedReason:Ljava/lang/String;

.field private openMiniPageMidResult:Z

.field private pageIndexOfApp:I

.field private pageUrl:Ljava/lang/String;

.field private renderId:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateCostTime:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    const-string v1, "0"

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;

    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->drawEndType:Ljava/lang/String;

    return-void
.end method

.method private final appendStages(Ljava/util/Map;Ljava/util/Map;)V
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
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v2, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_appendStages"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chainPoint"

    invoke-static {v3, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateCostTime:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3

    :cond_0
    move v2, v1

    :goto_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    const-string v5, "12"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v8, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    goto :goto_2

    :cond_2
    move-wide v8, v6

    :goto_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Long;

    aput-object v4, v8, v0

    aput-object v5, v8, v1

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v1

    goto :goto_0

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method static synthetic appendStages$default(Lcom/cloud/tmc/integration/chain/page/PageChainContext;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appendStages(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private final findPageContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    iget-object v3, v2, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private final generateAppReportData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pageIndex"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "maxStage"

    iget v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    invoke-virtual {v2, p0, p1, v1, v3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->appendStagesSuccess(Lcom/cloud/tmc/integration/chain/page/PageChainContext;Ljava/util/Map;Ljava/util/Map;I)V

    :cond_0
    const-string v2, "stageCostTime"

    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stageRangeTime"

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
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
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->OPEN_PAGE_FAILED_REASON:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u89e3\u6790\u5931\u8d25\u539f\u56e0\u9519\u8bef"

    :cond_0
    iput-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_H5_PROGRESS_STATUS:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "data.getString(ChainPoin\u2026E_H5_PROGRESS_STATUS, \"\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method private final parseChainEnd(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseChainEnd_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_RENDER_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    const-string v3, "chainEndState.dataBundle\u2026ng(CHAIN_RENDER_ID) ?: \"\""

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    instance-of v1, p1, Lcom/cloud/tmc/integration/chain/endState/DrawViewEndState;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_DRAW_END_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->FCP_CURRENT_TIMEMILLIS:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fcpTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chainState"

    invoke-static {v6, v5}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J

    move-result-wide v3

    :goto_0
    iget-object v5, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    :cond_6
    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    if-ne v3, v5, :cond_7

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateRangeTime(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateCostTime(Ljava/util/Map;)V

    :cond_7
    instance-of v3, p1, Lcom/cloud/tmc/integration/chain/endState/ChainMidEndState;

    if-eqz v3, :cond_9

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->reportPageOpenMidSuccess(Landroid/os/Bundle;)V

    iget v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    if-ne v3, v5, :cond_8

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->generateAppReportData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenMidSuccess(Landroid/os/Bundle;Z)V

    goto :goto_1

    :cond_8
    if-eq v3, v5, :cond_9

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportMid()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->generateAppReportData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenMidSuccess(Landroid/os/Bundle;Z)V

    :cond_9
    :goto_1
    if-eqz v1, :cond_c

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_DRAW_END_TYPE:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "chainEndState.dataBundle\u2026CHAIN_DRAW_END_TYPE, \"0\")"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->drawEndType:Ljava/lang/String;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->reportPageOpenEndSuccess(Landroid/os/Bundle;)V

    iget v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    if-ne v1, v5, :cond_b

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    move-object v2, v1

    :goto_2
    invoke-direct {p0, v2}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->reportPsData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->generateAppReportData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, v5}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenEndSuccess(Landroid/os/Bundle;Z)V

    goto :goto_3

    :cond_b
    if-eq v1, v5, :cond_c

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->isReportEnd()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->generateAppReportData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->reportAppOpenEndSuccess(Landroid/os/Bundle;Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method private final parseChainStart(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 6

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseChainStart_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_RENDER_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_1

    move-object v2, v3

    :cond_1
    const-string v4, "chainStartState.dataBund\u2026ng(CHAIN_RENDER_ID) ?: \"\""

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v2}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->findPageContext(Ljava/lang/String;)Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    move-result-object v4

    if-nez v4, :cond_3

    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    instance-of v2, p1, Lcom/cloud/tmc/integration/chain/startState/CreateContainerStartState;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageIndexOfApp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    iput v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getScene()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getOpenChannel()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v4, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "chainStartState.dataBund\u2026ChainPoint.PAGE_PATH, \"\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateCostTime()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateCostTime:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getStateRangeTime()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

    :cond_4
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v2

    iput v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->getTime(Lcom/cloud/tmc/integration/chain/ChainState;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array v4, v0, [Ljava/lang/Long;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateRangeTime(Ljava/util/Map;)V

    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageMaxStage(I)V

    :cond_5
    return-void
.end method

.method private final parseChianError(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseChianError_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getDataBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->CHAIN_RENDER_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    const-string v2, "pageErrorState.dataBundl\u2026ng(CHAIN_RENDER_ID) ?: \"\""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateRangeTime(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->setFirstPageStateCostTime(Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method private final reportPageOpenEndFail(Landroid/os/Bundle;)V
    .locals 10

    const-class v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_reportPageOpenEndFail->isReportEnd:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "openPageResult"

    const-string v2, "false"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openPageFailedReason"

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "maxStage"

    iget v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "open_channel"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getHotOpenType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "hot_open_type"

    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v5

    :goto_2
    const-string v6, "isExitInStage"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-eqz p1, :cond_7

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    goto :goto_3

    :cond_5
    move-wide v8, v6

    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v4, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    :cond_6
    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appendStages(Ljava/util/Map;Ljava/util/Map;)V

    const-string v3, "stageCostTime"

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stageRangeTime"

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "scene"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pageIndex"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isAdd"

    const-string v0, "true"

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pageUniqueId"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "page_path"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string p1, "appH5ProgressStatus"

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_9
    const-string v0, "mini_page_open_end"

    invoke-interface {p1, v2, v0, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final reportPageOpenEndSuccess(Landroid/os/Bundle;)V
    .locals 5

    const-class v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_reportPageOpenEndSuccess->isReportEnd:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageEndResult:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "openPageResult"

    const-string v1, "true"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openPageFailedReason"

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "maxStage"

    iget v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "isExitInStage"

    const-string v2, "false"

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "open_channel"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getHotOpenType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "hot_open_type"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appendStages(Ljava/util/Map;Ljava/util/Map;)V

    const-string v4, "stageCostTime"

    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "stageRangeTime"

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "scene"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "pageIndex"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isAdd"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "page_path"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "appH5ProgressStatus"

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v1, "mini_page_open_end"

    invoke-interface {p1, v2, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final reportPageOpenMidFail(Landroid/os/Bundle;)V
    .locals 10

    const-class v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_reportPageOpenMidFail->isReportMid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "openPageResult"

    const-string v2, "false"

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openPageFailedReason"

    iget-object v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "maxStage"

    iget v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    invoke-virtual {v1, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "open_channel"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getHotOpenType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "hot_open_type"

    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->TIME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-nez p1, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v5

    :goto_2
    const-string v6, "isExitInStage"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    if-eqz p1, :cond_7

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

    iget-object v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v6, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    goto :goto_3

    :cond_5
    move-wide v8, v6

    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    iget-object v4, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/cloud/tmc/integration/chain/ChainState;->getStep()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    :cond_6
    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appendStages(Ljava/util/Map;Ljava/util/Map;)V

    const-string v3, "stageCostTime"

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "stageRangeTime"

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "scene"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pageIndex"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isAdd"

    const-string v0, "true"

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getGAId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pageUniqueId"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v0, "page_path"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_9
    const-string v0, "mini_page_open_mid"

    invoke-interface {p1, v2, v0, v1}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final reportPageOpenMidSuccess(Landroid/os/Bundle;)V
    .locals 5

    const-class v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_reportPageOpenMidSuccess->isReportMid:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chainPoint"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageMidResult:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "openPageResult"

    const-string v1, "true"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openPageFailedReason"

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "maxStage"

    iget v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "isExitInStage"

    const-string v2, "false"

    invoke-virtual {v0, p1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "open_channel"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getHotOpenType()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "hot_open_type"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appendStages(Ljava/util/Map;Ljava/util/Map;)V

    const-string v4, "stageCostTime"

    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "stageRangeTime"

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "scene"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "pageIndex"

    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isAdd"

    invoke-virtual {v0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "page_path"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/ChainPoint;->PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-class p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/proxy/ReportProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getAppId()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v1, "mini_page_open_mid"

    invoke-interface {p1, v2, v1, v0}, Lcom/cloud/tmc/integration/proxy/ReportProxy;->report(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private final reportPsData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 12

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

    const-string v2, "1"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    const-string v3, "18"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :cond_3
    if-lt v2, v4, :cond_5

    if-eqz v1, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_2
    const-wide/16 v3, 0x0

    :try_start_1
    const-class v7, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-interface {v7, p1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v8, "start_main_first_time"

    invoke-virtual {v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-wide v7, v3

    goto :goto_4

    :cond_6
    move-wide v7, v3

    :goto_3
    if-eqz p1, :cond_7

    :try_start_2
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getSceneParams()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v9, "start_mini_first_time"

    invoke-virtual {p1, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    :cond_7
    :goto_4
    move-wide v9, v3

    :goto_5
    cmp-long p1, v7, v3

    if-eqz p1, :cond_8

    :try_start_3
    const-string v11, "mini_first_time"

    invoke-virtual {v0, v11, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_8
    cmp-long v3, v9, v3

    if-eqz v3, :cond_9

    const-string v4, "mini_second_time"

    invoke-virtual {v0, v4, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_9
    const-string v4, "Tmc"

    if-eqz p1, :cond_a

    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firstStartTime:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v5, v7

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secondStartTime:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v5, v9

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportStartTime:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    sub-long/2addr v1, v5

    const-string p1, "miniapp_all_start_time"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    return-object v0
.end method


# virtual methods
.method public destroy(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "chainPoint"

    const-class v1, Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageMidResult:Z

    iget-boolean v3, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageEndResult:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_destroy->openMiniPageMidResult:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,openMiniPageEndResult:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageMidResult:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->reportPageOpenMidFail(Landroid/os/Bundle;)V

    :cond_0
    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageEndResult:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->reportPageOpenEndFail(Landroid/os/Bundle;)V

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/chain/app/AppChainContext;->getPageContexts()Ljava/util/Stack;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Lcom/cloud/tmc/integration/chain/page/PageChainContext$destroy$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext$destroy$1;-><init>(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->I(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final getAppStateCostTime()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateCostTime:Ljava/util/Map;

    return-object v0
.end method

.method public final getAppStateRangeTime()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

    return-object v0
.end method

.method public getContextType()Lcom/cloud/tmc/integration/chain/ContextType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/chain/ContextType;->TYPE_PAGE:Lcom/cloud/tmc/integration/chain/ContextType;

    return-object v0
.end method

.method public final getCurrentChainEndState()Lcom/cloud/tmc/integration/chain/ChainState;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    return-object v0
.end method

.method public final getCurrentChainStartState()Lcom/cloud/tmc/integration/chain/ChainState;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    return-object v0
.end method

.method public final getDrawEndType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->drawEndType:Ljava/lang/String;

    return-object v0
.end method

.method public final getH5ProgressCollectList()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxStage()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    return v0
.end method

.method public final getOpenChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenMiniPageEndResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageEndResult:Z

    return v0
.end method

.method public final getOpenMiniPageFailedReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpenMiniPageMidResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageMidResult:Z

    return v0
.end method

.method public final getPageIndexOfApp()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    return v0
.end method

.method public final getPageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getScene()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    return-object v0
.end method

.method public final isReportEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    return v0
.end method

.method public final isReportMid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/chain/ChainContext$DefaultImpls;->log(Lcom/cloud/tmc/integration/chain/ChainContext;Ljava/lang/String;)V

    return-void
.end method

.method public final setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    return-void
.end method

.method public final setAppStateCostTime(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateCostTime:Ljava/util/Map;

    return-void
.end method

.method public final setAppStateRangeTime(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->appStateRangeTime:Ljava/util/Map;

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

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->log(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/cloud/tmc/integration/chain/ChainState;->getChainType()Lcom/cloud/tmc/integration/chain/ChainType;

    move-result-object v0

    sget-object v1, Lcom/cloud/tmc/integration/chain/page/PageChainContext$WhenMappings;->$EnumSwitchMapping$0:[I

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
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->insertData(Lcom/cloud/tmc/integration/chain/ChainState;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->parseChianError(Lcom/cloud/tmc/integration/chain/ChainState;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->parseChainEnd(Lcom/cloud/tmc/integration/chain/ChainState;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->parseChainStart(Lcom/cloud/tmc/integration/chain/ChainState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method

.method public final setCurrentChainEndState(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainEndState:Lcom/cloud/tmc/integration/chain/ChainState;

    return-void
.end method

.method public final setCurrentChainStartState(Lcom/cloud/tmc/integration/chain/ChainState;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->currentChainStartState:Lcom/cloud/tmc/integration/chain/ChainState;

    return-void
.end method

.method public final setDrawEndType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->drawEndType:Ljava/lang/String;

    return-void
.end method

.method public final setH5ProgressCollectList(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->h5ProgressCollectList:Ljava/lang/String;

    return-void
.end method

.method public final setMaxStage(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->maxStage:I

    return-void
.end method

.method public final setOpenChannel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openChannel:Ljava/lang/String;

    return-void
.end method

.method public final setOpenMiniPageEndResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageEndResult:Z

    return-void
.end method

.method public final setOpenMiniPageFailedReason(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageFailedReason:Ljava/lang/String;

    return-void
.end method

.method public final setOpenMiniPageMidResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->openMiniPageMidResult:Z

    return-void
.end method

.method public final setPageIndexOfApp(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageIndexOfApp:I

    return-void
.end method

.method public final setPageUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->pageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setRenderId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->renderId:Ljava/lang/String;

    return-void
.end method

.method public final setReportEnd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportEnd:Z

    return-void
.end method

.method public final setReportMid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->isReportMid:Z

    return-void
.end method

.method public final setScene(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->scene:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateCostTime:Ljava/util/Map;

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

    iput-object p1, p0, Lcom/cloud/tmc/integration/chain/page/PageChainContext;->stateRangeTime:Ljava/util/Map;

    return-void
.end method
