.class public final Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;
.super Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$Companion;,
        Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 12\u00020\u0001:\u000212B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0019\u001a\u00020\u0005H\u0016J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u001a\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u001dH\u0016J \u0010#\u001a\u00020\u001d2\u0006\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u001f2\u0006\u0010&\u001a\u00020\'H\u0016J\u0008\u0010(\u001a\u00020)H\u0016J\u0008\u0010*\u001a\u00020\u001dH\u0016J\u0008\u0010+\u001a\u00020\u001dH\u0016J\u0008\u0010,\u001a\u00020\u001dH\u0016J\u0008\u0010-\u001a\u00020\u001dH\u0016J\u001a\u0010.\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!H\u0016J\u000e\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u00020\u001fR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u000e\u001a\u00060\u000fR\u00020\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u00063"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;",
        "Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;",
        "context",
        "Landroid/content/Context;",
        "renderId",
        "",
        "viewId",
        "render",
        "Lcom/cloud/tmc/kernel/render/IRender;",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V",
        "frameLayout",
        "Lcom/cloud/tmc/integration/ui/native/NativeTabView;",
        "getFrameLayout",
        "()Lcom/cloud/tmc/integration/ui/native/NativeTabView;",
        "listener",
        "Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;",
        "getListener",
        "()Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;",
        "mId",
        "nativeTabBean",
        "Lcom/cloud/tmc/integration/ui/data/NativeTabBean;",
        "getNativeTabBean",
        "()Lcom/cloud/tmc/integration/ui/data/NativeTabBean;",
        "setNativeTabBean",
        "(Lcom/cloud/tmc/integration/ui/data/NativeTabBean;)V",
        "getComponentName",
        "getComponentView",
        "Landroid/view/View;",
        "onAddView",
        "",
        "customObject",
        "Lcom/google/gson/JsonObject;",
        "onViewChangeCallback",
        "Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;",
        "onDestory",
        "onEventMessage",
        "methodName",
        "args",
        "callback",
        "Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;",
        "onInterceptBackPressed",
        "",
        "onPause",
        "onRemove",
        "onResume",
        "onStop",
        "onUpdateView",
        "parseCustomJson",
        "json",
        "Companion",
        "MiniNativeTabListener",
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


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$Companion;

.field public static final TAG:Ljava/lang/String; = "NativeTabComponent"


# instance fields
.field private final frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

.field private final listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

.field private mId:Ljava/lang/String;

.field private nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->Companion:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "renderId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "render"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/render/IRender;)V

    iput-object p3, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->mId:Ljava/lang/String;

    new-instance p2, Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    new-instance p1, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    new-instance p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    invoke-direct {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    return-void
.end method

.method public static final synthetic access$getMId$p(Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->mId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "native-tab"

    return-object v0
.end method

.method public getComponentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    return-object v0
.end method

.method public final getFrameLayout()Lcom/cloud/tmc/integration/ui/native/NativeTabView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    return-object v0
.end method

.method public final getListener()Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    return-object v0
.end method

.method public final getNativeTabBean()Lcom/cloud/tmc/integration/ui/data/NativeTabBean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    return-object v0
.end method

.method public onAddView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    .locals 2

    const-string v0, "onViewChangeCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->addNativeTabListener(Lcom/cloud/tmc/integration/ui/native/INativeTabListener;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->parseCustomJson(Lcom/google/gson/JsonObject;)V

    :cond_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V

    return-void
.end method

.method public onDestory()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->removeNativeTabListener(Lcom/cloud/tmc/integration/ui/native/INativeTabListener;)V

    return-void
.end method

.method public onEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;)V
    .locals 1

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "switchTab"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "index"

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p1

    iget-object p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->switchTab(I)V

    :cond_0
    return-void
.end method

.method public onInterceptBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRemove()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onUpdateView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    .locals 1

    const-string v0, "onViewChangeCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->parseCustomJson(Lcom/google/gson/JsonObject;)V

    :cond_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V

    return-void
.end method

.method public final parseCustomJson(Lcom/google/gson/JsonObject;)V
    .locals 5

    const-string v0, "error"

    const-string v1, "errMsg"

    const-string v2, "NativeTabComponent"

    const-string v3, "json"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "json.toString()"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$parseCustomJson$tabBar$1;

    invoke-direct {v3}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$parseCustomJson$tabBar$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "object :\n               \u2026<NativeTabBean>() {}.type"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/cloud/tmc/kernel/utils/TmcGsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v3, "tabBarConfig json parse error"

    invoke-static {v2, v3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v3, "parse Json error, please check the config: T10002"

    invoke-virtual {p1, v1, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    invoke-virtual {v3, v0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;->onTabEvent(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->frameLayout:Lcom/cloud/tmc/integration/ui/native/NativeTabView;

    invoke-virtual {v3, p1}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->setTabStyle(Lcom/cloud/tmc/integration/ui/data/NativeTabBean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v4, "Parameter error: T10001"

    invoke-virtual {v3, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->listener:Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;

    invoke-virtual {v1, v0, v3}, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent$MiniNativeTabListener;->onTabEvent(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    invoke-static {v2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void
.end method

.method public final setNativeTabBean(Lcom/cloud/tmc/integration/ui/data/NativeTabBean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabComponent;->nativeTabBean:Lcom/cloud/tmc/integration/ui/data/NativeTabBean;

    return-void
.end method
