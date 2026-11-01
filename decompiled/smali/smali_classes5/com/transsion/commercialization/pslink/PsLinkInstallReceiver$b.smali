.class public final Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$b;->c()V

    return-void
.end method

.method private final c()V
    .locals 7

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PsLinkInstallReceiver --> replayPending() --> pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-virtual {v3}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->i()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/commercialization/pslink/b;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-interface {v4, v1, v5, v6, v2}, Lcom/transsion/commercialization/pslink/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsnet/launcherlib/PalmStoreDownLoadTaskInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->b()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    invoke-direct {v0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;-><init>()V

    invoke-static {v0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->d(Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;)V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->b()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lcom/transsion/commercialization/pslink/c;->a(Landroid/app/Application;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->b()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/report/l;->g(Lcom/transsion/baselib/report/l$a;)Z

    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    const-string v1, "PsLinkInstallReceiver --> registerInstallReceiver() --> success"

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->b()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->b()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->d(Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;)V

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->c()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-static {}, Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver;->a()Lcom/transsion/commercialization/pslink/PsLinkInstallReceiver$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/report/l;->u(Lcom/transsion/baselib/report/l$a;)Z

    sget-object v0, Lcom/transsion/commercialization/pslink/a;->a:Lcom/transsion/commercialization/pslink/a;

    const-string v1, "PsLinkInstallReceiver --> unregisterInstallReceiver() --> success"

    invoke-virtual {v0, v1}, Lcom/transsion/commercialization/pslink/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
