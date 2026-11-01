.class public final Lcom/vungle/ads/internal/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/util/a$b;,
        Lcom/vungle/ads/internal/util/a$c;,
        Lcom/vungle/ads/internal/util/a$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/util/a$a;

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final instance:Lcom/vungle/ads/internal/util/a;


# instance fields
.field private final callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/vungle/ads/internal/util/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private volatile foregroundActivityCount:I

.field private volatile isAppInForeground:Z

.field private final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile targetActivityInfo:Lcom/vungle/ads/internal/util/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/util/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/util/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/util/a;->Companion:Lcom/vungle/ads/internal/util/a$a;

    new-instance v0, Lcom/vungle/ads/internal/util/a;

    invoke-direct {v0}, Lcom/vungle/ads/internal/util/a;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/util/a;->instance:Lcom/vungle/ads/internal/util/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/ads/internal/util/a;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/internal/util/a;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public static final synthetic access$addListener(Lcom/vungle/ads/internal/util/a;Lcom/vungle/ads/internal/util/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/util/a;->addListener(Lcom/vungle/ads/internal/util/a$b;)V

    return-void
.end method

.method public static final synthetic access$deInit(Lcom/vungle/ads/internal/util/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/util/a;->deInit(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/vungle/ads/internal/util/a;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/util/a;->instance:Lcom/vungle/ads/internal/util/a;

    return-object v0
.end method

.method public static final synthetic access$init(Lcom/vungle/ads/internal/util/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/util/a;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$isAppInForeground(Lcom/vungle/ads/internal/util/a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/a;->isAppInForeground()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setTargetActivityInfo$p(Lcom/vungle/ads/internal/util/a;Lcom/vungle/ads/internal/util/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/util/a;->targetActivityInfo:Lcom/vungle/ads/internal/util/a$c;

    return-void
.end method

.method public static final synthetic access$startActivitySafely(Lcom/vungle/ads/internal/util/a;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/util/a;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)Z

    move-result p0

    return p0
.end method

.method private final addListener(Lcom/vungle/ads/internal/util/a$b;)V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final deInit(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object p1, p0, Lcom/vungle/ads/internal/util/a;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vungle/ads/internal/util/a;->targetActivityInfo:Lcom/vungle/ads/internal/util/a$c;

    iput v0, p0, Lcom/vungle/ads/internal/util/a;->foregroundActivityCount:I

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/a;->isAppInForeground:Z

    iget-object p1, p0, Lcom/vungle/ads/internal/util/a;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method private final init(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v1, "ActivityManager"

    const-string v2, "Error initializing ActivityManager"

    invoke-virtual {v0, v1, v2, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/vungle/ads/internal/util/a;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method

.method private final isAppInForeground()Z
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/util/a;->isAppInForeground:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final startActivitySafely(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p4, :cond_1

    invoke-interface {p4, v0}, Lcom/vungle/ads/internal/ui/b;->onDeeplinkClick(Z)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_4

    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :goto_1
    sget-object v3, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-virtual {v3, v4, v2}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    :try_start_1
    invoke-interface {p4, v1}, Lcom/vungle/ads/internal/ui/b;->onDeeplinkClick(Z)V

    :cond_2
    if-eqz p2, :cond_4

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/vungle/ads/internal/util/a;->foregroundActivityCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/vungle/ads/internal/util/a;->foregroundActivityCount:I

    iget-boolean p1, p0, Lcom/vungle/ads/internal/util/a;->isAppInForeground:Z

    if-nez p1, :cond_2

    iget p1, p0, Lcom/vungle/ads/internal/util/a;->foregroundActivityCount:I

    if-ne p1, v0, :cond_2

    iput-boolean v0, p0, Lcom/vungle/ads/internal/util/a;->isAppInForeground:Z

    iget-object p1, p0, Lcom/vungle/ads/internal/util/a;->targetActivityInfo:Lcom/vungle/ads/internal/util/a$c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/a$c;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vungle/ads/internal/util/a;->Companion:Lcom/vungle/ads/internal/util/a$a;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/a$c;->getDeepLinkOverrideIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/a$c;->getDefaultIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/a$c;->getAdOpenCallback()Lcom/vungle/ads/internal/ui/b;

    move-result-object p1

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/vungle/ads/internal/util/a$a;->startWhenForeground(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Lcom/vungle/ads/internal/ui/b;)Z

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vungle/ads/internal/util/a;->targetActivityInfo:Lcom/vungle/ads/internal/util/a$c;

    :cond_1
    iget-object p1, p0, Lcom/vungle/ads/internal/util/a;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/a$b;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/a$b;->onForeground()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/vungle/ads/internal/util/a;->foregroundActivityCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/vungle/ads/internal/util/a;->foregroundActivityCount:I

    iget-boolean p1, p0, Lcom/vungle/ads/internal/util/a;->isAppInForeground:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/vungle/ads/internal/util/a;->foregroundActivityCount:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vungle/ads/internal/util/a;->isAppInForeground:Z

    iget-object p1, p0, Lcom/vungle/ads/internal/util/a;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/util/a$b;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/util/a$b;->onBackground()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeListener(Lcom/vungle/ads/internal/util/a$b;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/util/a;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
