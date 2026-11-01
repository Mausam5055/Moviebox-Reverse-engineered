.class public final Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

.field private static b:Lky/b;

.field private static c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private static d:J

.field private static final e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;-><init>()V

    sput-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$a;

    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$a;-><init>()V

    sput-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()J
    .locals 2

    sget-wide v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->d:J

    return-wide v0
.end method

.method public static final synthetic c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->l(Landroid/os/IBinder;)V

    return-void
.end method

.method public static final synthetic e(J)V
    .locals 0

    sput-wide p0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->d:J

    return-void
.end method

.method public static final synthetic f(Lky/b;)V
    .locals 0

    sput-object p0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->b:Lky/b;

    return-void
.end method

.method private final j()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final l(Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lky/b$a;->Y0(Landroid/os/IBinder;)Lky/b;

    move-result-object p1

    sput-object p1, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->b:Lky/b;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1;

    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper$register$1$1;-><init>()V

    const-string v1, "Moviebox"

    invoke-interface {p1, v0, v1}, Lky/b;->c0(Lky/a;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    sget-object v1, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-direct {v1}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> register() --> it = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/commercialization/pslink/a;->b(Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public final g(Lcom/transsion/commercialization/pslink/b;)V
    .locals 1

    const-string v0, "psLinkCallBackCommon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 6

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->b:Lky/b;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    sget-object v1, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-direct {v1}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> bindService() --> \u5f00\u59cbbindService .... "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.transsnet.store"

    const-string v4, "com.transsnet.launcherlib.services.DispenseCommonService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    sget-object v4, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->e:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    invoke-direct {v1}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> bindService() --> \u5f00\u59cbbindService .... --> isConnect = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    sget-object v2, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-direct {v2}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> bindService() --> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/commercialization/pslink/a;->b(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a:Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;

    invoke-virtual {v0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;->b()V

    return-void
.end method

.method public final i()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->b:Lky/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m(Lcom/transsion/commercialization/pslink/b;)V
    .locals 1

    const-string v0, "psLinkCallBackCommon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
