.class public final Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;
.super Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0018\u0000 32\u00020\u0001:\u00013B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0015\u001a\u00020\u0005H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0005H\u0002J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u0005H\u0002J\u0008\u0010\u001d\u001a\u00020\u0019H\u0002J\u001a\u0010\u001e\u001a\u00020\u00192\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0008\u0010#\u001a\u00020\u0019H\u0016J \u0010$\u001a\u00020\u00192\u0006\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020 2\u0006\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020\u0019H\u0016J\u0008\u0010,\u001a\u00020\u0019H\u0016J\u0008\u0010-\u001a\u00020\u0019H\u0016J\u0008\u0010.\u001a\u00020\u0019H\u0016J\u001a\u0010/\u001a\u00020\u00192\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u00100\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u0005H\u0002R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u00064"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;",
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
        "Landroid/widget/ImageView;",
        "getFrameLayout",
        "()Landroid/widget/ImageView;",
        "mContext",
        "mRender",
        "mSrc",
        "getMSrc",
        "()Ljava/lang/String;",
        "setMSrc",
        "(Ljava/lang/String;)V",
        "getComponentName",
        "getComponentView",
        "Landroid/view/View;",
        "loadImage",
        "",
        "imgUrl",
        "notifyError",
        "msg",
        "notifyLoad",
        "onAddView",
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
        "parseImageUrl",
        "url",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$Companion;

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final ERROR_MSG_I10001:Ljava/lang/String; = "Parameter invalid: I10001"

.field public static final ERROR_MSG_I10002:Ljava/lang/String; = "load image failed: I10002"

.field public static final EVENT_LOAD:Ljava/lang/String; = "load"

.field public static final TAG:Ljava/lang/String; = "NativeImgComponent"


# instance fields
.field private final frameLayout:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private final mRender:Lcom/cloud/tmc/kernel/render/IRender;

.field private mSrc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->Companion:Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$Companion;

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

    new-instance p2, Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->parseImageUrl$lambda$3(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method public static final synthetic access$notifyError(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$notifyLoad(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyLoad()V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->loadImage$lambda$4(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void
.end method

.method private final loadImage(Ljava/lang/String;)V
    .locals 6

    const-string v0, ".gif"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const-class v4, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    if-eqz v0, :cond_3

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v5, "http"

    invoke-static {p1, v5, v1, v2, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    const-string v2, "load image failed: I10002"

    if-eqz v1, :cond_0

    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    iget-object v3, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3, p1}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, v2}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/cloud/tmc/integration/ui/native/b;

    invoke-direct {p1, p0, v0}, Lcom/cloud/tmc/integration/ui/native/b;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    iget-object v1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$2;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$2;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgBitmapNoRound(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;)V

    :goto_1
    return-void
.end method

.method private static final loadImage$lambda$4(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ljava/io/File;

    iget-object v5, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    new-instance v6, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$1$1;

    invoke-direct {v6, p0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent$loadImage$1$1;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;)V

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgGifPlay(Landroid/content/Context;Ljava/io/File;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadListener;)V

    return-void
.end method

.method private final notifyError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "errMsg"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-virtual {p0, p1, v0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->postEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method private final notifyLoad()V
    .locals 2

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "load"

    invoke-virtual {p0, v1, v0}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->postEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method private final parseCustomJson(Lcom/google/gson/JsonObject;)V
    .locals 4

    const-string v0, "Parameter invalid: I10001"

    :try_start_0
    const-string v1, "src"

    invoke-virtual {p1, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "scaleType"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x514d33ab

    if-eq v2, v3, :cond_5

    const v3, 0x2ff583

    if-eq v2, v3, :cond_4

    const v3, 0x32882591

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "fit-center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_4
    const-string v2, "fill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_5
    const-string v2, "center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mSrc:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-direct {p0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->parseImageUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    const-string v0, "NativeImgComponent"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private final parseImageUrl(Ljava/lang/String;)V
    .locals 9

    const-string v0, "Parameter invalid: I10001"

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v2, "http"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-class v6, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    invoke-static {v6}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;

    iget-object v7, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v7}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/cloud/tmc/kernel/resource/IImageResourceManager;->getVhost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "get(IImageResourceManage\u2026).getVhost(mRender.appId)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "/"

    invoke-static {p1, v7, v3, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    iput-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_1
    iget-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    new-instance v7, Lkotlin/text/Regex;

    const-string v8, ".miniapp.transsion.com"

    invoke-direct {v7, v8}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-class p1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    iget-object v2, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mRender:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {v2}, Lcom/cloud/tmc/kernel/render/IRender;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iput-object v5, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_2
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/cloud/tmc/kernel/executor/ExecutorType;->IO:Lcom/cloud/tmc/kernel/executor/ExecutorType;

    new-instance v0, Lcom/cloud/tmc/integration/ui/native/a;

    invoke-direct {v0, p0, v1}, Lcom/cloud/tmc/integration/ui/native/a;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/utils/ExecutorUtils;->execute(Lcom/cloud/tmc/kernel/executor/ExecutorType;Ljava/lang/Runnable;)V

    return-void

    :cond_6
    :goto_3
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_4
    invoke-direct {p0, v0}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    return-void
.end method

.method private static final parseImageUrl$lambda$3(Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$imageUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->loadImage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "NativeImgComponent"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Parameter invalid: I10001"

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->notifyError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "native-image"

    return-object v0
.end method

.method public getComponentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getFrameLayout()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->frameLayout:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getMSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public onAddView(Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;)V
    .locals 1

    const-string v0, "onViewChangeCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->parseCustomJson(Lcom/google/gson/JsonObject;)V

    :cond_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V

    return-void
.end method

.method public onDestory()V
    .locals 0

    return-void
.end method

.method public onEventMessage(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;)V
    .locals 1

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->parseCustomJson(Lcom/google/gson/JsonObject;)V

    :cond_0
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/minicover/callback/OnViewChangeCallback;->onSuccess()V

    return-void
.end method

.method public final setMSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeImgComponent;->mSrc:Ljava/lang/String;

    return-void
.end method
