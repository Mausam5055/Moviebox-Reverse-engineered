.class public final Lcom/cloud/tmc/integration/model/PrepareContext;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010`\u001a\u00020\u0005H\u0016R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001c\u0010*\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u001b\"\u0004\u0008,\u0010\u001dR\u001c\u0010-\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u001b\"\u0004\u0008/\u0010\u001dR\u001c\u00100\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u001b\"\u0004\u00082\u0010\u001dR\u001c\u00103\u001a\u0004\u0018\u00010%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\'\"\u0004\u00085\u0010)R\u0011\u00106\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0011\u00109\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010\u001bR\u001c\u0010;\u001a\u0004\u0018\u00010<X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\'\"\u0004\u0008C\u0010)R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010D\"\u0004\u0008E\u0010FR\u001a\u0010G\u001a\u00020HX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u0011\u0010M\u001a\u00020N\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010PR\u001a\u0010Q\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u00108\"\u0004\u0008S\u0010TR\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010VR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u0010XR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010VR\u0014\u0010Z\u001a\u00020[X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u0010]R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u00108\"\u0004\u0008_\u0010T\u00a8\u0006a"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/PrepareContext;",
        "",
        "startContext",
        "Landroid/content/Context;",
        "appId",
        "",
        "startParams",
        "Landroid/os/Bundle;",
        "sceneParams",
        "virtualStart",
        "",
        "appChainContext",
        "Lcom/cloud/tmc/integration/chain/app/AppChainContext;",
        "activity",
        "Landroid/app/Activity;",
        "isWarmup",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "setActivity",
        "(Landroid/app/Activity;)V",
        "getAppChainContext",
        "()Lcom/cloud/tmc/integration/chain/app/AppChainContext;",
        "setAppChainContext",
        "(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "appInfoQuery",
        "Lcom/cloud/tmc/integration/model/AppInfoQuery;",
        "getAppInfoQuery",
        "()Lcom/cloud/tmc/integration/model/AppInfoQuery;",
        "setAppInfoQuery",
        "(Lcom/cloud/tmc/integration/model/AppInfoQuery;)V",
        "appModel",
        "Lcom/cloud/tmc/integration/model/AppModel;",
        "getAppModel",
        "()Lcom/cloud/tmc/integration/model/AppModel;",
        "setAppModel",
        "(Lcom/cloud/tmc/integration/model/AppModel;)V",
        "appToken",
        "getAppToken",
        "setAppToken",
        "appType",
        "getAppType",
        "setAppType",
        "appVersion",
        "getAppVersion",
        "setAppVersion",
        "commonResModel",
        "getCommonResModel",
        "setCommonResModel",
        "devStatus",
        "getDevStatus",
        "()Z",
        "devTypeCode",
        "getDevTypeCode",
        "entryInfo",
        "Lcom/cloud/tmc/integration/model/EntryInfo;",
        "getEntryInfo",
        "()Lcom/cloud/tmc/integration/model/EntryInfo;",
        "setEntryInfo",
        "(Lcom/cloud/tmc/integration/model/EntryInfo;)V",
        "frameWorkModel",
        "getFrameWorkModel",
        "setFrameWorkModel",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "setWarmup",
        "(Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "originStartParams",
        "Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;",
        "getOriginStartParams",
        "()Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;",
        "setOriginStartParams",
        "(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;)V",
        "prepareData",
        "Lcom/cloud/tmc/integration/model/PrepareData;",
        "getPrepareData",
        "()Lcom/cloud/tmc/integration/model/PrepareData;",
        "quickMode",
        "getQuickMode",
        "setQuickMode",
        "(Z)V",
        "getSceneParams",
        "()Landroid/os/Bundle;",
        "getStartContext",
        "()Landroid/content/Context;",
        "getStartParams",
        "timeout",
        "",
        "getTimeout",
        "()J",
        "getVirtualStart",
        "setVirtualStart",
        "toString",
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
.field private activity:Landroid/app/Activity;

.field private appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

.field private appId:Ljava/lang/String;

.field private appInfoQuery:Lcom/cloud/tmc/integration/model/AppInfoQuery;

.field private appModel:Lcom/cloud/tmc/integration/model/AppModel;

.field private appToken:Ljava/lang/String;

.field private appType:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private commonResModel:Lcom/cloud/tmc/integration/model/AppModel;

.field private entryInfo:Lcom/cloud/tmc/integration/model/EntryInfo;

.field private frameWorkModel:Lcom/cloud/tmc/integration/model/AppModel;

.field private isWarmup:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private originStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

.field private final prepareData:Lcom/cloud/tmc/integration/model/PrepareData;

.field private quickMode:Z

.field private final sceneParams:Landroid/os/Bundle;

.field private final startContext:Landroid/content/Context;

.field private final startParams:Landroid/os/Bundle;

.field private final timeout:J

.field private virtualStart:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    const-string v0, "startContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneParams"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isWarmup"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->timeout:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->isWarmup:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appId:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->startContext:Landroid/content/Context;

    new-instance p1, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    invoke-direct {p1, p3}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->originStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;->mutable()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "originStartParams.mutable()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->startParams:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->sceneParams:Landroid/os/Bundle;

    new-instance p1, Lcom/cloud/tmc/integration/model/PrepareData;

    invoke-direct {p1}, Lcom/cloud/tmc/integration/model/PrepareData;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->prepareData:Lcom/cloud/tmc/integration/model/PrepareData;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/model/PrepareData;->clear()V

    iput-boolean p5, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->virtualStart:Z

    iput-object p6, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    iput-object p7, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->activity:Landroid/app/Activity;

    iput-object p8, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->isWarmup:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v10, v3

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v11, v0

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v11}, Lcom/cloud/tmc/integration/model/PrepareContext;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLcom/cloud/tmc/integration/chain/app/AppChainContext;Landroid/app/Activity;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getAppChainContext()Lcom/cloud/tmc/integration/chain/app/AppChainContext;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    return-object v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppInfoQuery()Lcom/cloud/tmc/integration/model/AppInfoQuery;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appInfoQuery:Lcom/cloud/tmc/integration/model/AppInfoQuery;

    return-object v0
.end method

.method public final getAppModel()Lcom/cloud/tmc/integration/model/AppModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-object v0
.end method

.method public final getAppToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appType:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getCommonResModel()Lcom/cloud/tmc/integration/model/AppModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->commonResModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-object v0
.end method

.method public final getDevStatus()Z
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appType:Ljava/lang/String;

    const-string v1, "debug"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dev"

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public final getDevTypeCode()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appType:Ljava/lang/String;

    const-string v1, "debug"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "dev"

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "develop"

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "2"

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final getEntryInfo()Lcom/cloud/tmc/integration/model/EntryInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->entryInfo:Lcom/cloud/tmc/integration/model/EntryInfo;

    return-object v0
.end method

.method public final getFrameWorkModel()Lcom/cloud/tmc/integration/model/AppModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->frameWorkModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-object v0
.end method

.method public final getOriginStartParams()Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->originStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    return-object v0
.end method

.method public final getPrepareData()Lcom/cloud/tmc/integration/model/PrepareData;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->prepareData:Lcom/cloud/tmc/integration/model/PrepareData;

    return-object v0
.end method

.method public final getQuickMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->quickMode:Z

    return v0
.end method

.method public final getSceneParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->sceneParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getStartContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->startContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getStartParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->timeout:J

    return-wide v0
.end method

.method public final getVirtualStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->virtualStart:Z

    return v0
.end method

.method public final isWarmup()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->isWarmup:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->activity:Landroid/app/Activity;

    return-void
.end method

.method public final setAppChainContext(Lcom/cloud/tmc/integration/chain/app/AppChainContext;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appChainContext:Lcom/cloud/tmc/integration/chain/app/AppChainContext;

    return-void
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setAppInfoQuery(Lcom/cloud/tmc/integration/model/AppInfoQuery;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appInfoQuery:Lcom/cloud/tmc/integration/model/AppInfoQuery;

    return-void
.end method

.method public final setAppModel(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-void
.end method

.method public final setAppToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appToken:Ljava/lang/String;

    return-void
.end method

.method public final setAppType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appType:Ljava/lang/String;

    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public final setCommonResModel(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->commonResModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-void
.end method

.method public final setEntryInfo(Lcom/cloud/tmc/integration/model/EntryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->entryInfo:Lcom/cloud/tmc/integration/model/EntryInfo;

    return-void
.end method

.method public final setFrameWorkModel(Lcom/cloud/tmc/integration/model/AppModel;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->frameWorkModel:Lcom/cloud/tmc/integration/model/AppModel;

    return-void
.end method

.method public final setOriginStartParams(Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->originStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    return-void
.end method

.method public final setQuickMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->quickMode:Z

    return-void
.end method

.method public final setVirtualStart(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->virtualStart:Z

    return-void
.end method

.method public final setWarmup(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->isWarmup:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/PrepareContext;->originStartParams:Lcom/cloud/tmc/kernel/datastructure/immutable/ImmutableBundle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n               PrepareContext{\n               appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n               originStartParam="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}\n               "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
