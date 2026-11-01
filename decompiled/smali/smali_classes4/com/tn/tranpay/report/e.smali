.class public final Lcom/tn/tranpay/report/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tn/tranpay/report/e;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Lcom/tn/tranpay/report/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/tranpay/report/e;

    invoke-direct {v0}, Lcom/tn/tranpay/report/e;-><init>()V

    sput-object v0, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    const-string v0, ""

    sput-object v0, Lcom/tn/tranpay/report/e;->b:Ljava/lang/String;

    const/16 v0, 0xde8

    sput v0, Lcom/tn/tranpay/report/e;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/tn/tranpay/report/e;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    sget-object v0, Lcom/tn/tranpay/report/e;->d:Lcom/tn/tranpay/report/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/tn/tranpay/report/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final d(Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JSONObject(map).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    sget-object v0, Lcom/tn/tranpay/report/ThreadSingleExecutor;->b:Lcom/tn/tranpay/report/ThreadSingleExecutor$a;

    invoke-virtual {v0}, Lcom/tn/tranpay/report/ThreadSingleExecutor$a;->a()Lcom/tn/tranpay/report/ThreadSingleExecutor;

    move-result-object v0

    new-instance v1, Lcom/tn/tranpay/report/d;

    invoke-direct {v1, p1, p3, p2, p4}, Lcom/tn/tranpay/report/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/tn/tranpay/report/ThreadSingleExecutor;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, "$category"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$map"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lai/a;->a:Lai/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " event="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  pageName="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " map="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Report"

    invoke-virtual {v0, p0, v1}, Lai/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "page_name"

    invoke-virtual {p0, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    invoke-direct {v0, p3}, Lcom/tn/tranpay/report/e;->d(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ext"

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, p0}, Lcom/tn/tranpay/report/e;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {v0, p2, p1, p3}, Lcom/tn/tranpay/report/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final j(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

    invoke-virtual {v0}, Lcom/tn/tranpay/TranPay;->d()Landroid/app/Application;

    move-result-object v0

    const-string v1, "vaid"

    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tn/tranpay/report/e;->d:Lcom/tn/tranpay/report/f;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/tn/tranpay/report/f;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lyi/a;

    sget v1, Lcom/tn/tranpay/report/e;->c:I

    invoke-direct {v0, p1, v1}, Lyi/a;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lyi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lyi/a;

    move-result-object p2

    invoke-virtual {p2}, Lyi/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lai/a;->a:Lai/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exception "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Report"

    invoke-virtual {v0, p1, p2}, Lai/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final c(Landroid/app/Application;Ljava/lang/String;ZZLcom/tn/tranpay/report/f;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/tn/tranpay/report/e;->c:I

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1, p4}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    invoke-static {p3}, Lcom/transsion/ga/AthenaAnalytics;->d0(Z)V

    sput-object p5, Lcom/tn/tranpay/report/e;->d:Lcom/tn/tranpay/report/f;

    sget-object p1, Lai/a;->a:Lai/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "init athena debug "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Report"

    invoke-virtual {p1, p2, p3}, Lai/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string v0, "pageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportClick"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tn/tranpay/report/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final f(Lcom/tn/tranpay/report/c;)V
    .locals 5

    const-string v0, "logConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/tn/tranpay/report/e;->b:Ljava/lang/String;

    :cond_0
    const-string v2, "page_from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->h()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_load_success"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "ops"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pt"

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "reportPT"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/tn/tranpay/report/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lcom/tn/tranpay/report/e;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->f()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tn/tranpay/report/e;->b:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final g(Lcom/tn/tranpay/report/c;)V
    .locals 3

    const-string v0, "logConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/tn/tranpay/report/e;->b:Ljava/lang/String;

    :cond_0
    const-string v2, "page_from"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "ops"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pv"

    invoke-virtual {p1}, Lcom/tn/tranpay/report/c;->g()Ljava/util/HashMap;

    move-result-object p1

    const-string v2, "reportPV"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/tn/tranpay/report/e;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
