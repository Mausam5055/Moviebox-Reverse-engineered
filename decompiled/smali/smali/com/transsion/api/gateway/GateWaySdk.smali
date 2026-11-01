.class public Lcom/transsion/api/gateway/GateWaySdk;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Lokhttp3/OkHttpClient;

.field public static c:Z

.field public static d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lcom/transsion/api/gateway/config/WorkMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/api/gateway/GateWaySdk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/transsion/api/gateway/GateWaySdk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    sput-object v0, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/transsion/api/gateway/GateWaySdk;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/GateWaySdk;->isOkhttpIntegrated()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/api/gateway/GateWaySdk;->c:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/transsion/api/gateway/receiver/a;

    invoke-direct {v1}, Lcom/transsion/api/gateway/receiver/a;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver fail, e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static getActivateSigHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static getActivateSigPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static getHost()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "apigateway.tmctool.com"

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getIsInited()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/api/gateway/GateWaySdk;->a:Z

    return v0
.end method

.method public static getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 2

    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->b:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;

    invoke-direct {v1}, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/transsion/api/gateway/GateWaySdk;->b:Lokhttp3/OkHttpClient;

    :cond_0
    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->b:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static getSecret()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/transsion/api/gateway/utils/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    sget-object v2, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "gateway_secret_online"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "gateway_secret_test"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    sget-object v2, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    invoke-virtual {v2, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getWorkMode()Lcom/transsion/api/gateway/config/WorkMode;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/api/gateway/utils/ContextUtils;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/transsion/api/gateway/GateWaySdk;->a(Landroid/content/Context;)V

    sget-object p0, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    sput-object p0, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/transsion/api/gateway/GateWaySdk;->a:Z

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/api/gateway/utils/ContextUtils;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/transsion/api/gateway/GateWaySdk;->a(Landroid/content/Context;)V

    sput-object p2, Lcom/transsion/api/gateway/GateWaySdk;->f:Lcom/transsion/api/gateway/config/WorkMode;

    new-instance p2, Lcom/transsion/api/gateway/GateWaySdk$a;

    invoke-direct {p2, p0, p1}, Lcom/transsion/api/gateway/GateWaySdk$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/api/gateway/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "/gateway/metric/add"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "/gateway/sdk/v1/config"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/transsion/api/gateway/GateWaySdk;->setActivateSignConfig(Ljava/util/List;Ljava/util/List;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/transsion/api/gateway/GateWaySdk;->a:Z

    return-void
.end method

.method public static isOkhttpIntegrated()Z
    .locals 1

    :try_start_0
    sget-object v0, Lokhttp3/OkHttpClient;->Companion:Lokhttp3/OkHttpClient$Companion;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setActivateSignConfig(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/transsion/api/gateway/GateWaySdk;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    sget-object p0, Lcom/transsion/api/gateway/GateWaySdk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    :cond_1
    return-void
.end method

.method public static setOkHttpClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/transsion/api/gateway/GateWaySdk;->b:Lokhttp3/OkHttpClient;

    :cond_0
    return-void
.end method
