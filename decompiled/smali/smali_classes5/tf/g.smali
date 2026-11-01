.class public Ltf/g;
.super Ltf/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltf/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/tinker/lib/service/PatchResult;)Z
    .locals 27

    move-object/from16 v7, p1

    const/4 v8, 0x1

    invoke-static/range {p1 .. p1}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    move-object/from16 v1, p2

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lvf/a;->t()Z

    move-result v1

    const-string v11, "Tinker.UpgradePatch"

    const/4 v12, 0x0

    if-eqz v1, :cond_16

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnableWithSharedPreferences(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-static {v10}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "UpgradePatch tryPatch:patch file is not found, just return"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_1
    new-instance v13, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;

    invoke-direct {v13, v7}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lvf/a;->l()I

    move-result v1

    invoke-static {v7, v1, v10, v13}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->checkTinkerPackage(Landroid/content/Context;ILjava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "UpgradePatch tryPatch:onPatchPackageCheckFail"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-interface {v0, v10, v1}, Luf/d;->b(Ljava/io/File;I)V

    return v12

    :cond_2
    invoke-static {v10}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v0, "UpgradePatch tryPatch:patch md5 is null, just return"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_3
    move-object/from16 v5, p4

    iput-object v6, v5, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    const-string v1, "UpgradePatch tryPatch:patchMd5:%s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v6, v2, v12

    invoke-static {v11, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Lvf/a;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v13}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getPackagePropertiesIfPresent()Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v0, "UpgradePatch packageProperties is null, do we process a valid patch apk ?"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_4
    const-string v14, "is_protected_app"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "0"

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    move/from16 v17, v8

    goto :goto_0

    :cond_5
    move/from16 v17, v12

    :goto_0
    const-string v14, "use_custom_file_patch"

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_6

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move/from16 v23, v8

    goto :goto_1

    :cond_6
    move/from16 v23, v12

    :goto_1
    invoke-static {v3, v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->readAndCheckPropertyWithLock(Ljava/io/File;Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    if-eqz v14, :cond_d

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    if-eqz v14, :cond_d

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oatDir:Ljava/lang/String;

    if-nez v14, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-static {v6}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    const-string v0, "UpgradePatch tryPatch:onPatchVersionCheckFail md5 %s is valid"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v12

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-interface {v0, v10, v2, v6}, Luf/d;->g(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;)V

    return v12

    :cond_8
    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oatDir:Ljava/lang/String;

    const-string v15, "interpet"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    iget-object v15, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-static {v15}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    iget-object v15, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    iget-object v15, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iget-object v0, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "patch already applied, md5: %s"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v6, v1, v12

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lwf/c;->b(Landroid/content/Context;)Lwf/c;

    move-result-object v0

    invoke-virtual {v0, v6}, Lwf/c;->d(Ljava/lang/String;)Z

    return v8

    :cond_9
    if-eqz v14, :cond_a

    const-string v0, "changing"

    :goto_2
    move-object/from16 v21, v0

    goto :goto_3

    :cond_a
    iget-object v0, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oatDir:Ljava/lang/String;

    goto :goto_2

    :goto_3
    iget-object v0, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iput-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/io/File;)Z

    :cond_b
    iget-object v0, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ""

    :goto_4
    move-object/from16 v19, v0

    goto :goto_5

    :cond_c
    iget-object v0, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    goto :goto_4

    :goto_5
    new-instance v0, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v15, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    sget-object v20, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/16 v22, 0x0

    move-object v14, v0

    move-object/from16 v16, v6

    move/from16 v18, v23

    invoke-direct/range {v14 .. v22}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    :cond_d
    :goto_6
    const-string v0, "UpgradePatch tryPatch:onPatchInfoCorrupted"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v1, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-interface {v0, v10, v1, v2}, Luf/d;->c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_e
    new-instance v0, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    sget-object v20, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v21, "odex"

    const/16 v22, 0x0

    const-string v15, ""

    const-string v19, ""

    move-object v14, v0

    move-object/from16 v16, v6

    move/from16 v18, v23

    invoke-direct/range {v14 .. v22}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_7
    invoke-static {v6}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v0, "UpgradePatch tryPatch:patchVersionDirectory:%s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v15, v2, v12

    invoke-static {v11, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {v10, v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    const-string v0, "UpgradePatch copy patch file, src file: %s size: %d, dest file: %s size:%d"

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x4

    :try_start_1
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v12

    const/4 v1, 0x1

    aput-object v16, v8, v1

    const/4 v1, 0x2

    aput-object v17, v8, v1

    const/4 v1, 0x3

    aput-object v18, v8, v1

    invoke-static {v11, v0, v8}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-object v8, v2

    const/4 v0, 0x1

    goto/16 :goto_9

    :catch_1
    move v0, v8

    move-object v8, v2

    goto/16 :goto_9

    :cond_f
    :goto_8
    move-object v0, v9

    move-object v1, v13

    move-object v8, v2

    move-object/from16 v2, p1

    move-object/from16 v24, v3

    move-object v3, v15

    move-object/from16 v25, v4

    move-object v4, v8

    move/from16 v5, p3

    move-object/from16 v26, v6

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v6}, Ltf/d;->m(Lvf/a;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "UpgradePatch tryPatch:new patch recover, try patch dex failed"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_10
    invoke-static {v9, v13, v7, v15, v8}, Ltf/b;->e(Lvf/a;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_11

    return v12

    :cond_11
    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, p1

    move-object v3, v15

    move-object v4, v8

    move/from16 v5, v23

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v6}, Ltf/f;->e(Lvf/a;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "UpgradePatch tryPatch:new patch recover, try patch library failed"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_12
    move-object v0, v9

    move-object v1, v13

    move-object/from16 v2, p1

    move-object v3, v15

    move-object v4, v8

    move/from16 v5, v23

    move-object/from16 v6, p4

    invoke-static/range {v0 .. v6}, Ltf/e;->f(Lvf/a;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "UpgradePatch tryPatch:new patch recover, try patch resource failed"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_13
    invoke-static {v10, v9}, Ltf/d;->n(Ljava/io/File;Lvf/a;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "UpgradePatch tryPatch:new patch recover, check dex opt file failed"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12

    :cond_14
    move-object/from16 v1, v24

    move-object/from16 v0, v25

    invoke-static {v1, v14, v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "UpgradePatch tryPatch:new patch recover, rewrite patch info failed"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v1, v14, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iget-object v2, v14, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-interface {v0, v10, v1, v2}, Luf/d;->c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_15
    invoke-static/range {p1 .. p1}, Lwf/c;->b(Landroid/content/Context;)Lwf/c;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lwf/c;->d(Ljava/lang/String;)Z

    const-string v0, "UpgradePatch tryPatch: done, it is ok"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :goto_9
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v12

    aput-object v2, v3, v0

    const-string v1, "UpgradePatch tryPatch:copy patch file fail from %s to %s"

    invoke-static {v11, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Lvf/a;->k()Luf/d;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v10, v8, v2, v0}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    return v12

    :cond_16
    :goto_a
    const-string v0, "UpgradePatch tryPatch:patch is disabled, just return"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v12
.end method
