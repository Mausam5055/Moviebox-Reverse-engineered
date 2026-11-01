.class public abstract Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;,
        Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$LoadStatus;
    }
.end annotation


# direct methods
.method private static a(Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;)Lou/d;
    .locals 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;->bundleUrl:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Tinker.PatchInfoLoader"

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string p0, "patchInfo.bundleUrl must be HTTPS, skip: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {v4, p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_1
    iget-object v5, p0, Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;->tinkerId:Ljava/lang/String;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;->id:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hotfix_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;->id:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const-string v3, "hotfix_bff"

    :goto_0
    new-instance v6, Lou/d$b;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v3}, Lou/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lou/d$b;->y(Ljava/lang/String;)Lou/d$b;

    move-result-object v1

    iget-wide v5, p0, Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;->patchSize:J

    invoke-virtual {v1, v5, v6}, Lou/d$b;->x(J)Lou/d$b;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;->bundleMd5:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p0, p0, Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;->bundleMd5:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lou/d$b;->u(Ljava/lang/String;)Lou/d$b;

    :cond_4
    invoke-virtual {v1}, Lou/d$b;->q()Lou/d;

    move-result-object p0

    invoke-virtual {p0}, Lou/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lou/d;->j()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object v3, v5, v0

    const-string v0, "loaded pending patch: patchId=%s tinkerId=%s"

    invoke-static {v4, v0, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "patchInfo.tinkerId is empty, Tinker install will fail, skip"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_6
    :goto_2
    const-string p0, "patchInfo.bundleUrl is empty, skip"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method private static b(Landroid/content/Context;)J
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Ld7/a;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p0

    return-wide v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Tinker.PatchInfoLoader"

    const-string v0, "getVersionCode failed: %s"

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Tinker.PatchInfoLoader"

    :try_start_0
    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v3

    invoke-virtual {v3}, Lou/a;->F()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "isAbiExactMatch: patch.abiFilter=%s local.ndkFilter=%s matched=%b"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v0

    aput-object v3, v7, v1

    const/4 p0, 0x2

    aput-object v6, v7, p0

    invoke-static {v2, v5, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "isAbiExactMatch: ndkFilter not set in HotfixConfig, treat as matched"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p0, v3, v0

    const-string p0, "isAbiExactMatch failed: %s, treat as matched"

    invoke-static {v2, p0, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static d(Landroid/content/Context;)Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "Tinker.PatchInfoLoader"

    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v5

    invoke-virtual {v5}, Lou/a;->t()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    sget-object v6, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v6}, Lzg/c$a;->a()Lzg/c;

    move-result-object v6

    const-class v7, Lpu/a;

    invoke-virtual {v6, v7}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpu/a;

    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v7

    invoke-virtual {v7}, Lou/a;->u()Ljava/lang/String;

    move-result-object v7

    const-string v8, "loadPatchInfo: appPath=%s channel=%s"

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v5, v9, v2

    aput-object v7, v9, v1

    invoke-static {v4, v8, v9}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v5, v3, v7}, Lpu/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/d;

    move-result-object v5

    invoke-interface {v5}, Lretrofit2/d;->execute()Lretrofit2/j0;

    move-result-object v5

    invoke-virtual {v5}, Lretrofit2/j0;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/tinker/lib/custom/check/CheckUpdateResponse;

    if-eqz v5, :cond_c

    iget v6, v5, Lcom/transsion/tinker/lib/custom/check/CheckUpdateResponse;->code:I

    if-nez v6, :cond_c

    iget-object v5, v5, Lcom/transsion/tinker/lib/custom/check/CheckUpdateResponse;->data:Lcom/transsion/tinker/lib/custom/check/BffCheckUpdateData;

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v5, v5, Lcom/transsion/tinker/lib/custom/check/BffCheckUpdateData;->hotUpdates:Ljava/util/List;

    if-eqz v5, :cond_b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {p0}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader;->b(Landroid/content/Context;)J

    move-result-wide v6

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v5, 0x0

    move-object v8, v5

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v10, v9, Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;->targetVersionCode:J

    cmp-long v10, v10, v6

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_4
    iget-object v10, v9, Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;->abiFilter:Ljava/lang/String;

    if-nez v10, :cond_5

    move-object v10, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v5, :cond_2

    invoke-static {v9}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader;->a(Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;)Lou/d;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_6
    invoke-static {v10}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v9}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader;->a(Lcom/transsion/tinker/lib/custom/check/BffPatchInfo;)Lou/d;

    move-result-object v8

    if-eqz v8, :cond_2

    :cond_7
    if-eqz v8, :cond_8

    move-object v5, v8

    :cond_8
    if-eqz v5, :cond_a

    const-string p0, "check-update: selected patch patchId=%s (exactMatch=%b)"

    invoke-virtual {v5}, Lou/d;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v8, :cond_9

    move v6, v1

    goto :goto_2

    :cond_9
    move v6, v2

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    aput-object v6, v0, v1

    invoke-static {v4, p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->a(Lou/d;)Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, "check-update: no patch matched versionCode=%d, server revoked patch"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, p0, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->c()Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_3
    const-string p0, "check-update: hotUpdates empty, server revoked patch"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->c()Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_4
    const-string p0, "check-update: no valid response, treat as network error"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->b()Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "loadPatchInfo failed: %s"

    invoke-static {v4, p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;->b()Lcom/transsion/tinker/lib/custom/config/PatchInfoLoader$a;

    move-result-object p0

    return-object p0
.end method
