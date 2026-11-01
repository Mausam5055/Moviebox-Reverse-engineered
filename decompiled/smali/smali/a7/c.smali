.class public final La7/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/c$a;,
        La7/c$b;
    }
.end annotation


# static fields
.field private static a:La7/c$a; = null

.field public static b:Ljava/lang/String; = null

.field private static c:Z = true

.field private static d:Ljava/util/concurrent/atomic/AtomicLong;

.field private static e:I

.field private static f:I

.field private static g:Z

.field private static h:Z

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, La7/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, -0x1

    sput v0, La7/c;->e:I

    const/16 v0, 0xa

    sput v0, La7/c;->f:I

    const/4 v0, 0x1

    sput-boolean v0, La7/c;->g:Z

    const/4 v1, 0x0

    sput-boolean v1, La7/c;->h:Z

    sput-boolean v0, La7/c;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, La7/c;->m()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, La7/c;->h()V

    return-void
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, La7/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method private static d(La7/c$a;)V
    .locals 3

    sget-object v0, La7/c;->a:La7/c$a;

    if-nez v0, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, La7/c$a;->c(La7/c$a;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/c;->NET_LOG:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->m()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    const-string v2, "AD_NET_LOG"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->q(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    :cond_1
    invoke-static {p0}, La7/c$a;->e(La7/c$a;)Z

    move-result v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/k0;->b(Z)V

    invoke-static {p0}, La7/c$a;->c(La7/c$a;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "TA_SDK"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ADSDK"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, v0}, La7/c$a;->b(La7/c$a;Z)Z

    :cond_4
    sput-object p0, La7/c;->a:La7/c$a;

    sget-object p0, Lcom/cloud/hisavana/sdk/d0;->a:Lcom/cloud/hisavana/sdk/d0;

    sget-object v0, La7/c;->a:La7/c$a;

    invoke-static {v0}, La7/c$a;->f(La7/c$a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/d0;->c(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    sget-object p0, La7/c;->a:La7/c$a;

    invoke-static {p0}, La7/c$a;->c(La7/c$a;)Z

    move-result p0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o(ZLandroid/content/Context;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->registerMonitorBroadcast()V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p0

    sget-object v0, La7/c;->a:La7/c$a;

    invoke-static {v0}, La7/c$a;->c(La7/c$a;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cloud/sdk/commonutil/util/c;->setLogSwitch(Z)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->R()V

    invoke-static {}, La7/c;->f()V

    invoke-static {}, Ll7/c;->e()V

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, La7/a;

    invoke-direct {v0}, La7/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    new-instance v0, La7/b;

    invoke-direct {v0}, La7/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/s0;->b(Landroid/content/Context;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/Z;->a:Lcom/cloud/hisavana/sdk/Z;

    sget-object v0, La7/c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/Z;->k(J)V

    sget-object p0, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->O()V

    sget-object p0, Lcom/cloud/hisavana/sdk/v1;->a:Lcom/cloud/hisavana/sdk/v1;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/v1;->d()V

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic e(Z)Z
    .locals 0

    sput-boolean p0, La7/c;->g:Z

    return p0
.end method

.method private static f()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbi/k;->c(Landroid/app/Application;Z)V

    invoke-static {}, La7/c;->p()Z

    move-result v0

    sput-boolean v0, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "init NetworkMonitor failure!"

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic g(Z)Z
    .locals 0

    sput-boolean p0, La7/c;->h:Z

    return p0
.end method

.method private static synthetic h()V
    .locals 2

    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/k1;->n(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/o;->n()V

    invoke-static {}, Li7/a;->s0()V

    return-void
.end method

.method static synthetic i(Z)Z
    .locals 0

    sput-boolean p0, La7/c;->i:Z

    return p0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, La7/c;->g:Z

    return v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, La7/c;->i:Z

    return v0
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, La7/c;->h:Z

    return v0
.end method

.method private static synthetic m()V
    .locals 1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/i0;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static n()I
    .locals 1

    sget v0, La7/c;->e:I

    return v0
.end method

.method public static o(Landroid/content/Context;La7/c$a;)V
    .locals 1

    sget-object v0, La7/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p0

    const-string p1, "AdManager"

    const-string v0, "AppId is empty, please check your config."

    invoke-virtual {p0, p1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/m;->j(Landroid/app/Application;)V

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/e;->g(Landroid/content/Context;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->h()V

    invoke-static {p1}, La7/c;->d(La7/c$a;)V

    return-void
.end method

.method public static p()Z
    .locals 1

    sget-object v0, La7/c;->a:La7/c$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, La7/c$a;->c(La7/c$a;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static q()Z
    .locals 1

    sget-object v0, La7/c;->a:La7/c$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, La7/c$a;->a(La7/c$a;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, La7/c;->c:Z

    return v0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    sput-object p1, La7/c;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/cloud/sdk/commonutil/util/e;->g(Landroid/content/Context;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->h()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o(ZLandroid/content/Context;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->registerMonitorBroadcast()V

    invoke-static {}, Ll7/c;->e()V

    return-void
.end method

.method public static t(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sput p0, La7/c;->f:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static u(Z)V
    .locals 0

    sput-boolean p0, La7/c;->c:Z

    return-void
.end method

.method public static v()Z
    .locals 1

    sget-object v0, La7/c;->a:La7/c$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, La7/c$a;->d(La7/c$a;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
