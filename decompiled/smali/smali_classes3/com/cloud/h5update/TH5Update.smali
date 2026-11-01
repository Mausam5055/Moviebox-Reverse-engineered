.class public final Lcom/cloud/h5update/TH5Update;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/h5update/TH5Update$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/cloud/h5update/TH5Update$a;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:I

.field private static volatile g:Z

.field private static h:Z

.field private static i:Ljava/util/concurrent/ConcurrentHashMap;

.field private static j:Ljava/lang/String;

.field private static k:Lt6/b;

.field private static final l:Lkotlin/Lazy;


# instance fields
.field private a:Landroid/app/Application;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/h5update/TH5Update$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/h5update/TH5Update$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/h5update/TH5Update;->c:Lcom/cloud/h5update/TH5Update$a;

    const-string v0, ""

    sput-object v0, Lcom/cloud/h5update/TH5Update;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/cloud/h5update/TH5Update;->i:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/cloud/h5update/TH5Update$Companion$get$2;->INSTANCE:Lcom/cloud/h5update/TH5Update$Companion$get$2;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/h5update/TH5Update;->l:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/h5update/TH5Update;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/h5update/TH5Update;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/TH5Update;->l:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/TH5Update;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/TH5Update;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/cloud/h5update/TH5Update;->h:Z

    return v0
.end method

.method public static final synthetic e()Z
    .locals 1

    sget-boolean v0, Lcom/cloud/h5update/TH5Update;->g:Z

    return v0
.end method

.method public static final synthetic f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/TH5Update;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic g()Lt6/b;
    .locals 1

    sget-object v0, Lcom/cloud/h5update/TH5Update;->k:Lt6/b;

    return-object v0
.end method

.method public static final synthetic h(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/cloud/h5update/TH5Update;->d:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic i(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/cloud/h5update/TH5Update;->j:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic j(Z)V
    .locals 0

    sput-boolean p0, Lcom/cloud/h5update/TH5Update;->g:Z

    return-void
.end method

.method public static final synthetic k(Lt6/b;)V
    .locals 0

    sput-object p0, Lcom/cloud/h5update/TH5Update;->k:Lt6/b;

    return-void
.end method

.method private final m(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/app/h;->a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ln0/d;->a(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{\n            val locale\u2026cale!!.language\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lgg/b;->a:Lgg/b;

    invoke-virtual {v0, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method public static synthetic o(Lcom/cloud/h5update/TH5Update;Landroid/app/Application;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/Object;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v3, p8, 0x10

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    const-string v5, ""

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move v4, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move p4, v0

    move-object p5, v1

    move-object p6, v2

    move p7, v3

    move-object p8, v5

    move/from16 p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/cloud/h5update/TH5Update;->n(Landroid/app/Application;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method private final p(Ljava/lang/String;)Lcom/cloud/h5update/TH5Update;
    .locals 9

    iget-object v0, p0, Lcom/cloud/h5update/TH5Update;->a:Landroid/app/Application;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/tmc/network/HttpRequestor;->Companion:Lcom/tmc/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v1

    const/4 v8, 0x3

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/cloud/h5update/TH5Update;->a:Landroid/app/Application;

    iget v3, p0, Lcom/cloud/h5update/TH5Update;->b:I

    if-ne v3, v8, :cond_1

    sget-object v3, Lcom/transsion/api/gateway/config/WorkMode;->MODE_TEST:Lcom/transsion/api/gateway/config/WorkMode;

    :goto_0
    move-object v4, v3

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    sget-object v3, Lcom/transsion/api/gateway/config/WorkMode;->MODE_ONLINE:Lcom/transsion/api/gateway/config/WorkMode;

    goto :goto_0

    :goto_1
    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/tmc/network/HttpRequestor;->init$default(Lcom/tmc/network/HttpRequestor;Landroid/content/Context;Ljava/lang/String;Lcom/transsion/api/gateway/config/WorkMode;Lcom/tmc/network/ProgressListener;ILjava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/cloud/h5update/TH5Update;->a:Landroid/app/Application;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mApplication!!.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/cloud/h5update/TH5Update;->m(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tmc/network/HttpRequestor;->setLanguage(Ljava/lang/String;)V

    :cond_3
    sget-object p1, Lcom/cloud/h5update/TH5Update;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/h5update/TH5Update;->a:Landroid/app/Application;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    sput-object p1, Lcom/cloud/h5update/TH5Update;->d:Ljava/lang/String;

    :cond_5
    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v1, Lcom/cloud/h5update/TH5Update;->d:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object v2, Lcom/cloud/h5update/TH5Update;->e:Ljava/lang/String;

    sget v3, Lcom/cloud/h5update/TH5Update;->f:I

    invoke-virtual {p1, v1, v2, v3}, Lcom/tmc/network/HttpRequestor;->setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "api.sunnbird.com"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "api.test.sunnbird.com"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "api.pre.sunnbird.com"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$Companion;->getInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tmc/network/HttpRequestor;->setGateWayActivateSignConfig(Ljava/util/List;Ljava/util/List;)V

    :cond_7
    sget-object p1, Lgg/b;->a:Lgg/b;

    iget v0, p0, Lcom/cloud/h5update/TH5Update;->b:I

    if-ne v0, v8, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lgg/b;->h(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    sget-object v0, Lgg/b;->a:Lgg/b;

    invoke-virtual {v0, p1}, Lgg/b;->e(Ljava/lang/Throwable;)V

    :goto_5
    return-object p0
.end method

.method static synthetic q(Lcom/cloud/h5update/TH5Update;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/h5update/TH5Update;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Lp84tK50u1uwuN3zNQ"

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/h5update/TH5Update;->p(Ljava/lang/String;)Lcom/cloud/h5update/TH5Update;

    move-result-object p0

    return-object p0
.end method

.method private final s()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/h5update/TH5Update;->a:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ExceptionInInitializerError;

    const-string v1, "\u8bf7\u5148\u5728\u5168\u5c40Application\u4e2d\u8c03\u7528 TUpdate.get().init() \u521d\u59cb\u5316\uff01"

    invoke-direct {v0, v1}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final l()Landroid/app/Application;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/h5update/TH5Update;->s()V

    iget-object v0, p0, Lcom/cloud/h5update/TH5Update;->a:Landroid/app/Application;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final n(Landroid/app/Application;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/h5update/TH5Update;->a:Landroid/app/Application;

    sput-object p3, Lcom/cloud/h5update/TH5Update;->d:Ljava/lang/String;

    sput-object p6, Lcom/cloud/h5update/TH5Update;->e:Ljava/lang/String;

    sput p7, Lcom/cloud/h5update/TH5Update;->f:I

    sput-boolean p5, Lcom/cloud/h5update/TH5Update;->h:Z

    sget-object p3, Lcom/cloud/h5update/utils/j;->a:Lcom/cloud/h5update/utils/j;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    const-string p6, "application.applicationContext"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Lcom/cloud/h5update/utils/j;->f(Landroid/content/Context;)V

    sget-object p3, Lcom/cloud/h5update/download/DownloadManager;->g:Lcom/cloud/h5update/download/DownloadManager$a;

    invoke-virtual {p3}, Lcom/cloud/h5update/download/DownloadManager$a;->a()Lcom/cloud/h5update/download/DownloadManager;

    move-result-object p3

    const/4 p5, 0x0

    const/4 p6, 0x2

    const/4 p7, 0x0

    invoke-static {p3, p1, p5, p6, p7}, Lcom/cloud/h5update/download/DownloadManager;->k(Lcom/cloud/h5update/download/DownloadManager;Landroid/content/Context;IILjava/lang/Object;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-static {p0, p7, p1, p7}, Lcom/cloud/h5update/TH5Update;->q(Lcom/cloud/h5update/TH5Update;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/h5update/TH5Update;

    :cond_0
    if-nez p4, :cond_1

    sget-object p1, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    invoke-virtual {p1}, Lcom/cloud/h5update/utils/l;->f()Ljava/lang/String;

    move-result-object p4

    :cond_1
    sput-object p4, Lcom/cloud/h5update/TH5Update;->j:Ljava/lang/String;

    return-void
.end method

.method public final r(I)Lcom/cloud/h5update/TH5Update;
    .locals 1

    iput p1, p0, Lcom/cloud/h5update/TH5Update;->b:I

    sget-object v0, Lcom/cloud/h5update/a;->a:Lcom/cloud/h5update/a;

    invoke-virtual {v0, p1}, Lcom/cloud/h5update/a;->b(I)V

    return-object p0
.end method
