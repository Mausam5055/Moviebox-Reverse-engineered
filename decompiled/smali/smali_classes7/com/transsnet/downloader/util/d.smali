.class public final Lcom/transsnet/downloader/util/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/util/d;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/util/d;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/d;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/util/d;->a:Lcom/transsnet/downloader/util/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/util/d;->n(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/util/d;->g(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/util/d;->h(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsnet/downloader/util/d;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/util/d;->e(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final g(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p0, Lcom/transsnet/downloader/util/d;->a:Lcom/transsnet/downloader/util/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/util/d;->l(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_0

    sget-object p0, Lbf/c;->a:Lbf/c;

    invoke-virtual {p0, p1}, Lbf/c;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static synthetic m(Lcom/transsnet/downloader/util/d;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/util/d;->l(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final n(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final d()V
    .locals 8

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v5, "key_showed_times"

    invoke-virtual {v2, v5, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-virtual {v1, v5, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "key_show_last_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "pageFrom"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    const-string v5, "key_show_last_time"

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v8

    const-string v9, "key_showed_times"

    invoke-virtual {v8, v9, v6, v7}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    sget-object v8, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v8}, Lsm/f$a;->a()Lsm/f;

    move-result-object v12

    const-string v13, "key_total_show_times"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v12

    const-wide/16 v15, 0x3

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-static {v12}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_0

    :cond_0
    move-wide v12, v15

    :goto_0
    cmp-long v17, v12, v6

    if-gtz v17, :cond_1

    goto :goto_1

    :cond_1
    move-wide v15, v12

    :goto_1
    invoke-virtual {v8}, Lsm/f$a;->a()Lsm/f;

    move-result-object v8

    const-string v12, "sb_battery_interval_day"

    invoke-virtual {v8, v12, v14}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v8

    const/16 v12, 0xa

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {v8}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    :cond_2
    move v8, v12

    :goto_2
    if-gtz v8, :cond_3

    goto :goto_3

    :cond_3
    move v12, v8

    :goto_3
    invoke-static {v4, v5}, Lcom/blankj/utilcode/util/c0;->f(J)Z

    move-result v8

    invoke-static {}, Lcom/transsion/baseui/util/TimeUtilKt;->c()I

    move-result v13

    invoke-static {v4, v5}, Lcom/transsion/baseui/util/TimeUtilKt;->d(J)I

    move-result v4

    sub-int/2addr v13, v4

    if-le v13, v12, :cond_4

    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-virtual {v3, v9, v6, v7}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    :cond_4
    move-wide v6, v10

    :goto_4
    if-nez v8, :cond_7

    cmp-long v3, v15, v6

    if-lez v3, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/transsnet/downloader/util/d;->j(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/transsnet/downloader/dialog/RequestAuthorizationDialog;->g:Lcom/transsnet/downloader/dialog/RequestAuthorizationDialog$a;

    invoke-virtual {v3}, Lcom/transsnet/downloader/dialog/RequestAuthorizationDialog$a;->a()Lcom/transsnet/downloader/dialog/RequestAuthorizationDialog;

    move-result-object v3

    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v5, Lcom/transsnet/downloader/util/b;

    invoke-direct {v5, v4, v0, v1, v2}, Lcom/transsnet/downloader/util/b;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3, v5}, Lcom/transsnet/downloader/dialog/RequestAuthorizationDialog;->t0(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v3}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_5
    new-instance v1, Lcom/transsnet/downloader/util/c;

    invoke-direct {v1, v4, v0}, Lcom/transsnet/downloader/util/c;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/transsion/baseui/dialog/BaseDialog;->j0(Landroid/content/DialogInterface$OnDismissListener;)V

    sget-object v1, Lbf/c;->a:Lbf/c;

    const-string v2, "authorization_dialog"

    invoke-virtual {v1, v3, v2}, Lbf/c;->b(Lcom/transsion/baseui/dialog/BaseDialog;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3, v0, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_8

    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    invoke-interface/range {p3 .. p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_8
    :goto_5
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 7

    const-string v0, "pageFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/transsnet/downloader/util/d;->a:Lcom/transsnet/downloader/util/d;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsnet/downloader/util/d;->f(Lcom/transsnet/downloader/util/d;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/PowerManager;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p1

    sget-boolean v0, Lcom/transsnet/downloader/util/d;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery_opt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v3, "app_perf"

    invoke-virtual {v1, v2, v3, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsnet/downloader/util/d;->b:Z

    :cond_0
    return p1
.end method

.method public final k(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "action"

    const-string v1, "system_battery_page_show"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lhj/i;->a:Lhj/i;

    const-string v1, "download_authorization"

    invoke-virtual {v0, v1, p1}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final l(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pageFrom"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p1, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->a:Lcom/transsion/baselib/utils/ActivityPermissionUtil;

    const-string v0, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Lcom/transsnet/downloader/util/a;

    invoke-direct {v2, p3}, Lcom/transsnet/downloader/util/a;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/16 p3, 0x2b5d

    invoke-virtual {p1, v0, v1, p3, v2}, Lcom/transsion/baselib/utils/ActivityPermissionUtil;->d(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p3, "action"

    const-string v0, "system_dialog_show"

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "page_from"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lhj/i;->a:Lhj/i;

    const-string p3, "download_authorization"

    invoke-virtual {p2, p3, p1}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
