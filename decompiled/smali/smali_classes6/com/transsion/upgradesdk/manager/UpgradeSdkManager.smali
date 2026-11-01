.class public Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
    .locals 2

    const-class v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    invoke-direct {v1}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;-><init>()V

    sput-object v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;->INSTANCE:Lcom/transsion/upgradesdk/manager/UpgradeSdkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public checkUpgradeTask(Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;)V
    .locals 10

    const-string v0, "check error"

    sget-object v1, Lyv/f;->o:Lyv/d;

    invoke-virtual {v1}, Lyv/d;->a()Lyv/f;

    move-result-object v1

    :try_start_0
    iput-object p1, v1, Lyv/f;->f:Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;

    iget-boolean v2, v1, Lyv/f;->h:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "Not Install Palm Store"

    invoke-interface {p1, v1}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x7

    invoke-static {v3, v4, v2, v2, v1}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_1
    const-string v5, "3"

    const/4 v8, 0x0

    const/16 v9, 0x74

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    invoke-virtual {v1}, Lyv/f;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v1, v3}, Lyv/f;->b(I)V

    goto :goto_1

    :cond_2
    iput-boolean v3, v1, Lyv/f;->l:Z

    invoke-virtual {v1, v2}, Lyv/f;->c(Ljava/util/List;)V

    :goto_1
    sget-object v1, Lzv/f;->f:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzv/f;

    invoke-virtual {v1}, Lzv/f;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Lcom/transsion/upgradesdk/manager/UpgradeInfoCallback;->onRequestFail(Ljava/lang/String;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public dismissUpgradeDialog()V
    .locals 1

    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    invoke-virtual {v0}, Lyv/f;->d()V

    return-void
.end method

.method public getUpgradeSdkCallback(Z)Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;
    .locals 2

    sget-object v0, Lyv/f;->o:Lyv/d;

    invoke-virtual {v0}, Lyv/d;->a()Lyv/f;

    move-result-object v0

    new-instance v1, Lyv/e;

    invoke-direct {v1, v0, p1}, Lyv/e;-><init>(Lyv/f;Z)V

    return-object v1
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Z)V
    .locals 11

    const-string v0, "key"

    const-string v1, "<set-?>"

    sget-object v2, Lyv/f;->o:Lyv/d;

    invoke-virtual {v2}, Lyv/d;->a()Lyv/f;

    move-result-object v3

    const-string v4, "init Finish: "

    :try_start_0
    const-string v5, "updatesdk"

    const/16 v6, 0x414

    const/4 v7, 0x0

    invoke-static {p1, v5, v6, v7, v7}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    const/16 v5, 0x18

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lxv/a;->a:Landroid/app/Application;

    iput-boolean p3, v3, Lyv/f;->d:Z

    invoke-static {p1}, Lbw/n;->f(Landroid/content/Context;)Lvv/b;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, v3, Lyv/f;->a:Lvv/b;

    invoke-virtual {v3}, Lyv/f;->e()Lvv/b;

    move-result-object p3

    iget-object p3, p3, Lvv/b;->a:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p1, "2"

    invoke-static {v8, v6, p1, v9, v5}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Lbw/n;->d()Z

    move-result p3

    if-nez p3, :cond_2

    iput-boolean v7, v3, Lyv/f;->h:Z

    const-string p1, "3"

    invoke-static {v8, v6, p1, v9, v5}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_2
    sget-object p3, Lbw/i;->b:Lbw/h;

    sget-object v5, Lxv/a;->a:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "application"

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v9

    :goto_0
    invoke-virtual {p3, v5}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v5

    const-string v10, "KV_UPGRADE_LAST_POP"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v5, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v10, v7}, Lcom/tencent/mmkv/MMKV;->d(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v7

    :goto_1
    iput-boolean v5, v3, Lyv/f;->c:Z

    sget-object v5, Lyv/c;->d:Lyv/a;

    invoke-virtual {v5}, Lyv/a;->a()Lyv/c;

    move-result-object v5

    invoke-virtual {v5, p1}, Lyv/c;->b(Landroid/content/Context;)V

    sget-object p1, Lxv/a;->a:Landroid/app/Application;

    if-eqz p1, :cond_5

    move-object v9, p1

    goto :goto_2

    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p3, v9}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object p1

    const-string p3, "KV_UPGRADE_IS_FORCE"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p3, v7}, Lcom/tencent/mmkv/MMKV;->d(Ljava/lang/String;Z)Z

    move-result v7

    :cond_6
    iput-boolean v7, v3, Lyv/f;->e:Z

    invoke-virtual {v3}, Lyv/f;->e()Lvv/b;

    move-result-object p1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p1, Lvv/b;->g:Ljava/lang/String;

    const-string p1, "UpgradeSdkManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lyv/f;->e()Lvv/b;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msg"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-boolean p3, Lbw/g;->a:Z

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    sget-wide v0, Lbw/g;->b:J

    sub-long v0, p1, v0

    const-wide/16 v4, 0x1388

    cmp-long v0, v0, v4

    if-gez v0, :cond_8

    goto :goto_3

    :cond_8
    sput-wide p1, Lbw/g;->b:J

    const-string p1, "upgradeSdkLog"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_9

    sput-boolean v8, Lbw/g;->a:Z

    :cond_9
    sget-boolean p3, Lbw/g;->a:Z

    :goto_3
    invoke-virtual {v2}, Lyv/d;->a()Lyv/f;

    move-result-object p1

    iget-boolean p1, p1, Lyv/f;->d:Z

    invoke-virtual {v3}, Lyv/f;->a()V

    goto :goto_5

    :cond_a
    :goto_4
    const-string p1, "1"

    invoke-static {v8, v6, p1, v9, v5}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_5
    return-void
.end method

.method public showUpgradeDialog(Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;)V
    .locals 24

    move-object/from16 v0, p1

    const-string v1, "dialogStyle"

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v3, Lyv/f;->o:Lyv/d;

    invoke-virtual {v3}, Lyv/d;->a()Lyv/f;

    move-result-object v3

    iget-boolean v4, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->isManualClick:Z

    iget-object v5, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->callback:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    iget v6, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->dialogStyle:I

    iget-object v7, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->cancelButtonTextColor:Ljava/lang/Integer;

    iget-object v0, v0, Lcom/transsion/upgradesdk/manager/UpgradeSdkManager$DialogParams;->confirmButtonTextColor:Ljava/lang/Integer;

    const-string v8, "\u521b\u5efa\u65b0\u7684\u5347\u7ea7\u5f39\u7a97V4\u5b9e\u4f8b\uff0c\u6837\u5f0f: "

    const-string v9, "\u521b\u5efa\u65b0\u7684\u5347\u7ea7\u5f39\u7a97\u5b9e\u4f8b\uff0c\u6837\u5f0f: "

    const-string v10, "\u8c03\u7528\u5f00\u59cb\u663e\u793a\u5347\u7ea7\u5f39\u7a97"

    const-string v11, "UpgradeSdkManager"

    invoke-static {v11, v10}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x4

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 p1, v11

    iget-wide v10, v3, Lyv/f;->n:J

    sub-long v10, v13, v10

    const-wide/16 v16, 0x1f4

    cmp-long v10, v10, v16

    if-gez v10, :cond_1

    const-string v0, "\u5347\u7ea7\u5f39\u7a97\u963b\u585e - \u5feb\u901f\u70b9\u51fb"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    move-object/from16 v10, p1

    iput-wide v13, v3, Lyv/f;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    const-string v11, "2"

    const-string v13, "1"

    if-eqz v4, :cond_2

    move-object v14, v13

    goto :goto_0

    :cond_2
    move-object v14, v11

    :goto_0
    :try_start_1
    sget-object v15, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    const/16 v22, 0x0

    const/16 v23, 0x64

    const/16 v16, 0x4

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-static/range {v16 .. v23}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v16

    if-eqz v16, :cond_3

    const-string v0, "\u5347\u7ea7\u5f39\u7a97\u963b\u585e - \u975e\u5f53\u524d\u9875\u9762\u663e\u793a"

    invoke-static {v10, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v12, v1, v13, v14, v15}, Lbw/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    goto/16 :goto_3

    :cond_3
    iget-boolean v13, v3, Lyv/f;->h:Z

    if-nez v13, :cond_4

    const-string v0, "3"

    const/4 v1, 0x3

    invoke-static {v12, v1, v0, v14, v15}, Lbw/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    goto/16 :goto_3

    :cond_4
    iput-object v5, v3, Lyv/f;->g:Lcom/transsion/upgradesdk/manager/UpgradeDialogCallback;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v5, v3, Lyv/f;->b:Lcom/transsion/upgradesdk/bean/UpgradeData;

    if-eqz v5, :cond_12

    iget-boolean v5, v3, Lyv/f;->e:Z

    if-nez v5, :cond_6

    iget-boolean v5, v3, Lyv/f;->c:Z

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x3

    invoke-static {v12, v5, v11, v14, v15}, Lbw/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    const-string v0, "\u65e0\u65b0\u7248\u672c\uff0c\u4e0d\u663e\u793a\u5347\u7ea7\u5f39\u7a97"

    invoke-static {v10, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    :goto_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v13, "isManualClick"

    invoke-virtual {v11, v13, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v11, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v4

    const-string v7, "cancelButtonTextColor"

    invoke-virtual {v11, v7, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const-string v4, "confirmButtonTextColor"

    invoke-virtual {v11, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_8
    instance-of v0, v2, Landroidx/fragment/app/FragmentActivity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "4"

    const-string v7, "\u5347\u7ea7\u5f39\u7a97  -  \u5df2\u5c55\u793a"

    const-string v13, "\u5347\u7ea7\u5f39\u7a97  -  \u5f00\u59cb\u5c55\u793a\u5347\u7ea7\u5f39\u7a97"

    const/4 v5, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_d

    :try_start_2
    iget-object v0, v3, Lyv/f;->i:Lcom/transsion/upgradesdk/page/f;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_9

    iget-object v0, v3, Lyv/f;->i:Lcom/transsion/upgradesdk/page/f;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-ne v0, v12, :cond_b

    :cond_9
    iget-object v0, v3, Lyv/f;->i:Lcom/transsion/upgradesdk/page/f;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_a
    iput-object v5, v3, Lyv/f;->i:Lcom/transsion/upgradesdk/page/f;

    new-instance v0, Lcom/transsion/upgradesdk/page/f;

    invoke-direct {v0}, Lcom/transsion/upgradesdk/page/f;-><init>()V

    iput-object v0, v3, Lyv/f;->i:Lcom/transsion/upgradesdk/page/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, v3, Lyv/f;->i:Lcom/transsion/upgradesdk/page/f;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v10, v13}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "getSupportFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/upgradesdk/page/f;->Z(Landroidx/fragment/app/FragmentManager;)V

    const/16 v22, 0x0

    const/16 v23, 0x64

    const/16 v16, 0x4

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-static/range {v16 .. v23}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    goto/16 :goto_3

    :cond_c
    invoke-static {v10, v7}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v2, v1, v4, v14, v15}, Lbw/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, v3, Lyv/f;->j:Law/i;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_e

    iget-object v0, v3, Lyv/f;->j:Law/i;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-ne v0, v12, :cond_10

    :cond_e
    iget-object v0, v3, Lyv/f;->j:Law/i;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_f
    iput-object v5, v3, Lyv/f;->j:Law/i;

    new-instance v0, Law/i;

    invoke-direct {v0}, Law/i;-><init>()V

    iput-object v0, v3, Lyv/f;->j:Law/i;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v0, v3, Lyv/f;->j:Law/i;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {v10, v13}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/16 v22, 0x0

    const/16 v23, 0x64

    const/16 v16, 0x4

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    invoke-static/range {v16 .. v23}, Lbw/l;->c(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    goto :goto_3

    :cond_11
    invoke-static {v10, v7}, Lbw/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v2, v1, v4, v14, v15}, Lbw/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/upgradesdk/bean/c;->c:Lcom/transsion/upgradesdk/bean/c;

    const-string v2, "5"

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-static {v4, v3, v2, v0, v1}, Lbw/l;->b(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/upgradesdk/bean/c;)V

    :catch_1
    :cond_12
    :goto_3
    return-void
.end method
