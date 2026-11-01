.class public final Lcom/vungle/ads/internal/util/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/a$a;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addLifecycleListener(Lcom/vungle/ads/internal/util/a$b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/a;->access$addListener(Lcom/vungle/ads/internal/util/a;Lcom/vungle/ads/internal/util/a$b;)V

    return-void
.end method

.method public final deInit$vungle_ads_release(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/a;->access$deInit(Lcom/vungle/ads/internal/util/a;Landroid/content/Context;)V

    return-void
.end method

.method public final getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;
    .locals 1

    invoke-static {}, Lcom/vungle/ads/internal/util/a;->access$getInstance$cp()Lcom/vungle/ads/internal/util/a;

    move-result-object v0

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/vungle/ads/internal/util/a;->access$init(Lcom/vungle/ads/internal/util/a;Landroid/content/Context;)V

    return-void
.end method

.method public final isForeground()Z
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/ads/internal/util/a;->access$isAppInForeground(Lcom/vungle/ads/internal/util/a;)Z

    move-result v0

    return v0
.end method

.method public final removeLifecycleListener(Lcom/vungle/ads/internal/util/a$b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/util/a;->removeListener(Lcom/vungle/ads/internal/util/a$b;)V

    return-void
.end method

.method public final startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)Z
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/util/a;->access$startActivitySafely(Lcom/vungle/ads/internal/util/a;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vungle/ads/internal/util/a$a;->getInstance$vungle_ads_release()Lcom/vungle/ads/internal/util/a;

    move-result-object v0

    new-instance v1, Lcom/vungle/ads/internal/util/a$c;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p2, p3, p4}, Lcom/vungle/ads/internal/util/a$c;-><init>(Ljava/lang/ref/WeakReference;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)V

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/util/a;->access$setTargetActivityInfo$p(Lcom/vungle/ads/internal/util/a;Lcom/vungle/ads/internal/util/a$c;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
