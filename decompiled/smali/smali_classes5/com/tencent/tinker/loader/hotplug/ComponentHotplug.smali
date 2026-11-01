.class public final Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;
.super Ljava/lang/Object;


# static fields
.field private static sAMSInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;

.field private static volatile sInstalled:Z

.field private static sMHMessageInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;

.field private static sPMSInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;

.field private static sTinkerHackInstrumentation:Lcom/tencent/tinker/loader/hotplug/interceptor/TinkerHackInstrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static fetchMHInstance(Landroid/content/Context;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->getActivityThread(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "mH"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "failed to fetch instance of ActivityThread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static declared-synchronized install(Lcom/tencent/tinker/loader/app/TinkerApplication;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tinker/loader/hotplug/UnsupportedEnvironmentException;
        }
    .end annotation

    const-class v0, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sInstalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {p0, p1}, Lcom/tencent/tinker/loader/hotplug/IncrementComponentManager;->init(Landroid/content/Context;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;

    const-string v1, "activity"

    new-instance v2, Lcom/tencent/tinker/loader/hotplug/handler/AMSInterceptHandler;

    invoke-direct {v2, p0}, Lcom/tencent/tinker/loader/hotplug/handler/AMSInterceptHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p0, v1, v2}, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;)V

    sput-object p1, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sAMSInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;

    new-instance p1, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;

    const-string v1, "package"

    new-instance v2, Lcom/tencent/tinker/loader/hotplug/handler/PMSInterceptHandler;

    invoke-direct {v2}, Lcom/tencent/tinker/loader/hotplug/handler/PMSInterceptHandler;-><init>()V

    invoke-direct {p1, p0, v1, v2}, Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor$BinderInvocationHandler;)V

    sput-object p1, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sPMSInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;

    sget-object p1, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sAMSInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;

    invoke-virtual {p1}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->install()V

    sget-object p1, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sPMSInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;

    invoke-virtual {p1}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->install()V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge p1, v1, :cond_0

    invoke-static {p0}, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->fetchMHInstance(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;

    new-instance v2, Lcom/tencent/tinker/loader/hotplug/handler/MHMessageHandler;

    invoke-direct {v2, p0}, Lcom/tencent/tinker/loader/hotplug/handler/MHMessageHandler;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;-><init>(Landroid/os/Handler;Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor$MessageHandler;)V

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sMHMessageInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;

    invoke-virtual {v1}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->install()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/tencent/tinker/loader/hotplug/interceptor/TinkerHackInstrumentation;->create(Landroid/content/Context;)Lcom/tencent/tinker/loader/hotplug/interceptor/TinkerHackInstrumentation;

    move-result-object p0

    sput-object p0, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sTinkerHackInstrumentation:Lcom/tencent/tinker/loader/hotplug/interceptor/TinkerHackInstrumentation;

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/hotplug/interceptor/TinkerHackInstrumentation;->install()V

    :goto_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sInstalled:Z

    const-string p0, "Tinker.ComponentHotplug"

    const-string p1, "installed successfully."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->uninstall()V

    new-instance p1, Lcom/tencent/tinker/loader/hotplug/UnsupportedEnvironmentException;

    invoke-direct {p1, p0}, Lcom/tencent/tinker/loader/hotplug/UnsupportedEnvironmentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static declared-synchronized uninstall()V
    .locals 6

    const/4 v0, 0x0

    const-class v1, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sInstalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    :try_start_1
    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sAMSInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;

    invoke-virtual {v2}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->uninstall()V

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sPMSInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/ServiceBinderInterceptor;

    invoke-virtual {v2}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->uninstall()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-ge v2, v3, :cond_0

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sMHMessageInterceptor:Lcom/tencent/tinker/loader/hotplug/interceptor/HandlerMessageInterceptor;

    invoke-virtual {v2}, Lcom/tencent/tinker/loader/hotplug/interceptor/Interceptor;->uninstall()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sTinkerHackInstrumentation:Lcom/tencent/tinker/loader/hotplug/interceptor/TinkerHackInstrumentation;

    invoke-virtual {v2}, Lcom/tencent/tinker/loader/hotplug/interceptor/TinkerHackInstrumentation;->uninstall()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    const-string v3, "Tinker.ComponentHotplug"

    const-string v4, "exception when uninstall."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    sput-boolean v0, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->sInstalled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
