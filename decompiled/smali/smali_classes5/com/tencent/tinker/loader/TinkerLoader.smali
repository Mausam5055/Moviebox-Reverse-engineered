.class public Lcom/tencent/tinker/loader/TinkerLoader;
.super Lcom/tencent/tinker/loader/AbstractTinkerLoader;


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerLoader"


# instance fields
.field private patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tinker/loader/AbstractTinkerLoader;-><init>()V

    return-void
.end method

.method private checkSafeModeCount(Lcom/tencent/tinker/loader/app/TinkerApplication;)Z
    .locals 2

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getSafeModeCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->setSafeModeCount(Landroid/content/Context;I)V

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/tencent/tinker/loader/app/TinkerApplication;->setUseSafeMode(Z)V

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->setSafeModeCount(Landroid/content/Context;I)V

    return v1
.end method

.method private tryLoadPatchFilesInternal(Lcom/tencent/tinker/loader/app/TinkerApplication;Landroid/content/Intent;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/tinker/loader/app/TinkerApplication;->getTinkerFlags()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabled(I)Z

    move-result v2

    const/4 v3, -0x1

    const-string v9, "Tinker.TinkerLoader"

    const/4 v10, 0x0

    if-nez v2, :cond_0

    const-string v1, "tryLoadPatchFiles: tinker is disable, just return"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v8, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isInPatchProcess(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "tryLoadPatchFiles: we don\'t load patch with :patch process itself, just return"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v8, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v3, -0x2

    if-nez v2, :cond_2

    const-string v1, "tryLoadPatchFiles:getPatchDirectory == null"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v8, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryLoadPatchFiles:patch dir not exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v8, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_3
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryLoadPatchFiles:patch info not exist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x3

    invoke-static {v8, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_4
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->readAndCheckPropertyWithLock(Ljava/io/File;Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    const/4 v5, -0x4

    if-nez v2, :cond_5

    invoke-static {v8, v5}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_5
    iget-boolean v6, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->isProtectedApp:Z

    const-string v2, "intent_is_protected_app"

    invoke-virtual {v8, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-boolean v2, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->useCustomPatch:Z

    const-string v13, "intent_use_custom_patch"

    invoke-virtual {v8, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v13, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iget-object v14, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oatDir:Ljava/lang/String;

    if-eqz v13, :cond_6

    if-eqz v14, :cond_6

    if-nez v2, :cond_7

    :cond_6
    move v1, v10

    goto/16 :goto_9

    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isInMainProcess(Landroid/content/Context;)Z

    move-result v15

    iget-object v5, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v5, v5, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    const-string v3, "interpet"

    const-string v10, "/"

    move/from16 v18, v6

    const-string v6, ""

    if-eqz v15, :cond_e

    invoke-static {v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_c

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string v5, "found new version clean patch mark and we are in main process, delete patch file now."

    move/from16 v19, v1

    move/from16 v20, v15

    const/4 v1, 0x0

    new-array v15, v1, [Ljava/lang/Object;

    invoke-static {v9, v5, v15}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v14}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v13, v6

    :cond_8
    iget-object v14, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iput-object v13, v14, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iput-object v13, v14, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iput-object v6, v14, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    invoke-static {v11, v14, v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->killProcessExceptMain(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDirAsync(Ljava/lang/String;)V

    const/4 v1, -0x2

    invoke-static {v8, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_9
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDirAsync(Ljava/lang/String;)V

    move-object v14, v13

    goto :goto_0

    :cond_a
    move/from16 v19, v1

    move/from16 v20, v15

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "found old version clean patch mark and we are in main process, delete patch file now."

    const/4 v5, 0x0

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v9, v1, v15}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v5, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iput-object v14, v5, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iput-object v14, v5, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iput-object v6, v5, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    invoke-static {v11, v5, v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->killProcessExceptMain(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDirAsync(Ljava/lang/String;)V

    move-object v13, v14

    goto :goto_0

    :cond_b
    iget-object v1, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iput-object v6, v1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    invoke-static {v11, v1, v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    goto :goto_0

    :cond_c
    move/from16 v19, v1

    move/from16 v20, v15

    :cond_d
    :goto_0
    iget-object v1, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-boolean v1, v1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->isRemoveInterpretOATDir:Z

    if-eqz v1, :cond_f

    const-string v1, "tryLoadPatchFiles: isRemoveInterpretOATDir is true, try to delete interpret optimize files"

    const/4 v5, 0x0

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v9, v1, v15}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iput-boolean v5, v1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->isRemoveInterpretOATDir:Z

    invoke-static {v11, v1, v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->killProcessExceptMain(Landroid/content/Context;)V

    invoke-static {v14}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDirAsync(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    move/from16 v19, v1

    move/from16 v20, v15

    :cond_f
    :goto_1
    const-string v1, "intent_patch_old_version"

    invoke-virtual {v8, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intent_patch_new_version"

    invoke-virtual {v8, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v1, "changing"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    invoke-static {v7, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getCurrentOatMode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "intent_patch_oat_dir"

    invoke-virtual {v8, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez v15, :cond_10

    if-eqz v20, :cond_10

    move-object v13, v14

    :cond_10
    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "tryLoadPatchFiles:version is blank, wait main process to restart"

    const/4 v14, 0x0

    new-array v2, v14, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x5

    invoke-static {v8, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_11
    const/4 v14, 0x0

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v14, -0x6

    if-nez v1, :cond_12

    const-string v1, "tryLoadPatchFiles:patchName is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v8, v14}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_12
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_13

    const-string v1, "tryLoadPatchFiles:onPatchVersionDirectoryNotFound"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x6

    invoke-static {v8, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_13
    move-object/from16 v21, v3

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v1

    if-eqz v3, :cond_14

    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_14
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v1, "tryLoadPatchFiles:onPatchVersionFileNotFound"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x7

    invoke-static {v8, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_15
    const/4 v2, 0x0

    new-instance v3, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;

    invoke-direct {v3, v7}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;-><init>(Landroid/content/Context;)V

    move/from16 v2, v19

    invoke-static {v7, v2, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->checkTinkerPackage(Landroid/content/Context;ILjava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)I

    move-result v1

    if-eqz v1, :cond_16

    const-string v2, "tryLoadPatchFiles:checkTinkerPackage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v9, v2, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "intent_patch_package_patch_check"

    invoke-virtual {v8, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x8

    invoke-static {v8, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_16
    const-string v1, "intent_patch_package_config"

    move-object/from16 v19, v10

    invoke-virtual {v3}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getPackagePropertiesIfPresent()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v8, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForDex(I)Z

    move-result v10

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isArkHotRuning()Z

    move-result v24

    const-string v1, "tryLoadPatchFiles:dex check fail"

    if-nez v24, :cond_17

    if-eqz v10, :cond_17

    invoke-static {v14, v3, v5, v8}, Lcom/tencent/tinker/loader/TinkerDexLoader;->checkComplete(Ljava/lang/String;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v25

    if-nez v25, :cond_17

    const/4 v10, 0x0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_17
    move/from16 v25, v10

    const/4 v10, 0x0

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForArkHot(I)Z

    move-result v26

    if-eqz v24, :cond_18

    if-eqz v26, :cond_18

    invoke-static {v14, v3, v8}, Lcom/tencent/tinker/loader/TinkerArkHotLoader;->checkComplete(Ljava/lang/String;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Intent;)Z

    move-result v17

    if-nez v17, :cond_18

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_18
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForNativeLib(I)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v14, v3, v8}, Lcom/tencent/tinker/loader/TinkerSoLoader;->checkComplete(Ljava/lang/String;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "tryLoadPatchFiles:native lib check fail"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_19
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForResource(I)Z

    move-result v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryLoadPatchFiles:isEnabledForResource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v4

    const/4 v2, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_1a

    invoke-static {v7, v14, v3, v8}, Lcom/tencent/tinker/loader/TinkerResourceLoader;->checkComplete(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "tryLoadPatchFiles:resource check fail"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1a
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v1, v1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->fingerPrint:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isSystemOTA(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isAfterAndroidO()Z

    move-result v1

    if-nez v1, :cond_1b

    move v4, v2

    goto :goto_3

    :cond_1b
    const/4 v4, 0x0

    :goto_3
    const-string v1, "intent_patch_system_ota"

    invoke-virtual {v8, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v20, :cond_1d

    if-nez v15, :cond_1c

    iget-object v1, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iput-object v13, v1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    :cond_1c
    if-eqz v16, :cond_1d

    iget-object v1, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iput-object v5, v1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oatDir:Ljava/lang/String;

    iput-boolean v2, v1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->isRemoveInterpretOATDir:Z

    :cond_1d
    invoke-direct/range {p0 .. p1}, Lcom/tencent/tinker/loader/TinkerLoader;->checkSafeModeCount(Lcom/tencent/tinker/loader/app/TinkerApplication;)Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v20, :cond_1e

    iget-object v1, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iput-object v6, v1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iput-object v6, v1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    iput-object v6, v1, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->versionToRemove:Ljava/lang/String;

    invoke-static {v11, v1, v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->killProcessExceptMain(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDirAsync(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v2, "checkSafeModeCount fail"

    invoke-direct {v1, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    const-string v2, "intent_patch_exception"

    invoke-virtual {v8, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, -0x19

    invoke-static {v8, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    const-string v1, "tryLoadPatchFiles:checkSafeModeCount fail, patch was deleted."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1e
    const/4 v2, 0x0

    const-string v1, "tryLoadPatchFiles:checkSafeModeCount fail, but we are not in main process, mark the patch to be deleted and continue load patch."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->cleanPatch(Landroid/content/Context;)V

    goto :goto_4

    :cond_1f
    const/4 v2, 0x0

    :goto_4
    if-eqz v10, :cond_20

    invoke-static {v7, v14, v8}, Lcom/tencent/tinker/loader/TinkerResourceLoader;->loadTinkerResources(Lcom/tencent/tinker/loader/app/TinkerApplication;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "tryLoadPatchFiles:onPatchLoadResourcesFail"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_20
    const-string v13, "tryLoadPatchFiles:onReWritePatchInfoCorrupted"

    const/16 v6, -0x13

    if-nez v24, :cond_24

    if-eqz v25, :cond_24

    move-object/from16 v1, p1

    move/from16 v19, v15

    move-object/from16 v15, v22

    move-object v2, v14

    move-object/from16 v28, v3

    move-object v3, v5

    move/from16 v22, v4

    move-object/from16 v4, p2

    move/from16 v5, v22

    move/from16 v23, v10

    move v10, v6

    move/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lcom/tencent/tinker/loader/TinkerDexLoader;->loadTinkerJars(Lcom/tencent/tinker/loader/app/TinkerApplication;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZZ)Z

    move-result v1

    if-eqz v22, :cond_23

    iget-object v2, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->fingerPrint:Ljava/lang/String;

    if-eqz v1, :cond_21

    move-object/from16 v3, v21

    goto :goto_5

    :cond_21
    const-string v3, "odex"

    :goto_5
    iput-object v3, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oatDir:Ljava/lang/String;

    invoke-static {v11, v2, v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v8, v10}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v9, v13, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_22
    const/4 v2, 0x0

    iget-object v3, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v3, v3, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oatDir:Ljava/lang/String;

    invoke-virtual {v8, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v16, v2

    goto :goto_6

    :cond_23
    const/4 v2, 0x0

    :goto_6
    if-nez v1, :cond_25

    const-string v1, "tryLoadPatchFiles:onPatchLoadDexesFail"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_24
    move-object/from16 v28, v3

    move/from16 v23, v10

    move/from16 v19, v15

    move v10, v6

    :cond_25
    if-eqz v24, :cond_26

    if-eqz v26, :cond_26

    invoke-static {v7, v14, v8}, Lcom/tencent/tinker/loader/TinkerArkHotLoader;->loadTinkerArkHot(Lcom/tencent/tinker/loader/app/TinkerApplication;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "tryLoadPatchFiles:onPatchLoadArkApkFail"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_26
    if-nez v25, :cond_27

    if-eqz v26, :cond_28

    :cond_27
    if-eqz v23, :cond_28

    move-object/from16 v1, v28

    invoke-static {v7, v1}, Lcom/tencent/tinker/loader/hotplug/ComponentHotplug;->install(Lcom/tencent/tinker/loader/app/TinkerApplication;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)V

    :cond_28
    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/AppInfoChangedBlocker;->tryStart(Landroid/app/Application;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "tryLoadPatchFiles:AppInfoChangedBlocker install fail."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, -0x1c

    invoke-static {v8, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void

    :cond_29
    if-eqz v20, :cond_2a

    if-eqz v19, :cond_2b

    if-eqz v16, :cond_2a

    goto :goto_7

    :cond_2a
    const/4 v1, 0x0

    goto :goto_8

    :cond_2b
    :goto_7
    iget-object v1, v0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    invoke-static {v11, v1, v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {v8, v10}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v13, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2c
    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->killProcessExceptMain(Landroid/content/Context;)V

    :goto_8
    invoke-static {v8, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    const-string v2, "tryLoadPatchFiles: load end, ok!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :goto_9
    const-string v2, "tryLoadPatchFiles:onPatchInfoCorrupted"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v2, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v8, v5}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public tryLoad(Lcom/tencent/tinker/loader/app/TinkerApplication;)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Tinker.TinkerLoader"

    const-string v2, "tryLoad test test"

    invoke-static {v1, v2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, p1, v0}, Lcom/tencent/tinker/loader/TinkerLoader;->tryLoadPatchFilesInternal(Lcom/tencent/tinker/loader/app/TinkerApplication;Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentPatchCostTime(Landroid/content/Intent;J)V

    return-object v0
.end method
