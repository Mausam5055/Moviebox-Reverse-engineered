.class public final Lcom/transsion/baselib/report/AppPeriodReport;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/f;


# static fields
.field public static final a:Lcom/transsion/baselib/report/AppPeriodReport;

.field private static b:Ljava/util/Timer;

.field private static c:Ljava/util/TimerTask;

.field private static final d:Z

.field private static e:J

.field private static f:Z

.field private static g:Ljava/lang/Long;

.field private static h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/baselib/report/AppPeriodReport;

    invoke-direct {v0}, Lcom/transsion/baselib/report/AppPeriodReport;-><init>()V

    sput-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->a:Lcom/transsion/baselib/report/AppPeriodReport;

    const-string v1, "app_period_report_debug"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/baselib/report/AppPeriodReport;->c(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/transsion/baselib/report/AppPeriodReport;->d:Z

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1388

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0x493e0

    :goto_0
    sput-wide v1, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/transsion/baselib/report/AppPeriodReport;->f:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x12c

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0xbb8

    :goto_1
    sput-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->h:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    return-wide v0
.end method

.method private final c(Ljava/lang/String;I)Z
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic e(Lcom/transsion/baselib/report/AppPeriodReport;Ljava/lang/Long;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/report/AppPeriodReport;->d(Ljava/lang/Long;Z)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 7

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "key_app_period_report"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    sget-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    :cond_1
    sput-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-wide v2, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event close period "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "AppPeriodReport"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    invoke-virtual {v0}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    sget-object v1, Lcom/transsion/baselib/report/AppPeriodReport;->a:Lcom/transsion/baselib/report/AppPeriodReport;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/baselib/report/AppPeriodReport;->f(Z)V

    sget-object v0, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    invoke-virtual {v0}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    sget-object v1, Lcom/transsion/baselib/report/AppPeriodReport;->a:Lcom/transsion/baselib/report/AppPeriodReport;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    return-void
.end method

.method public final d(Ljava/lang/Long;Z)V
    .locals 16

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    sget-wide v3, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v3, Lcom/transsion/baselib/report/AppPeriodReport;->g:Ljava/lang/Long;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/transsion/baselib/report/AppPeriodReport;->g:Ljava/lang/Long;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-wide v4, Lcom/transsion/baselib/report/AppPeriodReport;->h:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz p2, :cond_4

    const-string v1, "app_background"

    :goto_2
    move-object v6, v1

    goto :goto_3

    :cond_4
    const-string v1, "app_foreground"

    goto :goto_2

    :goto_3
    const-string v1, "0"

    const-string v2, "keyAliveOff"

    const-string v4, "alive_off"

    if-eqz p2, :cond_8

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v7}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v8

    const-string v9, "k_last_bg_alive_date"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    move-object v10, v8

    :goto_4
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v7}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v7

    invoke-virtual {v7, v9, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v5, Lhj/i;->a:Lhj/i;

    sget-object v7, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v7}, Lsm/f$a;->a()Lsm/f;

    move-result-object v7

    invoke-virtual {v7, v2, v0}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    :cond_6
    move-object v7, v1

    :cond_7
    invoke-static {v4, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-array v8, v0, [Lkotlin/Pair;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-static {v8}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "app_bg_alive"

    const-string v9, "app_perf"

    invoke-virtual {v5, v8, v9, v7}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    sget-object v10, Llg/a;->a:Llg/a$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "report event "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "AppPeriodReport"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sget-object v5, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v5}, Lsm/f$a;->a()Lsm/f;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move-object v1, v0

    :cond_a
    :goto_5
    invoke-virtual {v9, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lhj/i;->a:Lhj/i;

    const-string v5, ""

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual/range {v4 .. v9}, Lhj/i;->H(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public final f(Z)V
    .locals 8

    sget-wide v0, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-wide v2, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "close period "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "AppPeriodReport"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    :cond_0
    sget-object p1, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    :cond_1
    sget-object p1, Lcom/transsion/baselib/report/AppPeriodReport;->c:Ljava/util/TimerTask;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_2
    sget-object p1, Landroidx/lifecycle/g0;->i:Landroidx/lifecycle/g0$b;

    invoke-virtual {p1}, Landroidx/lifecycle/g0$b;->a()Landroidx/lifecycle/u;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    sget-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->a:Lcom/transsion/baselib/report/AppPeriodReport;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    return-void

    :cond_3
    sget-boolean v0, Lcom/transsion/baselib/report/AppPeriodReport;->f:Z

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/transsion/baselib/report/AppPeriodReport;->e(Lcom/transsion/baselib/report/AppPeriodReport;Ljava/lang/Long;ZILjava/lang/Object;)V

    :cond_4
    sput-boolean p1, Lcom/transsion/baselib/report/AppPeriodReport;->f:Z

    sget-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->c:Ljava/util/TimerTask;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_5
    sput-object v1, Lcom/transsion/baselib/report/AppPeriodReport;->c:Ljava/util/TimerTask;

    sget-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_6
    sget-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_7
    sput-object v1, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    new-instance v0, Lcom/transsion/baselib/report/AppPeriodReport$startTimer$$inlined$timerTask$1;

    invoke-direct {v0, p1}, Lcom/transsion/baselib/report/AppPeriodReport$startTimer$$inlined$timerTask$1;-><init>(Z)V

    sput-object v0, Lcom/transsion/baselib/report/AppPeriodReport;->c:Ljava/util/TimerTask;

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lcom/transsion/baselib/report/AppPeriodReport;->b:Ljava/util/Timer;

    if-eqz v2, :cond_8

    sget-object v3, Lcom/transsion/baselib/report/AppPeriodReport;->c:Ljava/util/TimerTask;

    sget-wide v6, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    move-wide v4, v6

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_8
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
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
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-wide v2, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStart "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "AppPeriodReport"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/baselib/report/AppPeriodReport;->g:Ljava/lang/Long;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/transsion/baselib/report/AppPeriodReport;->g:Ljava/lang/Long;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/baselib/report/AppPeriodReport;->f(Z)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/u;)V
    .locals 7

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-wide v2, Lcom/transsion/baselib/report/AppPeriodReport;->e:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStop "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "AppPeriodReport"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/baselib/report/AppPeriodReport;->f(Z)V

    return-void
.end method
