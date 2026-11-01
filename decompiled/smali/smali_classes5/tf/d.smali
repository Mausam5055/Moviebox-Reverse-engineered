.class public Ltf/d;
.super Ltf/c;


# static fields
.field private static a:Ljava/util/ArrayList;

.field private static b:Ljava/util/ArrayList;

.field private static c:Ljava/util/HashMap;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltf/d;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltf/d;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltf/d;->c:Ljava/util/HashMap;

    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v0

    sput-boolean v0, Ltf/d;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltf/c;-><init>()V

    return-void
.end method

.method private static c(Ljava/util/ArrayList;I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->shouldAcceptEvenIfIllegal(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    aput-object p1, v2, v0

    const-string p0, "Tinker.DexDiffPatchInternal"

    const-string p1, "parallel dex optimizer file %s is not exist, just wait %d times"

    invoke-static {p0, p1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    return v0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    sget-object v1, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Ltf/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    sget-boolean v1, Ltf/d;->d:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Ltf/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->realName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/tencent/tinker/loader/shareutil/ShareConstants;->CLASS_N_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v7, v5, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    const-string v8, "test.dex"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v3, v5

    move-object v4, v6

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    sget-object v1, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v3, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->changeTestDexToClassN(Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;I)Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v1, Ljava/io/File;

    const-string v3, "tinker_classN.apk"

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;

    iget-object v4, v3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    iget-object v5, v3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InArt:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object p0, v3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object v3, v4, v0

    const-string p0, "Tinker.DexDiffPatchInternal"

    const-string v0, "verify dex file md5 error, entry name; %s, file len: %d"

    invoke-static {p0, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :cond_6
    if-nez v0, :cond_7

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    :cond_7
    move v2, v0

    :cond_8
    if-eqz v2, :cond_9

    sget-object p0, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    goto :goto_1

    :cond_9
    :goto_2
    return v2
.end method

.method private static e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z
    .locals 13

    move-object v0, p2

    move-object/from16 v1, p5

    const/4 v2, 0x0

    invoke-static {p0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v3

    sget-object v4, Ltf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v0, "Tinker.DexDiffPatchInternal"

    const-string v1, "patch recover, make optimizeDexDirectoryFile fail"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-static {v6, v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Ltf/d;->a:Ljava/util/ArrayList;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v5, "Tinker.DexDiffPatchInternal"

    const-string v6, "patch recover, try to optimize dex file count:%d, optimizeDexDirectory:%s"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v2

    aput-object v0, v9, v4

    invoke-static {v5, v6, v9}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-array v11, v4, [Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/tencent/tinker/lib/service/PatchResult;->dexoptTriggerTime:J

    :cond_2
    invoke-static {}, Lcom/tencent/tinker/loader/app/TinkerApplication;->getInstance()Lcom/tencent/tinker/loader/app/TinkerApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/tinker/loader/app/TinkerApplication;->isUseDelegateLastClassLoader()Z

    move-result v8

    new-array v12, v4, [Z

    aput-boolean v2, v12, v2

    new-instance v10, Ltf/d$a;

    invoke-direct {v10, v12, v0, v11}, Ltf/d$a;-><init>([ZLjava/util/List;[Ljava/lang/Throwable;)V

    move-object v5, p0

    move-object v6, p1

    move/from16 v9, p4

    invoke-static/range {v5 .. v10}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->optimizeAll(Landroid/content/Context;Ljava/util/Collection;Ljava/io/File;ZZLcom/tencent/tinker/loader/TinkerDexOptimizer$ResultCallback;)Z

    if-eqz v1, :cond_3

    monitor-enter v12

    :try_start_0
    aget-boolean v5, v12, v2

    xor-int/2addr v5, v4

    iput-boolean v5, v1, Lcom/tencent/tinker/lib/service/PatchResult;->isOatGenerated:Z

    monitor-exit v12

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3}, Lvf/a;->k()Luf/d;

    move-result-object v1

    aget-object v3, v11, v2

    move-object/from16 v4, p3

    invoke-interface {v1, v4, v0, v3}, Luf/d;->f(Ljava/io/File;Ljava/util/List;Ljava/lang/Throwable;)V

    return v2

    :cond_4
    return v4
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Z
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    const/4 v5, 0x0

    sget-object v6, Ltf/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    sget-object v6, Ltf/d;->b:Ljava/util/ArrayList;

    move-object/from16 v7, p2

    invoke-static {v7, v6}, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->parseDexDiffPatchInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v6, Ltf/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "Tinker.DexDiffPatchInternal"

    if-eqz v6, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "extract patch list is empty! type:%s:"

    invoke-static {v8, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-static/range {p0 .. p0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v6

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v0, "applicationInfo == null!!!!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v5

    :catchall_0
    move-exception v0

    move-object v10, v9

    goto/16 :goto_b

    :cond_2
    :try_start_1
    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v15, Ljava/util/zip/ZipFile;

    invoke-direct {v15, v10}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-static/range {p1 .. p1}, Ltf/d;->d(Ljava/lang/String;)Z

    move-result v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v9, :cond_3

    :try_start_4
    const-string v0, "class n dex file %s is already exist, and md5 match, just continue"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v3, "tinker_classN.apk"

    aput-object v3, v1, v5

    invoke-static {v8, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v15}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v10}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v7

    :catchall_1
    move-exception v0

    move-object v9, v15

    goto/16 :goto_b

    :cond_3
    :try_start_5
    sget-object v9, Ltf/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    iget-object v11, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->path:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v11, :cond_4

    :try_start_6
    iget-object v11, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :cond_4
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_1
    iget-object v12, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->dexDiffMd5:Ljava/lang/String;

    iget-object v13, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->oldDexCrC:Ljava/lang/String;

    sget-boolean v16, Ltf/d;->d:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v3, "0"

    if-nez v16, :cond_5

    :try_start_8
    iget-object v4, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InDvm:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "patch dex %s is only for art, just continue"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v11, v4, v5

    invoke-static {v8, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :cond_5
    :try_start_9
    sget-boolean v4, Ltf/d;->d:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v4, :cond_6

    :try_start_a
    iget-object v4, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InArt:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    :cond_6
    :try_start_b
    iget-object v4, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InDvm:Ljava/lang/String;

    :goto_2
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const-string v7, "meta file md5 invalid, type:%s, name: %s, md5: %s"

    if-nez v16, :cond_7

    :try_start_c
    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v5

    const/4 v0, 0x1

    aput-object v3, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    invoke-static {v8, v7, v9}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ltf/c;->b(I)I

    move-result v3

    invoke-interface {v0, v1, v3}, Luf/d;->b(Ljava/io/File;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-static {v15}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v10}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v5

    :cond_7
    :try_start_d
    new-instance v5, Ljava/io/File;

    move-object/from16 v19, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->realName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v0, :cond_9

    :try_start_e
    invoke-static {v5, v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "dex file %s is already exist, and md5 match, just continue"

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    invoke-static {v8, v0, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    move-object/from16 v0, p1

    :goto_4
    move-object/from16 v9, v19

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "have a mismatch corrupted dex "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v7

    const/4 v9, 0x0

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v8, v0, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_5

    :cond_9
    move-object/from16 v16, v7

    :try_start_f
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :goto_5
    invoke-virtual {v10, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    invoke-virtual {v15, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object/from16 v20, v4

    const-string v4, "patch entry is null. path:"

    if-eqz v9, :cond_c

    if-nez v0, :cond_a

    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v3, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-interface {v0, v1, v5, v3, v2}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :goto_6
    invoke-static {v15}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    :goto_7
    invoke-static {v10}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    const/4 v0, 0x0

    return v0

    :cond_a
    :try_start_11
    invoke-static {v10, v0, v5, v14}, Ltf/d;->g(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to extract raw patch file "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v3, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-interface {v0, v1, v5, v3, v2}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_6

    :cond_b
    move-object v7, v15

    const/4 v3, 0x2

    const/4 v9, 0x3

    goto/16 :goto_a

    :cond_c
    :try_start_12
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const-string v9, "Failed to recover dex file when verify patched dex: "

    move-object/from16 v21, v12

    const-string v12, "apk entry %s crc is not equal, expect crc: %s, got crc: %s"

    move-object/from16 v22, v4

    const-string v4, "apk entry is null. path:"

    if-eqz v3, :cond_10

    :try_start_13
    sget-boolean v0, Ltf/d;->d:Z

    if-nez v0, :cond_d

    goto/16 :goto_3

    :cond_d
    if-nez v7, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v3, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-interface {v0, v1, v5, v3, v2}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_6

    :cond_e
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v8, v12, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v3, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-interface {v0, v1, v5, v3, v2}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_f
    invoke-static {v15, v7, v5, v14}, Ltf/d;->g(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;)Z

    move-object/from16 v3, v20

    invoke-static {v5, v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v3, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-interface {v0, v1, v5, v3, v2}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    invoke-static {v5}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    goto/16 :goto_6

    :cond_10
    move-object/from16 v3, v20

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v3, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-interface {v0, v1, v5, v3, v2}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_6

    :cond_11
    :try_start_14
    invoke-static/range {v21 .. v21}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v20
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-nez v20, :cond_12

    :try_start_15
    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    const/4 v0, 0x2

    aput-object v21, v4, v0

    move-object/from16 v0, v16

    invoke-static {v8, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ltf/c;->b(I)I

    move-result v3

    invoke-interface {v0, v1, v3}, Luf/d;->b(Ljava/io/File;I)V

    goto/16 :goto_6

    :cond_12
    if-nez v7, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v3, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-interface {v0, v1, v5, v3, v2}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto/16 :goto_6

    :cond_13
    :try_start_16
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    if-nez v16, :cond_14

    const/4 v9, 0x3

    :try_start_17
    new-array v0, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v0, v3

    const/4 v3, 0x1

    aput-object v13, v0, v3

    const/4 v3, 0x2

    aput-object v4, v0, v3

    invoke-static {v8, v12, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v3, v14, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-interface {v0, v1, v5, v3, v2}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_6

    :cond_14
    move-object/from16 v20, v9

    move-object v11, v15

    move-object v12, v10

    move-object v13, v7

    move-object v4, v14

    move-object v14, v0

    move-object v7, v15

    move-object v15, v4

    move-object/from16 v16, v5

    :try_start_18
    invoke-static/range {v11 .. v16}, Ltf/d;->l(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;Ljava/io/File;)V

    invoke-static {v5, v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v9}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v3, v4, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-interface {v0, v1, v5, v3, v2}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    invoke-static {v5}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    :goto_8
    invoke-static {v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_7

    :catchall_2
    move-exception v0

    :goto_9
    move-object v9, v7

    goto :goto_b

    :cond_15
    :try_start_19
    const-string v0, "success recover dex file: %s, size: %d, use time: %d"

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v17

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v9, 0x3

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v3, 0x1

    aput-object v4, v11, v3

    const/4 v3, 0x2

    aput-object v5, v11, v3

    invoke-static {v8, v0, v11}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    move-object/from16 v0, p1

    move-object v15, v7

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    move-object v7, v15

    goto :goto_9

    :cond_16
    move-object v3, v0

    move-object v7, v15

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3}, Ltf/d;->j(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    if-nez v0, :cond_17

    goto :goto_8

    :cond_17
    invoke-static {v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v10}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    const/4 v0, 0x1

    return v0

    :catchall_4
    move-exception v0

    move-object v7, v15

    move-object v10, v9

    goto :goto_9

    :goto_b
    :try_start_1a
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "patch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " extract failed ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v10}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    throw v0
.end method

.method private static g(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;)Z
    .locals 2

    sget-boolean v0, Ltf/d;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InArt:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InDvm:Ljava/lang/String;

    :goto_0
    iget-object v1, p3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    iget-boolean p3, p3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->isJarMode:Z

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isRawDexFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p0, p1, p2, v0}, Ltf/d;->h(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p3, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Ltf/c;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static h(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_5

    if-nez v3, :cond_5

    add-int/2addr v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try Extracting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Tinker.DexDiffPatchInternal"

    invoke-static {v5, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v3

    goto/16 :goto_4

    :cond_1
    :goto_1
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x21

    :try_start_1
    invoke-static {v6, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->setReadOnly()Z

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_2
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x1000

    :try_start_2
    new-array v3, v3, [B

    new-instance v7, Ljava/util/zip/ZipEntry;

    const-string v8, "classes.dex"

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    :goto_3
    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    invoke-virtual {v4, v3, v1, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v3, v6

    goto :goto_4

    :cond_3
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v6}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {p2, p3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const-string v4, "isExtractionSuccessful: %b"

    invoke-static {v5, v4, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v3, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete corrupted dex "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :goto_4
    invoke-static {v3}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lpf/b;->a(Ljava/lang/Object;)V

    throw p0

    :cond_5
    return v3
.end method

.method private static i(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 3

    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    return-object v0
.end method

.method private static j(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 15

    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v0, Ltf/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_a

    sget-boolean v0, Ltf/d;->d:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v0, "tinker_classN.apk"

    move-object/from16 v5, p2

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v5, "Tinker.DexDiffPatchInternal"

    if-eqz v0, :cond_1

    sget-object v0, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "classNDexInfo size: %d, no need to merge classN dex files"

    invoke-static {v5, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :goto_0
    new-instance v9, Lxf/a;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v0}, Lxf/a;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x21

    :try_start_1
    invoke-static {v0, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->setReadOnly()Z

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v8, v9

    goto/16 :goto_5

    :cond_3
    :goto_1
    sget-object v0, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;

    sget-object v11, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    iget-boolean v12, v10, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->isJarMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v12, :cond_4

    :try_start_2
    new-instance v12, Ljava/util/zip/ZipFile;

    invoke-direct {v12, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    const-string v11, "classes.dex"

    invoke-virtual {v12, v11}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    iget-object v10, v10, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-static {v11, v10}, Ltf/d;->i(Ljava/util/zip/ZipEntry;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v10

    invoke-virtual {v12, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v9, v10}, Lxf/a;->l(Ljava/util/zip/ZipEntry;)V

    invoke-static {v11, v9}, Lpf/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v9}, Lxf/a;->h()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v11}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v12}, Lpf/b;->a(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v8, v11

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v9}, Lxf/a;->h()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_4
    move-exception v0

    goto :goto_3

    :catchall_5
    move-exception v0

    move-object v12, v8

    :goto_3
    :try_start_8
    invoke-static {v8}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v12}, Lpf/b;->a(Ljava/lang/Object;)V

    throw v0

    :cond_4
    new-instance v12, Ljava/util/zip/ZipEntry;

    iget-object v10, v10, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/zip/ZipEntry;->setSize(J)V

    invoke-static {v11}, Lpf/a;->a(Ljava/io/File;)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/zip/ZipEntry;->setCrc(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    new-instance v10, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    invoke-virtual {v9, v12}, Lxf/a;->l(Ljava/util/zip/ZipEntry;)V

    invoke-static {v10, v9}, Lpf/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    invoke-virtual {v9}, Lxf/a;->h()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    invoke-static {v10}, Lpf/b;->a(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_2

    :catchall_6
    move-exception v0

    move-object v8, v10

    goto :goto_4

    :catchall_7
    move-exception v0

    :try_start_d
    invoke-virtual {v9}, Lxf/a;->h()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_8
    move-exception v0

    :goto_4
    :try_start_e
    invoke-static {v8}, Lpf/b;->a(Ljava/lang/Object;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_5
    invoke-static {v9}, Lpf/b;->a(Ljava/lang/Object;)V

    move v0, v3

    goto :goto_6

    :goto_5
    :try_start_f
    const-string v9, "merge classN file"

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v9, v10}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    invoke-static {v8}, Lpf/b;->a(Ljava/lang/Object;)V

    move v0, v2

    :goto_6
    if-eqz v0, :cond_7

    sget-object v8, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;

    iget-object v10, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    iget-object v11, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InArt:Ljava/lang/String;

    invoke-static {v4, v10, v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v0, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v0, v9, v2

    aput-object v8, v9, v3

    const-string v0, "verify dex file md5 error, entry name; %s, file len: %d"

    invoke-static {v5, v0, v9}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    :cond_7
    if-eqz v0, :cond_8

    sget-object v8, Ltf/d;->c:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    goto :goto_7

    :cond_8
    const-string v8, "merge classN dex error, try delete temp file"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    invoke-static {p0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v8

    invoke-virtual {v8}, Lvf/a;->k()Luf/d;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    move-object/from16 v11, p1

    invoke-interface {v8, v11, v4, v9, v10}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    :cond_9
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v2

    aput-object v9, v7, v3

    aput-object v4, v7, v1

    const/4 v1, 0x3

    aput-object v6, v7, v1

    const-string v1, "merge classN dex file %s, result: %b, size: %d, use: %dms"

    invoke-static {v5, v1, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :catchall_9
    move-exception v0

    invoke-static {v8}, Lpf/b;->a(Ljava/lang/Object;)V

    throw v0

    :cond_a
    :goto_8
    return v3
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dex"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {p0, v0, p2, p3, v2}, Ltf/d;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;I)Z

    move-result p2

    const-string v2, "Tinker.DexDiffPatchInternal"

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const-string p0, "patch recover, extractDiffInternals fail"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    array-length v0, p2

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v6, p2, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, ".dex"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, ".jar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "legal files to do dexopt: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v2, p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "odex"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Ltf/d;->e(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result p0

    return p0
.end method

.method private static l(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;Ljava/io/File;)V
    .locals 4

    const-string v0, "classes.dex"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz p3, :cond_0

    :try_start_1
    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, v1

    move-object v1, v2

    goto/16 :goto_9

    :cond_0
    move-object p0, v1

    :goto_0
    const/16 p1, 0x21

    const/4 p2, 0x1

    :try_start_2
    invoke-static {p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p5}, Ljava/io/File;->setReadOnly()Z

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v2

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    goto/16 :goto_9

    :cond_1
    :goto_1
    iget-object p1, p4, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isRawDexFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p2, p4, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->isJarMode:Z

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Llf/a;

    invoke-direct {p1, v2, p0}, Llf/a;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-virtual {p1, p5}, Llf/a;->a(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_7

    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p5}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_2
    move-exception p1

    goto/16 :goto_8

    :cond_4
    :goto_3
    new-instance p2, Ljava/util/zip/ZipOutputStream;

    new-instance p3, Ljava/io/BufferedOutputStream;

    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p3, p4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p2, p3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance p3, Ljava/util/zip/ZipEntry;

    invoke-direct {p3, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez p1, :cond_8

    :try_start_5
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :cond_5
    :try_start_6
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    goto :goto_4

    :catchall_3
    move-exception p3

    move-object v1, p1

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz p3, :cond_7

    new-instance p3, Llf/a;

    invoke-direct {p3, p1, p0}, Llf/a;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-virtual {p3, p2}, Llf/a;->b(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {p1}, Lpf/b;->a(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception p1

    move-object v1, p2

    goto :goto_8

    :cond_7
    :try_start_8
    new-instance p3, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t recognize zip dex format file:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_5
    move-exception p3

    :goto_5
    :try_start_9
    invoke-static {v1}, Lpf/b;->a(Ljava/lang/Object;)V

    throw p3

    :cond_8
    new-instance p1, Llf/a;

    invoke-direct {p1, v2, p0}, Llf/a;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    invoke-virtual {p1, p2}, Llf/a;->b(Ljava/io/OutputStream;)V

    :goto_6
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-static {p2}, Lpf/b;->a(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_7
    invoke-static {v2}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {p0}, Lpf/b;->a(Ljava/lang/Object;)V

    return-void

    :goto_8
    :try_start_b
    invoke-static {v1}, Lpf/b;->a(Ljava/lang/Object;)V

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_6
    move-exception p0

    move-object p1, v1

    :goto_9
    invoke-static {v1}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {p1}, Lpf/b;->a(Ljava/lang/Object;)V

    throw p0
.end method

.method protected static m(Lvf/a;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z
    .locals 9

    invoke-virtual {p0}, Lvf/a;->o()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Tinker.DexDiffPatchInternal"

    if-nez p0, :cond_0

    const-string p0, "patch recover, dex is not enabled"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getMetaContentMap()Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "assets/dex_meta.txt"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1

    const-string p0, "patch recover, dex is not contained"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v3 .. v8}, Ltf/d;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p3, p0

    iput-wide p3, p6, Lcom/tencent/tinker/lib/service/PatchResult;->dexCostTime:J

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p0, p3, v1

    aput-object p1, p3, v0

    const-string p0, "recover dex result:%b, cost:%d"

    invoke-static {v2, p0, p3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method protected static n(Ljava/io/File;Lvf/a;)Z
    .locals 12

    const/4 v0, 0x2

    const/4 v1, 0x0

    sget-object v2, Ltf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Ltf/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1e

    const/16 v4, 0x78

    if-le v2, v4, :cond_1

    move v2, v4

    :cond_1
    sget-object v4, Ltf/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ltf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    aput-object v5, v7, v3

    aput-object v6, v7, v0

    const-string v4, "Tinker.DexDiffPatchInternal"

    const-string v5, "raw dex count: %d, dex opt dex count: %d, final wait times: %d"

    invoke-static {v4, v5, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v1

    :cond_2
    :goto_0
    if-ge v5, v2, :cond_3

    sget-object v6, Ltf/d;->a:Ljava/util/ArrayList;

    add-int/2addr v5, v3

    invoke-static {v6, v5}, Ltf/d;->c(Ljava/util/ArrayList;I)Z

    move-result v6

    if-nez v6, :cond_2

    const-wide/16 v6, 0x2710

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thread sleep InterruptedException e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Ltf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v7, v9, v1

    aput-object v8, v9, v3

    const-string v7, "check dex optimizer file exist: %s, size %d"

    invoke-static {v4, v7, v9}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isLegalFile(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->shouldAcceptEvenIfIllegal(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v7, v8, v1

    const-string v7, "final parallel dex optimizer file %s is not exist, return false"

    invoke-static {v4, v7, v8}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p1}, Lvf/a;->k()Luf/d;

    move-result-object p1

    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v3, "checkDexOptExist failed"

    invoke-direct {v0, v3}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0, v2, v0}, Luf/d;->f(Ljava/io/File;Ljava/util/List;Ljava/lang/Throwable;)V

    return v1

    :cond_6
    sget-object v5, Ltf/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    :catch_1
    :cond_7
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->shouldAcceptEvenIfIllegal(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-array v11, v0, [Ljava/lang/Object;

    aput-object v9, v11, v1

    aput-object v10, v11, v3

    const-string v9, "check dex optimizer file format: %s, size %d"

    invoke-static {v4, v9, v11}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/ShareElfFile;->getFileTypeByMagic(Ljava/io/File;)I

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v9, v3, :cond_7

    :try_start_2
    new-instance v9, Lcom/tencent/tinker/loader/shareutil/ShareElfFile;

    invoke-direct {v9, v8}, Lcom/tencent/tinker/loader/shareutil/ShareElfFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lpf/b;->a(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v7

    :try_start_3
    const-string v9, "final parallel dex optimizer file %s is not elf format, return false"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v10, v11, v1

    invoke-static {v4, v9, v11}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v6}, Lpf/b;->a(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-static {v6}, Lpf/b;->a(Ljava/lang/Object;)V

    throw p0

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "checkDexOptFormat failed"

    if-nez v7, :cond_a

    new-instance v3, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v3, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    new-instance v3, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    invoke-direct {v3, v0, v7}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {p1}, Lvf/a;->k()Luf/d;

    move-result-object p1

    invoke-interface {p1, p0, v2, v3}, Luf/d;->f(Ljava/io/File;Ljava/util/List;Ljava/lang/Throwable;)V

    return v1

    :cond_b
    return v3
.end method
