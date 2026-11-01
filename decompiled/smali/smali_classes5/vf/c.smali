.class public Lvf/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/io/File;

.field public h:Ljava/io/File;

.field public i:Ljava/io/File;

.field public j:Ljava/io/File;

.field public k:Ljava/io/File;

.field public l:Ljava/io/File;

.field public m:Ljava/util/HashMap;

.field public n:Ljava/util/HashMap;

.field public o:Ljava/util/HashMap;

.field public p:I

.field public q:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p1 .. p1}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentReturnCode(Landroid/content/Intent;)I

    move-result v3

    iput v3, v0, Lvf/c;->p:I

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchCostTime(Landroid/content/Intent;)J

    move-result-wide v3

    iput-wide v3, v0, Lvf/c;->q:J

    const-string v3, "intent_patch_system_ota"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lvf/c;->f:Z

    const-string v3, "intent_patch_oat_dir"

    invoke-static {v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lvf/c;->c:Ljava/lang/String;

    const-string v5, "interpet"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lvf/c;->e:Z

    invoke-virtual {v2}, Lvf/a;->r()Z

    move-result v3

    iget v5, v0, Lvf/c;->p:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v8, v0, Lvf/c;->f:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sget-object v15, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v9, v0, Lvf/c;->c:Ljava/lang/String;

    iget-boolean v10, v0, Lvf/c;->e:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v4

    const/4 v5, 0x1

    aput-object v6, v11, v5

    const/4 v6, 0x2

    aput-object v7, v11, v6

    const/4 v7, 0x3

    aput-object v8, v11, v7

    const/4 v8, 0x4

    aput-object v15, v11, v8

    const/4 v14, 0x5

    aput-object v9, v11, v14

    const/4 v13, 0x6

    aput-object v10, v11, v13

    const-string v12, "Tinker.TinkerLoadResult"

    const-string v9, "parseTinkerResult loadCode:%d, process name:%s, main process:%b, systemOTA:%b, fingerPrint:%s, oatDir:%s, useInterpretMode:%b"

    invoke-static {v12, v9, v11}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "intent_patch_old_version"

    invoke-static {v1, v9}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v9, "intent_patch_new_version"

    invoke-static {v1, v9}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lvf/a;->h()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v2}, Lvf/a;->i()Ljava/io/File;

    move-result-object v8

    if-eqz v11, :cond_2

    if-eqz v10, :cond_2

    if-eqz v3, :cond_0

    iput-object v10, v0, Lvf/c;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v11, v0, Lvf/c;->b:Ljava/lang/String;

    :goto_0
    iget-object v13, v0, Lvf/c;->b:Ljava/lang/String;

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v11, v14, v4

    aput-object v10, v14, v5

    aput-object v13, v14, v6

    const-string v13, "parseTinkerResult oldVersion:%s, newVersion:%s, current:%s"

    invoke-static {v12, v13, v14}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v13, v0, Lvf/c;->b:Ljava/lang/String;

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    new-instance v14, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v14, v0, Lvf/c;->g:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lvf/c;->g:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v13, v0, Lvf/c;->b:Ljava/lang/String;

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v0, Lvf/c;->h:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lvf/c;->g:Ljava/io/File;

    const-string v13, "dex"

    invoke-direct {v6, v7, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v0, Lvf/c;->i:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lvf/c;->g:Ljava/io/File;

    const-string v13, "lib"

    invoke-direct {v6, v7, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v0, Lvf/c;->j:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lvf/c;->g:Ljava/io/File;

    const-string v13, "res"

    invoke-direct {v6, v7, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v0, Lvf/c;->k:Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lvf/c;->k:Ljava/io/File;

    const-string v13, "resources.apk"

    invoke-direct {v6, v7, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, v0, Lvf/c;->l:Ljava/io/File;

    :cond_1
    const-string v6, "intent_is_protected_app"

    invoke-static {v1, v6, v4}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "intent_use_custom_patch"

    invoke-static {v1, v7, v4}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v13

    new-instance v7, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v14, v0, Lvf/c;->c:Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, ""

    move-object/from16 v20, v9

    move-object v9, v7

    move-object/from16 v21, v10

    move-object v10, v11

    move-object v4, v11

    move-object/from16 v11, v21

    move-object/from16 v22, v12

    move v12, v6

    const/4 v6, 0x6

    move-object/from16 v16, v14

    const/4 v6, 0x5

    move-object/from16 v14, v19

    move/from16 v17, v18

    invoke-direct/range {v9 .. v17}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v7, v0, Lvf/c;->a:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    move-object/from16 v7, v21

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v5

    iput-boolean v9, v0, Lvf/c;->d:Z

    goto :goto_1

    :cond_2
    move-object/from16 v20, v9

    move-object v7, v10

    move-object v4, v11

    move-object/from16 v22, v12

    move v6, v14

    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchException(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v9

    if-eqz v9, :cond_7

    iget v1, v0, Lvf/c;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Tinker load have exception loadCode:%d"

    move-object/from16 v10, v22

    invoke-static {v10, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, v0, Lvf/c;->p:I

    const/16 v3, -0x19

    if-eq v1, v3, :cond_5

    const/16 v3, -0x17

    if-eq v1, v3, :cond_4

    const/16 v3, -0x14

    const/4 v4, -0x1

    if-eq v1, v3, :cond_6

    const/16 v3, -0xe

    if-eq v1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, -0x2

    goto :goto_2

    :cond_4
    const/4 v4, -0x3

    goto :goto_2

    :cond_5
    const/4 v4, -0x4

    :cond_6
    :goto_2
    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    invoke-interface {v1, v9, v4}, Luf/c;->a(Ljava/lang/Throwable;I)V

    const/4 v1, 0x0

    return v1

    :cond_7
    move-object/from16 v10, v22

    iget v9, v0, Lvf/c;->p:I

    const/16 v11, -0x2710

    if-eq v9, v11, :cond_18

    const/16 v12, -0x18

    if-eq v9, v12, :cond_16

    const/16 v12, -0x16

    if-eq v9, v12, :cond_14

    const/16 v12, -0x15

    if-eq v9, v12, :cond_12

    packed-switch v9, :pswitch_data_0

    const-string v6, "intent_patch_missing_dex_path"

    packed-switch v9, :pswitch_data_1

    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_6

    :pswitch_0
    const-string v6, "oh yeah, tinker load all success"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v10, v6, v9}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Lvf/a;->w(Z)V

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchDexPaths(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v0, Lvf/c;->m:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchLibsPaths(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v0, Lvf/c;->n:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPackageConfig(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lvf/c;->o:Ljava/util/HashMap;

    iget-boolean v1, v0, Lvf/c;->e:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v1, v8, v6}, Luf/c;->d(ILjava/lang/Throwable;)V

    :cond_8
    if-eqz v3, :cond_9

    iget-boolean v1, v0, Lvf/c;->d:Z

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    iget-object v2, v0, Lvf/c;->g:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v20

    invoke-interface {v1, v4, v7, v3, v2}, Luf/c;->i(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    :cond_9
    return v5

    :pswitch_1
    const-string v1, "tinker is disable, just return"

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v10, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    move v9, v3

    goto/16 :goto_6

    :pswitch_2
    const/4 v3, 0x0

    const-string v1, "can\'t find patch file, is ok, just return"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v10, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_3
    const/4 v3, 0x0

    const-string v1, "path info corrupted"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v10, v1, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    invoke-interface {v1, v4, v7, v8}, Luf/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_4

    :pswitch_4
    const/4 v3, 0x0

    const-string v1, "path info blank, wait main process to restart"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v10, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_5
    const/4 v3, 0x0

    iget-object v1, v0, Lvf/c;->b:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "patch version directory not found, current version:%s"

    invoke-static {v10, v1, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    iget-object v2, v0, Lvf/c;->g:Ljava/io/File;

    invoke-interface {v1, v2, v5, v5}, Luf/c;->c(Ljava/io/File;IZ)V

    goto :goto_4

    :pswitch_6
    const/4 v3, 0x0

    iget-object v1, v0, Lvf/c;->b:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "patch version file not found, current version:%s"

    invoke-static {v10, v1, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lvf/c;->h:Ljava/io/File;

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    iget-object v2, v0, Lvf/c;->h:Ljava/io/File;

    invoke-interface {v1, v2, v5, v3}, Luf/c;->c(Ljava/io/File;IZ)V

    goto :goto_4

    :cond_a
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v2, "error load patch version file not exist, but file is null"

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7
    const/4 v3, 0x0

    const-string v4, "patch package check fail"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v10, v4, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lvf/c;->h:Ljava/io/File;

    if-eqz v3, :cond_b

    const-string v3, "intent_patch_package_patch_check"

    invoke-virtual {v1, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v2

    iget-object v3, v0, Lvf/c;->h:Ljava/io/File;

    invoke-interface {v2, v3, v1}, Luf/c;->b(Ljava/io/File;I)V

    goto/16 :goto_3

    :cond_b
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v2, "error patch package check fail , but file is null"

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_8
    iget-object v1, v0, Lvf/c;->i:Ljava/io/File;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "patch dex file directory not found:%s"

    invoke-static {v10, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    iget-object v2, v0, Lvf/c;->i:Ljava/io/File;

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3, v5}, Luf/c;->c(Ljava/io/File;IZ)V

    :goto_5
    move v9, v4

    goto/16 :goto_6

    :cond_c
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch dex file directory not found, warning why the path is null!!!!"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_9
    const/4 v4, 0x0

    invoke-static {v1, v6}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v3, "patch dex file not found:%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-static {v10, v3, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-interface {v2, v3, v1, v4}, Luf/c;->c(Ljava/io/File;IZ)V

    goto :goto_5

    :cond_d
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch dex file not found, but path is null!!!!"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_a
    const/4 v4, 0x0

    invoke-static {v1, v6}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v3, "patch dex opt file not found:%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-static {v10, v3, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-interface {v2, v3, v1, v4}, Luf/c;->c(Ljava/io/File;IZ)V

    goto :goto_5

    :cond_e
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch dex opt file not found, but path is null!!!!"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_b
    const/4 v4, 0x0

    const-string v1, "patch dex load fail, classloader is null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v10, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_c
    const/4 v4, 0x0

    const-string v3, "intent_patch_mismatch_dex_path"

    invoke-static {v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v3, "patch dex file md5 is mismatch: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-static {v10, v3, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-interface {v2, v3, v1}, Luf/c;->f(Ljava/io/File;I)V

    goto/16 :goto_5

    :cond_f
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "patch dex file md5 is mismatch, but path is null!!!!"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_d
    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentInterpretException(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Luf/c;->d(ILjava/lang/Throwable;)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentInterpretException(Landroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v2, v3, v1}, Luf/c;->d(ILjava/lang/Throwable;)V

    goto/16 :goto_3

    :pswitch_f
    iget-object v1, v0, Lvf/c;->g:Ljava/io/File;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lvf/c;->j:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v3, v9

    const-string v1, "patch lib file directory not found:%s"

    invoke-static {v10, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    iget-object v2, v0, Lvf/c;->j:Ljava/io/File;

    invoke-interface {v1, v2, v6, v5}, Luf/c;->c(Ljava/io/File;IZ)V

    goto/16 :goto_6

    :cond_10
    const/4 v9, 0x0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "patch lib file directory not found, warning why the path is null!!!!"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_10
    const/4 v9, 0x0

    const-string v3, "intent_patch_missing_lib_path"

    invoke-static {v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    const-string v3, "patch lib file not found:%s"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v9

    invoke-static {v10, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v6, v9}, Luf/c;->c(Ljava/io/File;IZ)V

    goto/16 :goto_6

    :cond_11
    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "patch lib file not found, but path is null!!!!"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_11
    const/4 v9, 0x0

    const-string v1, "rewrite patch info file corrupted"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v10, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    invoke-interface {v1, v4, v7, v8}, Luf/c;->g(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_6

    :cond_12
    const/4 v9, 0x0

    iget-object v1, v0, Lvf/c;->g:Ljava/io/File;

    if-eqz v1, :cond_13

    iget-object v1, v0, Lvf/c;->k:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v9

    const-string v1, "patch resource file directory not found:%s"

    invoke-static {v10, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    iget-object v2, v0, Lvf/c;->k:Ljava/io/File;

    const/4 v3, 0x6

    invoke-interface {v1, v2, v3, v5}, Luf/c;->c(Ljava/io/File;IZ)V

    goto :goto_6

    :cond_13
    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "patch resource file directory not found, warning why the path is null!!!!"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    const/4 v9, 0x0

    iget-object v1, v0, Lvf/c;->g:Ljava/io/File;

    if-eqz v1, :cond_15

    iget-object v1, v0, Lvf/c;->l:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v9

    const-string v1, "patch resource file not found:%s"

    invoke-static {v10, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    iget-object v2, v0, Lvf/c;->l:Ljava/io/File;

    const/4 v3, 0x6

    invoke-interface {v1, v2, v3, v9}, Luf/c;->c(Ljava/io/File;IZ)V

    goto :goto_6

    :cond_15
    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "patch resource file not found, warning why the path is null!!!!"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    const/4 v9, 0x0

    iget-object v1, v0, Lvf/c;->l:Ljava/io/File;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v9

    const-string v1, "patch resource file md5 is mismatch: %s"

    invoke-static {v10, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lvf/a;->g()Luf/c;

    move-result-object v1

    iget-object v2, v0, Lvf/c;->l:Ljava/io/File;

    const/4 v3, 0x6

    invoke-interface {v1, v2, v3}, Luf/c;->f(Ljava/io/File;I)V

    :goto_6
    return v9

    :cond_17
    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "resource file md5 mismatch, but patch resource file not found!"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    const/4 v9, 0x0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "can\'t get the right intent return code"

    invoke-static {v10, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0xd
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
