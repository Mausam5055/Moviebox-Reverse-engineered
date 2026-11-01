.class public final Lcom/transsion/push/utils/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/push/utils/k;

.field private static b:Lcom/transsion/sunflower/FSNConfig;

.field private static final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/push/utils/k;

    invoke-direct {v0}, Lcom/transsion/push/utils/k;-><init>()V

    sput-object v0, Lcom/transsion/push/utils/k;->a:Lcom/transsion/push/utils/k;

    new-instance v0, Lcom/transsion/push/utils/f;

    invoke-direct {v0}, Lcom/transsion/push/utils/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/push/utils/k;->c:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/transsion/push/utils/k;->l()Z

    move-result v0

    return v0
.end method

.method public static synthetic b()Lcom/transsion/sunflower/FSNManager;
    .locals 1

    invoke-static {}, Lcom/transsion/push/utils/k;->k()Lcom/transsion/sunflower/FSNManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/push/utils/k;->n(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()Z
    .locals 1

    invoke-static {}, Lcom/transsion/push/utils/k;->m()Z

    move-result v0

    return v0
.end method

.method public static synthetic e(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/push/utils/k;->o(Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final f(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/push/api/IPushProvider;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/push/api/IPushProvider;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "getApp(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/transsion/push/api/IPushProvider;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "channel"

    const-string v2, "alive"

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0

    :cond_1
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "parse(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lak/k;->m(Landroid/net/Uri;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/therouter/router/Navigator;->n()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method private final g()V
    .locals 2

    sget-object v0, Lcom/transsion/push/utils/k;->b:Lcom/transsion/sunflower/FSNConfig;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/push/utils/k;->j()Lcom/transsion/sunflower/FSNManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/push/utils/k;->h()Lcom/transsion/sunflower/FSNConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/sunflower/FSNManager;->t(Lcom/transsion/sunflower/FSNConfig;)V

    :cond_0
    return-void
.end method

.method private final h()Lcom/transsion/sunflower/FSNConfig;
    .locals 9

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "sa_dauupupup_config"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppConfig: json:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "qqqq"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v3, Lcom/transsion/sunflower/FSNConfig;

    new-array v4, v1, [Ljava/lang/reflect/Type;

    invoke-static {v3, v4}, Lcom/blankj/utilcode/util/o;->h(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sunflower/FSNConfig;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v0, v4

    :cond_1
    check-cast v0, Lcom/transsion/sunflower/FSNConfig;

    invoke-direct {p0}, Lcom/transsion/push/utils/k;->i()Lcom/transsion/sunflower/FSNConfig;

    move-result-object v3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/sunflower/FSNConfig;->getEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/transsion/sunflower/FSNConfig;->getEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/transsion/sunflower/FSNConfig;->setEnable(Z)V

    move-object v4, v0

    :cond_3
    sput-object v4, Lcom/transsion/push/utils/k;->b:Lcom/transsion/sunflower/FSNConfig;

    return-object v4
.end method

.method private final i()Lcom/transsion/sunflower/FSNConfig;
    .locals 7

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "dauupupup_config"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppConfigB: json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "qqqq"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v1, Lcom/transsion/sunflower/FSNConfig;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/reflect/Type;

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/o;->h(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->e(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sunflower/FSNConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/transsion/sunflower/FSNConfig;

    return-object v0
.end method

.method private final j()Lcom/transsion/sunflower/FSNManager;
    .locals 1

    sget-object v0, Lcom/transsion/push/utils/k;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/sunflower/FSNManager;

    return-object v0
.end method

.method private static final k()Lcom/transsion/sunflower/FSNManager;
    .locals 3

    new-instance v0, Lcom/transsion/sunflower/d;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/transsion/sunflower/d;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/lib/push/R$mipmap;->ic_notification_logo:I

    invoke-virtual {v0, v1}, Lcom/transsion/sunflower/d;->n(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/c;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/sunflower/d;->m(Z)V

    new-instance v1, Lcom/transsion/push/utils/g;

    invoke-direct {v1}, Lcom/transsion/push/utils/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/sunflower/d;->k(Lkotlin/jvm/functions/Function0;)V

    new-instance v1, Lcom/transsion/push/utils/h;

    invoke-direct {v1}, Lcom/transsion/push/utils/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/sunflower/d;->q(Lkotlin/jvm/functions/Function0;)V

    sget-object v1, Lcom/transsion/push/utils/k;->a:Lcom/transsion/push/utils/k;

    invoke-direct {v1}, Lcom/transsion/push/utils/k;->h()Lcom/transsion/sunflower/FSNConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/sunflower/d;->l(Lcom/transsion/sunflower/FSNConfig;)V

    invoke-virtual {v0}, Lcom/transsion/sunflower/d;->b()Lcom/transsion/sunflower/FSNConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/sunflower/FSNConfig;->getDeepLink()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Lcom/transsion/push/utils/k;->f(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/sunflower/d;->r(Landroid/content/Intent;)V

    new-instance v1, Lcom/transsion/push/utils/i;

    invoke-direct {v1}, Lcom/transsion/push/utils/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/sunflower/d;->o(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/transsion/push/utils/j;

    invoke-direct {v1}, Lcom/transsion/push/utils/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/sunflower/d;->p(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lcom/transsion/sunflower/d;->a()Lcom/transsion/sunflower/FSNManager;

    move-result-object v0

    return-object v0
.end method

.method private static final l()Z
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->r()Z

    move-result v0

    return v0
.end method

.method private static final m()Z
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/l;->w()Z

    move-result v0

    return v0
.end method

.method private static final n(Ljava/lang/String;)Lkotlin/Unit;
    .locals 7

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFSI failed- msg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "qqqq"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final o(Ljava/lang/String;)Lkotlin/Unit;
    .locals 7

    const-string v0, "msg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFSI show- msg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "qqqq"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/transsion/push/helper/g;->a:Lcom/transsion/push/helper/g;

    invoke-virtual {v0, p0}, Lcom/transsion/push/helper/g;->a(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final p(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/utils/k;->g()V

    invoke-direct {p0}, Lcom/transsion/push/utils/k;->j()Lcom/transsion/sunflower/FSNManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/sunflower/FSNManager;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/push/utils/k;->g()V

    invoke-direct {p0}, Lcom/transsion/push/utils/k;->j()Lcom/transsion/sunflower/FSNManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sunflower/FSNManager;->o()V

    return-void
.end method
