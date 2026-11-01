.class public final Lcom/transsion/baselib/report/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/baselib/report/h;

.field private static b:Ljava/lang/String;

.field private static c:J

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/baselib/report/h;

    invoke-direct {v0}, Lcom/transsion/baselib/report/h;-><init>()V

    sput-object v0, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    const-string v0, "cold"

    sput-object v0, Lcom/transsion/baselib/report/h;->b:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/baselib/report/h;->c:J

    const-string v0, ""

    sput-object v0, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    sput-object v0, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(J)I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    mul-int/lit16 p2, p2, 0x2710

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr p2, v1

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method private final d(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "launch"

    return-object p1

    :cond_0
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    invoke-virtual {v0, p1}, Lcom/transsion/baselib/helper/b;->c(Landroid/net/Uri;)Lcom/transsion/baselib/helper/ReferrerBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmSource()Ljava/lang/String;

    move-result-object p1

    const-string v0, "push"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "deeplink"

    :goto_0
    return-object v0
.end method

.method private final g(J)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "source"

    sget-object v2, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channel"

    sget-object v2, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duration"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string p2, "app_stop"

    invoke-virtual {p1, p2, v0}, Lhj/i;->t(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final h(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/baselib/report/h;->f:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/transsion/baselib/report/h;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    sget-object v1, Lcom/transsion/baselib/report/h;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/helper/b;->c(Landroid/net/Uri;)Lcom/transsion/baselib/helper/ReferrerBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmSource()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    sput-object v0, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/baselib/report/h;->f:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source"

    sget-object v1, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "channel"

    sget-object v1, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string v1, "app_start"

    invoke-virtual {p1, v1, v0}, Lhj/i;->t(Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    const-string v2, "launch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "app_launch_channel"

    invoke-virtual {p1, v1, v0}, Lhj/i;->t(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/baselib/report/h;->j(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final j(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "k_open_day_count"

    const-string v5, "k_last_open_time"

    :try_start_0
    sget-object v6, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v7

    const-string v8, "k_last_open_channel"

    invoke-virtual {v7, v8, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v5, v8}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v7}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    :goto_0
    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v9

    invoke-virtual {v9, v4, v3}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-direct {v0, v7, v8}, Lcom/transsion/baselib/report/h;->a(J)I

    move-result v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v0, v10, v11}, Lcom/transsion/baselib/report/h;->a(J)I

    move-result v8

    sub-int v10, v8, v7

    if-ne v10, v2, :cond_1

    add-int/2addr v9, v2

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v10

    invoke-virtual {v10, v4, v9}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v11, Llg/a;->a:Llg/a$a;

    const-string v12, "ReportLaunchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "openDayCount:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", lastDay:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", curDay:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v4, Lhj/i;->a:Lhj/i;

    const-string v7, "app_fg_alive"

    const-string v8, "app_perf"

    const-string v9, "source"

    sget-object v10, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const-string v10, "channel"

    invoke-static {v10, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v10, 0x2

    new-array v10, v10, [Lkotlin/Pair;

    aput-object v9, v10, v3

    aput-object v1, v10, v2

    invoke-static {v10}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v4, v7, v8, v1}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v6}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "k_last_open_version"

    invoke-static {}, Lcom/transsion/core/utils/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/h;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "launch"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final f(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "warm"

    sput-object p1, Lcom/transsion/baselib/report/h;->b:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/baselib/report/h;->c:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/transsion/baselib/report/h;->g(J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/baselib/report/h;->c:J

    sget-object p1, Lcom/transsion/baselib/report/h;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/baselib/report/h;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "shortUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wholeUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/transsion/baselib/report/h;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    sget-object v2, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/helper/b;->c(Landroid/net/Uri;)Lcom/transsion/baselib/helper/ReferrerBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/baselib/helper/ReferrerBean;->getUtmSource()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    :cond_1
    sput-object v2, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "source"

    sget-object v4, Lcom/transsion/baselib/report/h;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "channel"

    sget-object v4, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "msgId"

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v0

    :cond_3
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "msg_type"

    if-eqz v1, :cond_5

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v1

    :cond_5
    :goto_1
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "url"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "surl"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string p2, "app_launch_channel"

    invoke-virtual {p1, p2, v2}, Lhj/i;->t(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/report/h;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/baselib/report/h;->j(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Landroid/net/Uri;)V
    .locals 0

    sput-object p1, Lcom/transsion/baselib/report/h;->f:Landroid/net/Uri;

    return-void
.end method
