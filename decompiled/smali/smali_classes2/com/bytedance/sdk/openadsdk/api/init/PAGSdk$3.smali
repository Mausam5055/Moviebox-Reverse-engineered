.class final Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/uA/vS$TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebView(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/webkit/WebView;
    .locals 1

    instance-of v0, p1, Landroid/content/MutableContextWrapper;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    if-nez p3, :cond_1

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/uA/HiB;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/uA/HiB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/uA/HiB;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/uA/HiB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    if-nez p3, :cond_2

    new-instance p3, Lcom/bytedance/sdk/component/uA/HiB;

    invoke-direct {p3, p1, p2}, Lcom/bytedance/sdk/component/uA/HiB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p3

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/component/uA/HiB;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/uA/HiB;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0
.end method
