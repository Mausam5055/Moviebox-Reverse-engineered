.class public final Lcom/transsion/version/update/UpdateVersionRequest;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lkotlinx/coroutines/n0;

.field private final c:Lkotlin/Lazy;

.field private d:Lcom/transsion/version/update/RemoteVersionInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "update"

    iput-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->b:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/version/update/g;

    invoke-direct {v0}, Lcom/transsion/version/update/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/version/update/UpdateVersionRequest;->p(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/version/update/UpdateVersionRequest;->m(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Lcom/transsion/version/update/a;
    .locals 1

    invoke-static {}, Lcom/transsion/version/update/UpdateVersionRequest;->g()Lcom/transsion/version/update/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/version/update/UpdateVersionRequest;->n(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/version/update/UpdateVersionRequest;->o(Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)V

    return-void
.end method

.method private final f(Lcom/transsion/version/update/NoticeConfig;)Z
    .locals 19

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/version/update/NoticeConfig;->getNotifyTimes()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/version/update/NoticeConfig;->getNotifyInterval()F

    move-result v2

    float-to-long v2, v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x18

    :goto_1
    const-string v4, ""

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    move-object v5, v4

    :cond_3
    sget-object v6, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v7

    const-string v8, "showed_target_version_name"

    invoke-virtual {v7, v8, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v7

    const-string v8, "update_dialog_showed_times"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v7

    sget-object v16, Llg/a;->a:Llg/a$a;

    iget-object v11, v0, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkShowUpdateDialog \u4e4b\u524d\u5df2\u5c55\u793a\u7248\u672c "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "   \u8ba1\u5212\u7248\u672c "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " \u5df2\u5c55\u793a\u6b21\u6570 "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/16 v17, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v16

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v7, v9

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v6}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v6

    const-string v8, "update_dialog_show_timestamp"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v8, v10, v11}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const/16 v6, 0x3c

    int-to-long v12, v6

    mul-long v14, v2, v12

    mul-long/2addr v14, v12

    const/16 v6, 0x3e8

    int-to-long v12, v6

    mul-long/2addr v14, v12

    sub-long/2addr v4, v10

    cmp-long v4, v14, v4

    const/4 v5, 0x1

    if-gez v4, :cond_5

    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v9

    :goto_2
    if-ge v7, v1, :cond_6

    if-eqz v4, :cond_6

    move v9, v5

    :cond_6
    iget-object v11, v0, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkShowUpdateDialog \u68c0\u67e5\u7ed3\u679c\u4e3a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u63d0\u9192\u6b21\u6570 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u95f4\u9694\u65f6\u957f\u4e3a "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " \u5c0f\u65f6 \u95f4\u9694\u65f6\u957f\u662f\u5426\u5408\u683c "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v16

    invoke-static/range {v10 .. v15}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v9
.end method

.method private static final g()Lcom/transsion/version/update/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/version/update/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/version/update/a;

    return-object v0
.end method

.method private final i()Z
    .locals 4

    sget-object v0, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "NEW_USER_FIRST_LAUNCH"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return v1
.end method

.method private final j(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;)V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "action"

    const-string v2, "check"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/version/update/RemoteVersionInfo;->getHasUpdate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "check_result"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/transsion/version/update/RemoteVersionInfo;->getForceUpdate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "force_update"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "target_version_name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "page_from"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    invoke-virtual {p1, v0}, Lcom/transsion/version/update/e;->b(Ljava/util/Map;)V

    return-void
.end method

.method private final k(Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/transsion/version/update/dialog/UpdateDialog;->h:Lcom/transsion/version/update/dialog/UpdateDialog$a;

    new-instance v1, Lcom/transsion/version/update/i;

    invoke-direct {v1, p3, p2}, Lcom/transsion/version/update/i;-><init>(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;)V

    invoke-virtual {v0, p2, p4, v1}, Lcom/transsion/version/update/dialog/UpdateDialog$a;->a(Lcom/transsion/version/update/RemoteVersionInfo;ZLkotlin/jvm/functions/Function1;)Lcom/transsion/version/update/dialog/UpdateDialog;

    move-result-object p2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/transsion/version/update/f;->a(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "getSupportFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lcom/transsion/version/update/dialog/UpdateDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p2, p1, v2}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lfx/h;->g:Lfx/h$a;

    new-instance v1, Lcom/transsion/version/update/j;

    invoke-direct {v1, p3, p2}, Lcom/transsion/version/update/j;-><init>(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;)V

    invoke-virtual {v0, p1, p2, p4, v1}, Lfx/h$a;->a(Landroid/content/Context;Lcom/transsion/version/update/RemoteVersionInfo;ZLkotlin/jvm/functions/Function1;)Lfx/h;

    move-result-object p2

    invoke-static {p1}, Lie/h;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p2, p1}, Lck/j;->g(Landroid/app/Activity;)V

    :cond_5
    :goto_1
    sget-object p1, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    const-string p2, "mb"

    invoke-virtual {p1, p3, p4, p2, p5}, Lcom/transsion/version/update/e;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const-string p5, ""

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/version/update/UpdateVersionRequest;->k(Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private static final m(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 2

    sget-object v0, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    const-string v1, "mb"

    invoke-virtual {v0, p0, p2, v1}, Lcom/transsion/version/update/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance p2, Lhx/a;

    invoke-direct {p2}, Lhx/a;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p2, p0, v0, p1}, Lhx/a;->a(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/version/update/RemoteVersionInfo;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final n(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)Lkotlin/Unit;
    .locals 2

    sget-object v0, Lcom/transsion/version/update/e;->a:Lcom/transsion/version/update/e;

    const-string v1, "mb"

    invoke-virtual {v0, p0, p2, v1}, Lcom/transsion/version/update/e;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance p2, Lhx/a;

    invoke-direct {p2}, Lhx/a;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p2, p0, v0, p1}, Lhx/a;->a(Ljava/lang/String;Landroid/content/Context;Lcom/transsion/version/update/RemoteVersionInfo;)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final o(Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;Z)V
    .locals 14

    sget-object v0, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v0, ""

    goto :goto_0

    :goto_2
    sget-object v1, Lgx/a;->a:Lgx/a;

    new-instance v0, Lcom/transsion/version/update/h;

    move-object v6, v0

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/transsion/version/update/h;-><init>(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;Z)V

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lgx/a;->a(Ljava/lang/String;ZLandroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_3

    :cond_2
    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    move/from16 v10, p4

    invoke-static/range {v6 .. v13}, Lcom/transsion/version/update/UpdateVersionRequest;->l(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private static final p(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 1

    const-string v0, "errorMsg"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/transsion/version/update/UpdateVersionRequest;->k(Landroid/app/Activity;Lcom/transsion/version/update/RemoteVersionInfo;Ljava/lang/String;ZLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final h()Lcom/transsion/version/update/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/version/update/UpdateVersionRequest;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/version/update/a;

    return-object v0
.end method

.method public final q(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    move-object v8, p0

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;

    iget v2, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;

    invoke-direct {v1, p0, v0}, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;-><init>(Lcom/transsion/version/update/UpdateVersionRequest;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v2

    iget v3, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->label:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v10, :cond_1

    iget-boolean v2, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->Z$0:Z

    iget-object v3, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v2

    move-object v4, v3

    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/version/update/UpdateVersionRequest;->h()Lcom/transsion/version/update/a;

    move-result-object v0

    const-string v3, ""

    move-object v4, p1

    iput-object v4, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->L$0:Ljava/lang/Object;

    move-object v5, p2

    iput-object v5, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->L$1:Ljava/lang/Object;

    move/from16 v6, p5

    iput-boolean v6, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->Z$0:Z

    iput v10, v1, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$1;->label:I

    move-object/from16 v7, p3

    invoke-interface {v0, v7, v3, v1}, Lcom/transsion/version/update/a;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    return-object v2

    :cond_3
    move-object v3, v4

    move-object v4, v5

    :goto_1
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    const-string v2, "0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/transsion/version/update/RemoteVersionInfo;

    iput-object v5, v8, Lcom/transsion/version/update/UpdateVersionRequest;->d:Lcom/transsion/version/update/RemoteVersionInfo;

    invoke-direct {p0, v4, v5}, Lcom/transsion/version/update/UpdateVersionRequest;->j(Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;)V

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/transsion/version/update/RemoteVersionInfo;->getHasUpdate()Z

    move-result v0

    if-ne v0, v10, :cond_9

    invoke-virtual {v5}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/version/update/NoticeConfig;->getUpdateVersionCode()I

    move-result v0

    sget-object v1, Lcom/transsion/version/update/d;->a:Lcom/transsion/version/update/d;

    invoke-virtual {v1}, Lcom/transsion/version/update/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "target_version_code"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_5
    invoke-virtual {v5}, Lcom/transsion/version/update/RemoteVersionInfo;->getForceUpdate()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/transsion/version/update/UpdateVersionRequest;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, v8, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    const-string v2, "\u65b0\u7528\u6237\u9996\u6b21\u542f\u52a8\u4e0d\u5c55\u793a \u975e\u5f3a\u5236 \u66f4\u65b0\u5f39\u7a97"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object p1, v0

    move-object p2, v1

    move-object/from16 p3, v2

    move/from16 p4, v5

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    if-nez v6, :cond_7

    invoke-virtual {v5}, Lcom/transsion/version/update/RemoteVersionInfo;->getNoticeConfig()Lcom/transsion/version/update/NoticeConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/version/update/UpdateVersionRequest;->f(Lcom/transsion/version/update/NoticeConfig;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, v8, Lcom/transsion/version/update/UpdateVersionRequest;->a:Ljava/lang/String;

    const-string v2, "start \u5c55\u793a \u66f4\u65b0\u5f39\u7a97"

    const/4 v7, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object p1, v0

    move-object p2, v1

    move-object/from16 p3, v2

    move/from16 p4, v12

    move/from16 p5, v7

    move-object/from16 p6, v11

    invoke-static/range {p1 .. p6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v8, Lcom/transsion/version/update/UpdateVersionRequest;->b:Lkotlinx/coroutines/n0;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v11

    new-instance v12, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;

    const/4 v7, 0x0

    move-object v1, v12

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/version/update/UpdateVersionRequest$startCheckUpdate$3;-><init>(Lcom/transsion/version/update/UpdateVersionRequest;Landroid/app/Activity;Ljava/lang/String;Lcom/transsion/version/update/RemoteVersionInfo;ZLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object p1, v0

    move-object p2, v11

    move-object/from16 p3, v3

    move-object/from16 p4, v12

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_8
    :goto_3
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
