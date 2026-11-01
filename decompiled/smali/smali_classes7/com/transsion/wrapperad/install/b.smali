.class public final Lcom/transsion/wrapperad/install/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/f;


# static fields
.field public static final a:Lcom/transsion/wrapperad/install/b;

.field private static b:Landroid/content/Context;

.field private static c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/wrapperad/install/b;

    invoke-direct {v0}, Lcom/transsion/wrapperad/install/b;-><init>()V

    sput-object v0, Lcom/transsion/wrapperad/install/b;->a:Lcom/transsion/wrapperad/install/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/wrapperad/install/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final c()V
    .locals 5

    sget-boolean v0, Lcom/transsion/wrapperad/install/b;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/transsion/wrapperad/install/AppChangeReceiver;

    invoke-direct {v0}, Lcom/transsion/wrapperad/install/AppChangeReceiver;-><init>()V

    sput-object v0, Lcom/transsion/wrapperad/install/b;->c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x0

    const-string v4, "appContext"

    if-lt v1, v2, :cond_2

    sget-object v1, Lcom/transsion/wrapperad/install/b;->b:Landroid/content/Context;

    if-nez v1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    sget-object v1, Lcom/transsion/wrapperad/install/b;->c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    const/4 v2, 0x4

    invoke-static {v3, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/transsion/wrapperad/install/b;->b:Landroid/content/Context;

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    sget-object v1, Lcom/transsion/wrapperad/install/b;->c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/wrapperad/install/b;->d:Z

    return-void
.end method

.method private final d()V
    .locals 3

    sget-boolean v0, Lcom/transsion/wrapperad/install/b;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/wrapperad/install/b;->c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v2, Lcom/transsion/wrapperad/install/b;->b:Landroid/content/Context;

    if-nez v2, :cond_1

    const-string v2, "appContext"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    sput-object v1, Lcom/transsion/wrapperad/install/b;->c:Lcom/transsion/wrapperad/install/AppChangeReceiver;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/wrapperad/install/b;->d:Z

    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/transsion/wrapperad/install/b;->b:Landroid/content/Context;

    sget-object p1, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    invoke-virtual {p1}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    sget-object p1, Lcom/transsion/wrapperad/install/a;->a:Lcom/transsion/wrapperad/install/a;

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/b;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> init() --> \u521d\u59cb\u5316\u6210\u529f"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/wrapperad/install/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/u;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/b;->d()V

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/b;->c()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/u;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/wrapperad/install/b;->d()V

    return-void
.end method
