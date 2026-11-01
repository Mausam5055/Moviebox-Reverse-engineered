.class public abstract Lwv/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/transsion/upgradesdk/bean/UpgradeData;)Z
    .locals 20

    const-string v0, "KV_UPGRADE_LAST_TARGET_VERSION"

    const-string v1, "upgradeSdkLog"

    const-string v2, "msg"

    const-string v3, "tag"

    const-string v4, "ValidateCheckUtils"

    const-string v5, "key"

    const-string v6, "filter  ->> \u76ee\u6807\u7248\u672c\u53d8\u5316\uff0c\u91cd\u7f6e\u5f39\u7a97\u6b21\u6570\u3002last="

    const-string v7, "upgradeData"

    move-object/from16 v8, p0

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->isForceUpdate()Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    return v9

    :cond_0
    const/4 v11, 0x0

    const-wide/16 v12, 0x1388

    :try_start_0
    sget-object v7, Lbw/i;->b:Lbw/h;

    sget-object v16, Lxv/a;->a:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v17, "application"

    if-eqz v16, :cond_1

    move-object/from16 v10, v16

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v7, v10}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v10

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v10, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    const-wide/16 v14, 0x0

    if-eqz v10, :cond_2

    invoke-virtual {v10, v0, v14, v15}, Lcom/tencent/mmkv/MMKV;->h(Ljava/lang/String;J)J

    move-result-wide v14

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersion()J

    move-result-wide v18

    cmp-long v10, v14, v18

    if-eqz v10, :cond_e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", current="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersion()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-boolean v6, Lbw/g;->a:Z

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    sget-wide v18, Lbw/g;->b:J

    sub-long v18, v14, v18

    cmp-long v10, v18, v12

    if-gez v10, :cond_4

    goto :goto_1

    :cond_4
    sput-wide v14, Lbw/g;->b:J

    const/4 v6, 0x3

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5

    sput-boolean v9, Lbw/g;->a:Z

    :cond_5
    sget-boolean v6, Lbw/g;->a:Z

    :goto_1
    sget-object v10, Lyv/f;->o:Lyv/d;

    invoke-virtual {v10}, Lyv/d;->a()Lyv/f;

    move-result-object v10

    iget-boolean v10, v10, Lyv/f;->d:Z

    sget-object v6, Lxv/a;->a:Landroid/app/Application;

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v7, v6}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->getPkgVersion()J

    move-result-wide v14

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v6, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v6, :cond_7

    invoke-virtual {v6, v0, v14, v15}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;J)Z

    :cond_7
    sget-object v0, Lxv/a;->a:Landroid/app/Application;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v7, v0}, Lbw/h;->a(Landroid/content/Context;)Lbw/i;

    move-result-object v0

    const-string v6, "KV_UPGRADE_POPUP_TIMES"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lbw/i;->a:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v6, v11}, Lcom/tencent/mmkv/MMKV;->s(Ljava/lang/String;I)Z

    :cond_9
    const-string v0, "reset_target_version"

    const/16 v5, 0x18

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v10, 0x0

    invoke-static {v6, v7, v0, v10, v5}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    const-string v0, "\u76ee\u6807\u7248\u672c\u9891\u63a7\u68c0\u67e5\u5f02\u5e38"

    invoke-static {v4, v3, v0, v2}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    sget-boolean v7, Lbw/g;->a:Z

    if-eqz v7, :cond_a

    goto :goto_4

    :cond_a
    sget-wide v14, Lbw/g;->b:J

    sub-long v14, v5, v14

    cmp-long v10, v14, v12

    if-gez v10, :cond_b

    goto :goto_4

    :cond_b
    sput-wide v5, Lbw/g;->b:J

    const/4 v5, 0x3

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    sput-boolean v9, Lbw/g;->a:Z

    :cond_c
    sget-boolean v7, Lbw/g;->a:Z

    :goto_4
    sget-object v5, Lyv/f;->o:Lyv/d;

    invoke-virtual {v5}, Lyv/d;->a()Lyv/f;

    move-result-object v5

    iget-boolean v5, v5, Lyv/f;->d:Z

    if-nez v5, :cond_d

    if-eqz v7, :cond_e

    :cond_d
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkDialogPopInterval()Z

    move-result v0

    const/4 v5, 0x6

    if-nez v0, :cond_f

    const-string v0, "1"

    const/16 v1, 0x18

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v5, v0, v3, v1}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    return v11

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/upgradesdk/bean/UpgradeData;->checkDialogPopTimes()Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "filter  ->> \u5f39\u7a97\u6b21\u6570"

    invoke-static {v4, v3, v0, v2}, Lvv/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sget-boolean v0, Lbw/g;->a:Z

    if-eqz v0, :cond_10

    goto :goto_6

    :cond_10
    sget-wide v6, Lbw/g;->b:J

    sub-long v6, v2, v6

    cmp-long v4, v6, v12

    if-gez v4, :cond_11

    goto :goto_6

    :cond_11
    sput-wide v2, Lbw/g;->b:J

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    sput-boolean v9, Lbw/g;->a:Z

    :cond_12
    sget-boolean v0, Lbw/g;->a:Z

    :goto_6
    sget-object v1, Lyv/f;->o:Lyv/d;

    invoke-virtual {v1}, Lyv/d;->a()Lyv/f;

    move-result-object v1

    iget-boolean v1, v1, Lyv/f;->d:Z

    const-string v0, "2"

    const/16 v1, 0x18

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v5, v0, v3, v1}, Lbw/l;->a(IILjava/lang/String;Ljava/lang/String;I)V

    return v11

    :cond_13
    return v9
.end method
