.class public final Lcom/cloud/tmc/render/SystemRender;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/render/IRender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/render/SystemRender$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0018\u0000 \u0080\u00012\u00020\u0001:\u0002\u0080\u0001B9\u0008\u0007\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u001f\u001a\u00020@H\u0016J\u0008\u0010(\u001a\u00020 H\u0016J\n\u0010\r\u001a\u0004\u0018\u00010AH\u0016J\n\u0010B\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010C\u001a\u00020\u0012H\u0016J\n\u0010D\u001a\u0004\u0018\u00010\u0005H\u0016J\n\u0010E\u001a\u0004\u0018\u00010\u0012H\u0016J\n\u0010F\u001a\u0004\u0018\u00010\u0007H\u0016J\n\u0010G\u001a\u0004\u0018\u00010:H\u0016J\u0008\u0010H\u001a\u00020\u0012H\u0016J\u0008\u0010I\u001a\u00020\u000bH\u0016J\n\u0010J\u001a\u0004\u0018\u00010KH\u0016J\u0008\u0010L\u001a\u00020\u0012H\u0016J\n\u0010M\u001a\u0004\u0018\u00010NH\u0016J\u0008\u0010O\u001a\u00020\u000bH\u0016J\u0012\u0010P\u001a\u00020@2\u0008\u0010Q\u001a\u0004\u0018\u00010RH\u0016J\u0010\u0010S\u001a\u00020@2\u0006\u0010;\u001a\u00020\u0012H\u0016J\r\u0010)\u001a\u00020 H\u0016\u00a2\u0006\u0002\u0010TJ\u0008\u0010U\u001a\u00020 H\u0016J\u0008\u0010V\u001a\u00020 H\u0016J\u0012\u0010W\u001a\u00020@2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J8\u0010X\u001a\u00020@2\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010Y\u001a\u00020\u00122\u0008\u0010Z\u001a\u0004\u0018\u00010\u00122\u0008\u0010[\u001a\u0004\u0018\u00010\u00122\u0008\u0010\\\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010]\u001a\u00020@H\u0016J\u0008\u0010^\u001a\u00020@H\u0016J\u0008\u0010_\u001a\u00020@H\u0002J\u0012\u0010`\u001a\u00020@2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010a\u001a\u00020@2\u0008\u00104\u001a\u0004\u0018\u000105H\u0016J\u0012\u0010b\u001a\u00020@2\u0008\u00106\u001a\u0004\u0018\u000107H\u0016J\u0008\u0010c\u001a\u00020@H\u0016J\u0012\u0010d\u001a\u00020@2\u0008\u0010Q\u001a\u0004\u0018\u00010eH\u0016J\u0012\u0010\u000f\u001a\u00020@2\u0008\u0010\u0002\u001a\u0004\u0018\u00010AH\u0016J\u0010\u0010f\u001a\u00020@2\u0006\u0010g\u001a\u00020\u0012H\u0016J\u0010\u0010h\u001a\u00020@2\u0006\u0010)\u001a\u00020 H\u0016J\u0012\u0010i\u001a\u00020@2\u0008\u0010j\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010k\u001a\u00020@2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010l\u001a\u00020@2\u0006\u0010m\u001a\u00020\u000bH\u0016J\u0012\u0010n\u001a\u00020@2\u0008\u0010o\u001a\u0004\u0018\u00010pH\u0016J\u0010\u0010q\u001a\u00020@2\u0006\u0010r\u001a\u00020 H\u0016J\u0010\u0010s\u001a\u00020@2\u0006\u0010t\u001a\u00020\u000bH\u0016J\u0012\u0010u\u001a\u00020@2\u0008\u0010v\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010w\u001a\u00020@2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010x\u001a\u00020@2\u0008\u0010y\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010z\u001a\u00020@2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0016J\u0012\u0010{\u001a\u00020@2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010|\u001a\u00020@2\u0006\u0010;\u001a\u00020\u0012H\u0016J\u0008\u0010}\u001a\u00020@H\u0016J\u0012\u0010~\u001a\u00020@2\u0008\u0010\u007f\u001a\u0004\u0018\u00010NH\u0016J\u0008\u0010=\u001a\u00020 H\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u0004\u0018\u00010+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u0010\u00104\u001a\u0004\u0018\u000105X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u0004\u0018\u000107X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00109\u001a\u0004\u0018\u00010:X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u0004\u0018\u00010?X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0081\u0001"
    }
    d2 = {
        "Lcom/cloud/tmc/render/SystemRender;",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "activity",
        "Landroid/content/Context;",
        "engineProxy",
        "Lcom/cloud/tmc/kernel/engine/IEngine;",
        "node",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "createParams",
        "Lcom/cloud/tmc/kernel/model/CreateParams;",
        "appinfoCategoryType",
        "",
        "(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V",
        "getActivity",
        "()Landroid/content/Context;",
        "setActivity",
        "(Landroid/content/Context;)V",
        "appId",
        "",
        "getAppinfoCategoryType",
        "()I",
        "setAppinfoCategoryType",
        "(I)V",
        "getCreateParams",
        "()Lcom/cloud/tmc/kernel/model/CreateParams;",
        "setCreateParams",
        "(Lcom/cloud/tmc/kernel/model/CreateParams;)V",
        "customViewVisiable",
        "Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;",
        "customViewVisiableCallback",
        "Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;",
        "destroy",
        "",
        "getEngineProxy",
        "()Lcom/cloud/tmc/kernel/engine/IEngine;",
        "setEngineProxy",
        "(Lcom/cloud/tmc/kernel/engine/IEngine;)V",
        "engineRouter",
        "Lcom/cloud/tmc/kernel/engine/EngineRouter;",
        "frameworkVersion",
        "fromWarmup",
        "isDarkTheme",
        "loadParams",
        "Lcom/cloud/tmc/kernel/render/LoadParams;",
        "mPageCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageCallback;",
        "mPageEventCallback",
        "Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;",
        "getNode",
        "()Lcom/cloud/tmc/kernel/node/Node;",
        "setNode",
        "(Lcom/cloud/tmc/kernel/node/Node;)V",
        "pageCallback",
        "Lcom/cloud/tmc/kernel/render/IPageCallback;",
        "pageEventCallback",
        "Lcom/cloud/tmc/kernel/render/IPageEventCallback;",
        "pendingCreateRenderFail",
        "renderBridge",
        "Lcom/cloud/tmc/kernel/bridge/RenderBridge;",
        "renderId",
        "warmupChannel",
        "warmupSuccess",
        "webView",
        "Lcom/cloud/tmc/kernel/render/IWebView;",
        "",
        "Landroid/app/Activity;",
        "getAppId",
        "getCurrentUri",
        "getEngine",
        "getFrameworkVersion",
        "getPage",
        "getRenderBridge",
        "getRenderId",
        "getScrollY",
        "getStartParams",
        "Landroid/os/Bundle;",
        "getUserAgent",
        "getView",
        "Landroid/view/View;",
        "getWarmupChannel",
        "goBack",
        "callback",
        "Lcom/cloud/tmc/kernel/render/GoBackCallback;",
        "init",
        "()Ljava/lang/Boolean;",
        "isDestroyed",
        "isResume",
        "load",
        "loadDataWithBaseURL",
        "data",
        "mimeType",
        "encoding",
        "historyUrl",
        "onPause",
        "onResume",
        "postCreateRenderFailEvent",
        "registerICustomViewVisiable",
        "registerPageCallback",
        "registerPageEventCallback",
        "reload",
        "runExit",
        "Lcom/cloud/tmc/kernel/render/ExitCallback;",
        "setBgColor",
        "color",
        "setDarkTheme",
        "setFrameworkVersion",
        "version",
        "setMiniAppId",
        "setMiniAppType",
        "type",
        "setScrollChangedCallback",
        "scrollChangedCallback",
        "Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;",
        "setSupportFullScreen",
        "fullScreen",
        "setWarmup",
        "channel",
        "setWarmupAppId",
        "frameAppId",
        "setWarmupCreateParams",
        "setWarmupEngine",
        "engine",
        "setWarmupEngineRouter",
        "setWarmupNode",
        "setWarmupRenderId",
        "setWarupSuccess",
        "showErrorView",
        "view",
        "Companion",
        "com.cloud.tmc.render"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/render/SystemRender$Companion;

.field private static final sPageIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private activity:Landroid/content/Context;

.field private appId:Ljava/lang/String;

.field private appinfoCategoryType:I

.field private createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

.field private customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

.field private customViewVisiableCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

.field private destroy:Z

.field private engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

.field private engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

.field private frameworkVersion:Ljava/lang/String;

.field private fromWarmup:Z

.field private isDarkTheme:Z

.field private loadParams:Lcom/cloud/tmc/kernel/render/LoadParams;

.field private mPageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

.field private mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

.field private node:Lcom/cloud/tmc/kernel/node/Node;

.field private pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

.field private pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

.field private pendingCreateRenderFail:Z

.field private renderBridge:Lcom/cloud/tmc/kernel/bridge/RenderBridge;

.field private renderId:Ljava/lang/String;

.field private warmupChannel:I

.field private warmupSuccess:Z

.field private webView:Lcom/cloud/tmc/kernel/render/IWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/render/SystemRender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/render/SystemRender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/render/SystemRender;->Companion:Lcom/cloud/tmc/render/SystemRender$Companion;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cloud/tmc/render/SystemRender;->sPageIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    iput-object p2, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    iput-object p3, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    iput-object p4, p0, Lcom/cloud/tmc/render/SystemRender;->createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    iput p5, p0, Lcom/cloud/tmc/render/SystemRender;->appinfoCategoryType:I

    const-string p1, ""

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getAppId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    iget-object p2, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, Lcom/cloud/tmc/kernel/constants/MiniAppType;->NORMAL:Lcom/cloud/tmc/kernel/constants/MiniAppType;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cloud/tmc/render/SystemRender;-><init>(Landroid/content/Context;Lcom/cloud/tmc/kernel/engine/IEngine;Lcom/cloud/tmc/kernel/node/Node;Lcom/cloud/tmc/kernel/model/CreateParams;I)V

    return-void
.end method

.method public static final synthetic access$getSPageIdCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/render/SystemRender;->sPageIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private final postCreateRenderFailEvent()V
    .locals 3

    const-class v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    iget-object v1, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    invoke-interface {v0, v2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "create_miniapp_worker_fail"

    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->destroy:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->loadParams:Lcom/cloud/tmc/kernel/render/LoadParams;

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiableCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    const-class v1, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;->clear()V

    iget-object v1, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/render/IWebView;->destroy()V

    :cond_0
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    return-void
.end method

.method public fromWarmup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->fromWarmup:Z

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getActivity()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppinfoCategoryType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/render/SystemRender;->appinfoCategoryType:I

    return v0
.end method

.method public final getCreateParams()Lcom/cloud/tmc/kernel/model/CreateParams;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    return-object v0
.end method

.method public getCurrentUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->loadParams:Lcom/cloud/tmc/kernel/render/LoadParams;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/kernel/render/LoadParams;->pagePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    return-object v0
.end method

.method public final getEngineProxy()Lcom/cloud/tmc/kernel/engine/IEngine;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    return-object v0
.end method

.method public getFrameworkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->frameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getNode()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-object v0
.end method

.method public getPage()Lcom/cloud/tmc/kernel/node/Node;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-object v0
.end method

.method public getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->renderBridge:Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    return-object v0
.end method

.method public getRenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    return-object v0
.end method

.method public getScrollY()I
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/tmc/kernel/model/CreateParams;->startParams:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, "userAgent"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method public getWarmupChannel()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/render/SystemRender;->warmupChannel:I

    return v0
.end method

.method public goBack(Lcom/cloud/tmc/kernel/render/GoBackCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->goBack()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/render/GoBackCallback;->afterProcess(Z)V

    :cond_1
    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 11

    const-string v0, "renderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    const-class v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    if-eqz v0, :cond_6

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->INIT:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/cloud/tmc/render/SystemRender;->getEngine()Lcom/cloud/tmc/kernel/engine/IEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/engine/IEngine;->getWorkerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    const-string v2, ""

    if-nez v0, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v0

    :goto_1
    new-instance v0, Lcom/cloud/tmc/render/DefaultPageCallback;

    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    invoke-direct {v0, v3}, Lcom/cloud/tmc/render/DefaultPageCallback;-><init>(Lcom/cloud/tmc/kernel/render/IPageCallback;)V

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    new-instance v0, Lcom/cloud/tmc/render/DefaultPageEventCallback;

    iget-object v8, p0, Lcom/cloud/tmc/render/SystemRender;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    new-instance v9, Lcom/cloud/tmc/worker/dispatch/DefaultBridgeDispatch;

    invoke-direct {v9}, Lcom/cloud/tmc/worker/dispatch/DefaultBridgeDispatch;-><init>()V

    iget-object v10, p0, Lcom/cloud/tmc/render/SystemRender;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-object v5, v0

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/cloud/tmc/render/DefaultPageEventCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IPageEventCallback;Lcom/cloud/tmc/worker/dispatch/IBridgeDispatch;Lcom/cloud/tmc/kernel/engine/EngineRouter;)V

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    new-instance v0, Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;

    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    invoke-direct {v0, v3}, Lcom/cloud/tmc/render/DefaultCustomViewVisiableCallback;-><init>(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiableCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    const-class v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    iget v5, p0, Lcom/cloud/tmc/render/SystemRender;->appinfoCategoryType:I

    invoke-interface {v0, v3, v5}, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;->createWebView(Landroid/content/Context;I)Lcom/cloud/tmc/kernel/render/IWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->mPageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageCallback(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V

    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiableCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/render/IWebView;->registerCustomViewVisiableCallback(Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;)V

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_4

    instance-of v3, v0, Landroid/webkit/WebView;

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v5, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CREATE_START:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    invoke-interface {v3, v5, v6, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/render/IWebView;->setAppId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    invoke-interface {v0, v3}, Lcom/cloud/tmc/kernel/render/IWebView;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->create()V

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v5, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    sget-object v6, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->CREATE_END:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    invoke-interface {v3, v5, v6, v4}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->renderBridge:Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v1, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_RENDER_READY:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    invoke-interface {v0, v1, v3, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v2, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    sget-object v3, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not extends WebView; plz initialize WebView first"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v5}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcRender"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "warmup_render_id_"

    invoke-static {p1, v2, v0, v1, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iput-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->pendingCreateRenderFail:Z

    goto :goto_4

    :cond_5
    invoke-direct {p0}, Lcom/cloud/tmc/render/SystemRender;->postCreateRenderFailEvent()V

    goto :goto_4

    :cond_6
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const-string v2, "context\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-interface {p1, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public isDarkTheme()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->isDarkTheme:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->destroy:Z

    return v0
.end method

.method public isResume()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->isResume()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public load(Lcom/cloud/tmc/kernel/render/LoadParams;)V
    .locals 3

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->loadParams:Lcom/cloud/tmc/kernel/render/LoadParams;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-class p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    sget-object v1, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;->ERROR:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/RenderAnalyseType;

    const-string v2, "url is null,cant not load"

    invoke-interface {p1, v0, v1, v2}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;)V

    const-string p1, "TmcRender"

    invoke-static {p1, v2}, Lcom/cloud/tmc/kernel/utils/TraceLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->load(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public loadDataWithBaseURL(Lcom/cloud/tmc/kernel/render/LoadParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->loadParams:Lcom/cloud/tmc/kernel/render/LoadParams;

    iget-object v1, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/cloud/tmc/kernel/render/LoadParams;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/render/IWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->onResume()V

    :cond_0
    return-void
.end method

.method public registerICustomViewVisiable(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V
    .locals 2

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiable:Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->customViewVisiableCallback:Lcom/cloud/tmc/kernel/render/CustomViewVisiableCallback;

    instance-of v1, v0, Lcom/cloud/tmc/render/IRegisterCustomViewVisiable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/render/IRegisterCustomViewVisiable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/cloud/tmc/render/IRegisterCustomViewVisiable;->register(Lcom/cloud/tmc/kernel/render/ICustomViewVisiable;)V

    :cond_1
    return-void
.end method

.method public registerPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->pageCallback:Lcom/cloud/tmc/kernel/render/IPageCallback;

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageCallback:Lcom/cloud/tmc/kernel/render/WebviewPageCallback;

    instance-of v1, v0, Lcom/cloud/tmc/render/IRegisterPageCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/render/IRegisterPageCallback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/cloud/tmc/render/IRegisterPageCallback;->registerPageCallback(Lcom/cloud/tmc/kernel/render/IPageCallback;)V

    :cond_1
    return-void
.end method

.method public registerPageEventCallback(Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V
    .locals 4

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->pageEventCallback:Lcom/cloud/tmc/kernel/render/IPageEventCallback;

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    instance-of v1, v0, Lcom/cloud/tmc/render/IRegisterPageEventCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/render/IRegisterPageEventCallback;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    instance-of v3, v1, Landroid/webkit/WebView;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/webkit/WebView;

    :cond_1
    invoke-interface {v0, v2, p1}, Lcom/cloud/tmc/render/IRegisterPageEventCallback;->registerPageEventCallback(Landroid/webkit/WebView;Lcom/cloud/tmc/kernel/render/IPageEventCallback;)V

    :cond_2
    return-void
.end method

.method public reload()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->reload()V

    :cond_0
    return-void
.end method

.method public runExit(Lcom/cloud/tmc/kernel/render/ExitCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/tmc/render/SystemRender;->destroy()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/render/ExitCallback;->afterProcess(Z)V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    return-void
.end method

.method public final setActivity(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->activity:Landroid/content/Context;

    return-void
.end method

.method public final setAppinfoCategoryType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/render/SystemRender;->appinfoCategoryType:I

    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setBgColor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setCreateParams(Lcom/cloud/tmc/kernel/model/CreateParams;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/render/SystemRender;->isDarkTheme:Z

    return-void
.end method

.method public final setEngineProxy(Lcom/cloud/tmc/kernel/engine/IEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    return-void
.end method

.method public setFrameworkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->frameworkVersion:Ljava/lang/String;

    return-void
.end method

.method public setMiniAppId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setAppId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMiniAppType(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setMiniAppType(I)V

    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->getRenderBridge()Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->renderBridge:Lcom/cloud/tmc/kernel/bridge/RenderBridge;

    :cond_0
    return-void
.end method

.method public final setNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    return-void
.end method

.method public setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setScrollChangedCallback(Lcom/cloud/tmc/kernel/render/ScrollChangedCallback;)V

    :cond_0
    return-void
.end method

.method public setSupportFullScreen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setSupportFullScreen(Z)V

    :cond_0
    return-void
.end method

.method public setWarmup(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->fromWarmup:Z

    iput p1, p0, Lcom/cloud/tmc/render/SystemRender;->warmupChannel:I

    return-void
.end method

.method public setWarmupAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->appId:Ljava/lang/String;

    return-void
.end method

.method public setWarmupCreateParams(Lcom/cloud/tmc/kernel/model/CreateParams;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->createParams:Lcom/cloud/tmc/kernel/model/CreateParams;

    return-void
.end method

.method public setWarmupEngine(Lcom/cloud/tmc/kernel/engine/IEngine;)V
    .locals 3

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->engineProxy:Lcom/cloud/tmc/kernel/engine/IEngine;

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    instance-of v1, v0, Lcom/cloud/tmc/render/IRegisterEngineRouter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/tmc/render/IRegisterEngineRouter;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/engine/IEngine;->getEngineRouter()Lcom/cloud/tmc/kernel/engine/EngineRouter;

    move-result-object v2

    :cond_1
    invoke-interface {v0, v2}, Lcom/cloud/tmc/render/IRegisterEngineRouter;->registerEnginerRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V

    :cond_2
    return-void
.end method

.method public setWarmupEngineRouter(Lcom/cloud/tmc/kernel/engine/EngineRouter;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->engineRouter:Lcom/cloud/tmc/kernel/engine/EngineRouter;

    return-void
.end method

.method public setWarmupNode(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 1

    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->node:Lcom/cloud/tmc/kernel/node/Node;

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/render/IWebView;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    :cond_0
    return-void
.end method

.method public setWarmupRenderId(Ljava/lang/String;)V
    .locals 5

    const-string v0, "renderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->webView:Lcom/cloud/tmc/kernel/render/IWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "warmup_render_id_"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->pendingCreateRenderFail:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/cloud/tmc/render/SystemRender;->pendingCreateRenderFail:Z

    invoke-direct {p0}, Lcom/cloud/tmc/render/SystemRender;->postCreateRenderFailEvent()V

    :cond_0
    iput-object p1, p0, Lcom/cloud/tmc/render/SystemRender;->renderId:Ljava/lang/String;

    iget-object v0, p0, Lcom/cloud/tmc/render/SystemRender;->mPageEventCallback:Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;

    instance-of v2, v0, Lcom/cloud/tmc/render/IRegisterRenderId;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/render/IRegisterRenderId;

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lcom/cloud/tmc/render/IRegisterRenderId;->registerRenderId(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setWarupSuccess()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->warmupSuccess:Z

    return-void
.end method

.method public showErrorView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public warmupSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/render/SystemRender;->warmupSuccess:Z

    return v0
.end method
