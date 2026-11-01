.class public final Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;",
        "",
        "()V",
        "parseBaseCSStyle",
        "",
        "argsJo",
        "Lcom/google/gson/JsonObject;",
        "com.cloud.tmc.kernel"
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
.field public static final INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;

    invoke-direct {v0}, Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;-><init>()V

    sput-object v0, Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseBaseCSStyle(Lcom/google/gson/JsonObject;)V
    .locals 8

    const-string v0, "argsJo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewId"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "style"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "position"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    if-eqz v2, :cond_2

    const-string v4, "bgColor"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const-string v4, "width"

    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-eqz p1, :cond_4

    const-string v5, "height"

    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v5

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    if-eqz p1, :cond_5

    const-string v6, "left"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v6

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    if-eqz p1, :cond_6

    const-string v7, "top"

    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result v2

    :cond_6
    sget-object p1, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->getComponentView(Ljava/lang/String;)Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz v3, :cond_7

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v1

    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v3

    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v4

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v2

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method
