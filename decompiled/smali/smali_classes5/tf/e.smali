.class public Ltf/e;
.super Ltf/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltf/c;-><init>()V

    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;IZ)Z
    .locals 23

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "resources.arsc"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static/range {p0 .. p0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v11

    const/4 v12, 0x0

    :try_start_0
    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v14, p1

    invoke-direct {v13, v14}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-virtual {v13, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    new-instance v15, Ljava/io/File;

    move-object/from16 v4, p2

    invoke-direct {v15, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "Tinker.ResDiffPatchInternal"

    if-nez v14, :cond_0

    :try_start_2
    const-string v0, "resources apk entry is null. path:resources.arsc"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-interface {v0, v1, v15, v8, v3}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v7

    :catchall_0
    move-exception v0

    move-object v8, v12

    :goto_0
    move-object v12, v13

    goto/16 :goto_5

    :cond_0
    :try_start_3
    invoke-virtual {v14}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    iget-object v12, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->arscBaseCrc:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v0, "resources.arsc\'s crc is not equal, expect crc: %s, got crc: %s"

    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->arscBaseCrc:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v14, v5, v6

    invoke-static {v4, v0, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-interface {v0, v1, v15, v8, v3}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v7

    :catchall_1
    move-exception v0

    move-object v12, v13

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_1
    :try_start_4
    iget-object v8, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModRes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->storeRes:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v0, "no large modify or store resources, just return"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v6

    :cond_2
    :try_start_5
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v12, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->storeRes:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v15}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->ensureFileDirectory(Ljava/io/File;)V

    invoke-virtual {v8, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "store patch entry is null. path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-interface {v0, v1, v15, v14, v3}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v7

    :catchall_2
    move-exception v0

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    :try_start_7
    invoke-static {v8, v5, v15, v6, v7}, Ltf/c;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;Z)Z

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v19

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-eqz v19, :cond_4

    const-string v0, "resource meta file size mismatch, type:%s, name: %s, patch size: %d, file size; %d"

    invoke-static/range {p6 .. p6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v7

    const/4 v2, 0x1

    aput-object v14, v9, v2

    const/4 v2, 0x2

    aput-object v5, v9, v2

    const/4 v2, 0x3

    aput-object v6, v9, v2

    invoke-static {v4, v0, v9}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Ltf/c;->b(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Luf/d;->b(Ljava/io/File;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v7

    :cond_4
    :try_start_8
    iget-object v5, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->storeRes:Ljava/util/HashMap;

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "success recover store file:%s, file size:%d, use time:%d"

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v17

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 p1, v12

    const/4 v6, 0x3

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v14, v12, v7

    const/4 v6, 0x1

    aput-object v15, v12, v6

    const/4 v6, 0x2

    aput-object v17, v12, v6

    invoke-static {v4, v5, v12}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v12, p1

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_5
    iget-object v5, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModRes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v12, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;

    if-nez v12, :cond_6

    const-string v0, "resource not found largeModeInfo, type:%s, name: %s"

    invoke-static/range {p6 .. p6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const/4 v2, 0x1

    aput-object v6, v5, v2

    invoke-static {v4, v0, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Ltf/c;->b(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Luf/d;->b(Ljava/io/File;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v7

    :cond_6
    :try_start_9
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->ensureFileDirectory(Ljava/io/File;)V

    iget-object v7, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->md5:Ljava/lang/String;

    invoke-static {v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v0, "resource meta file md5 mismatch, type:%s, name: %s, md5: %s"

    invoke-static/range {p6 .. p6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->md5:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v7, v9

    const/4 v2, 0x1

    aput-object v6, v7, v2

    const/4 v2, 0x2

    aput-object v5, v7, v2

    invoke-static {v4, v0, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-static/range {p6 .. p6}, Ltf/c;->b(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Luf/d;->b(Ljava/io/File;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_3
    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    const/4 v0, 0x0

    return v0

    :cond_7
    :try_start_a
    invoke-virtual {v8, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    if-nez v7, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "large mod patch entry is null. path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v2, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-interface {v0, v1, v2, v6, v3}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_3

    :cond_8
    invoke-virtual {v13, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resources apk entry is null. path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v2, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-interface {v0, v1, v2, v6, v3}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :cond_9
    :try_start_b
    invoke-virtual {v13, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    invoke-virtual {v8, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object/from16 v0, p0

    move-object/from16 p1, v5

    move-wide/from16 v19, v9

    move/from16 v5, p7

    :try_start_d
    invoke-static {v0, v5}, Lrf/c;->a(Landroid/content/Context;Z)Lrf/a;

    move-result-object v9

    iget-object v10, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-virtual {v9, v2, v7, v10}, Lrf/a;->a(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/File;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-static {v2}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v7}, Lpf/b;->a(Ljava/lang/Object;)V

    iget-object v2, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    iget-object v7, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->md5:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v0, "Failed to recover large modify file:%s"

    iget-object v2, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    invoke-static {v4, v0, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    invoke-virtual {v11}, Lvf/a;->k()Luf/d;

    move-result-object v0

    iget-object v2, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-interface {v0, v1, v2, v6, v3}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_a
    const-string v2, "success recover large modify file:%s, file size:%d, use time:%d"

    iget-object v6, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x3

    new-array v12, v10, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v12, v14

    const/4 v6, 0x1

    aput-object v7, v12, v6

    const/4 v6, 0x2

    aput-object v9, v12, v6

    invoke-static {v4, v2, v12}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p1

    move-object/from16 v0, p3

    move-object/from16 v2, p5

    move-wide/from16 v9, v19

    const/4 v7, 0x0

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    move-object v12, v2

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v12, v2

    const/4 v7, 0x0

    goto :goto_4

    :catchall_5
    move-exception v0

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_4
    invoke-static {v12}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v7}, Lpf/b;->a(Ljava/lang/Object;)V

    throw v0

    :cond_b
    move-wide/from16 v19, v9

    const-string v0, "success recover all large modify and store resources use time:%d"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v19

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v0, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    invoke-static {v13}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    return v2

    :catchall_6
    move-exception v0

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_5
    :try_start_f
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "patch "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " extract failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    throw v0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IZ)Z
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    new-instance v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;

    invoke-direct {v11}, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;-><init>()V

    move-object/from16 v1, p2

    invoke-static {v1, v11}, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->parseAllResPatchInfo(Ljava/lang/String;Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;)V

    invoke-virtual {v11}, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v14, 0x1

    aput-object v1, v2, v14

    const-string v15, "Tinker.ResDiffPatchInternal"

    const-string v1, "res dir: %s, meta: %s"

    invoke-static {v15, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {p0 .. p0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v16

    iget-object v1, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->resArscMd5:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->resArscMd5:Ljava/lang/String;

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v0, v2, v13

    aput-object v1, v2, v14

    const-string v0, "resource meta file md5 mismatch, type:%s, md5: %s"

    invoke-static {v15, v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ltf/c;->b(I)I

    move-result v1

    invoke-interface {v0, v8, v1}, Luf/d;->b(Ljava/io/File;I)V

    return v13

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v0, "res_temp"

    invoke-direct {v7, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v5, "resources.apk"

    invoke-direct {v6, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->resArscMd5:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkResourceArscMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v0, v1, v13

    const-string v0, "resource file %s is already exist, and md5 match, just return true"

    invoke-static {v15, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v14

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "have a mismatch corrupted resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "applicationInfo == null!!!!"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v13

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_3
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v3, v7

    move-object v12, v4

    move-object/from16 v4, p3

    move-object/from16 v17, v5

    move-object v5, v11

    move-object/from16 p0, v6

    move/from16 v6, p4

    move-object/from16 v18, v7

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Ltf/e;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;IZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    return v13

    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v5, v3

    goto/16 :goto_c

    :cond_5
    :goto_1
    new-instance v2, Lxf/j;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v0}, Lxf/j;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x21

    :try_start_2
    invoke-static {v0, v14}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->setReadOnly()Z

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v5, v3

    :goto_2
    move-object v1, v2

    goto/16 :goto_c

    :cond_6
    :goto_3
    new-instance v3, Lxf/i;

    invoke-direct {v3, v12}, Lxf/i;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v5, Lxf/i;

    invoke-direct {v5, v8}, Lxf/i;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual {v3}, Lxf/i;->h()Ljava/util/Enumeration;

    move-result-object v0

    move v1, v13

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v7, "AndroidManifest.xml"

    if-eqz v6, :cond_a

    :try_start_5
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lxf/h;

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lxf/h;->g()Ljava/lang/String;

    move-result-object v12

    const-string v10, "../"

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_4

    :cond_8
    iget-object v10, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->patterns:Ljava/util/HashSet;

    invoke-static {v10, v12}, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->checkFileInPattern(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->deleteRes:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->modRes:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModRes:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v3, v6, v2}, Lxf/k;->b(Lxf/i;Lxf/h;Lxf/j;)V

    add-int/2addr v1, v14

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "zipEntry is null when get from oldApk"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v3, v7}, Lxf/i;->l(Ljava/lang/String;)Lxf/h;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "manifest patch entry is null. path:AndroidManifest.xml"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-interface {v0, v8, v4, v7, v9}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {v2}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/io/File;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return v13

    :cond_b
    :try_start_7
    invoke-static {v3, v0, v2}, Lxf/k;->b(Lxf/i;Lxf/h;Lxf/j;)V

    add-int/2addr v1, v14

    iget-object v0, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModRes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lxf/i;->l(Ljava/lang/String;)Lxf/h;

    move-result-object v7

    if-nez v7, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "large patch entry is null. path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v15, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-interface {v0, v8, v4, v6, v9}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {v2}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/io/File;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    return v13

    :cond_c
    :try_start_9
    iget-object v10, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModMap:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;

    iget-object v10, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    iget-wide v13, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->crc:J

    invoke-static {v7, v10, v13, v14, v2}, Lxf/k;->a(Lxf/h;Ljava/io/File;JLxf/j;)V

    const/4 v6, 0x1

    add-int/2addr v1, v6

    move v14, v6

    const/4 v13, 0x0

    goto :goto_5

    :cond_d
    iget-object v0, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->addRes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lxf/i;->l(Ljava/lang/String;)Lxf/h;

    move-result-object v7

    if-nez v7, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add patch entry is null. path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v15, v0, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-interface {v0, v8, v4, v6, v9}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-static {v2}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/io/File;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v0, 0x0

    return v0

    :cond_e
    :try_start_b
    iget-object v10, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->storeRes:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->storeRes:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v7}, Lxf/h;->c()J

    move-result-wide v13

    invoke-static {v7, v6, v13, v14, v2}, Lxf/k;->a(Lxf/h;Ljava/io/File;JLxf/j;)V

    :goto_7
    const/4 v6, 0x1

    goto :goto_8

    :cond_f
    invoke-static {v5, v7, v2}, Lxf/k;->b(Lxf/i;Lxf/h;Lxf/j;)V

    goto :goto_7

    :goto_8
    add-int/2addr v1, v6

    goto :goto_6

    :cond_10
    iget-object v0, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->modRes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lxf/i;->l(Ljava/lang/String;)Lxf/h;

    move-result-object v7

    if-nez v7, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mod patch entry is null. path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v15, v0, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v16}, Lvf/a;->k()Luf/d;

    move-result-object v0

    invoke-interface {v0, v8, v4, v6, v9}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-static {v2}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/io/File;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v0, 0x0

    return v0

    :cond_11
    :try_start_d
    iget-object v10, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->storeRes:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->storeRes:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v7}, Lxf/h;->c()J

    move-result-wide v13

    invoke-static {v7, v6, v13, v14, v2}, Lxf/k;->a(Lxf/h;Ljava/io/File;JLxf/j;)V

    :goto_a
    const/4 v6, 0x1

    goto :goto_b

    :cond_12
    invoke-static {v5, v7, v2}, Lxf/k;->b(Lxf/i;Lxf/h;Lxf/j;)V

    goto :goto_a

    :goto_b
    add-int/2addr v1, v6

    goto :goto_9

    :cond_13
    invoke-virtual {v3}, Lxf/i;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lxf/j;->p(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-static {v2}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/io/File;)Z

    iget-object v0, v11, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->resArscMd5:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkResourceArscMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "check final new resource file fail path:%s, entry count:%d, size:%d"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    aput-object v3, v5, v1

    invoke-static {v15, v0, v5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    invoke-virtual/range {v16 .. v16}, Lvf/a;->k()Luf/d;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-interface {v0, v8, v4, v1, v9}, Luf/d;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    const/4 v0, 0x0

    return v0

    :cond_14
    const-string v0, "final new resource file:%s, entry count:%d, size:%d"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-static {v15, v0, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :catchall_4
    move-exception v0

    move-object v5, v1

    goto/16 :goto_2

    :goto_c
    invoke-static {v1}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/io/File;)Z

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_d
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " extract failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Ltf/e;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IZ)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "patch recover, extractDiffInternals fail"

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "Tinker.ResDiffPatchInternal"

    invoke-static {p3, p0, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected static f(Lvf/a;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;ZLcom/tencent/tinker/lib/service/PatchResult;)Z
    .locals 5

    invoke-virtual {p0}, Lvf/a;->q()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Tinker.ResDiffPatchInternal"

    if-nez p0, :cond_0

    const-string p0, "patch recover, resource is not enabled"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getMetaContentMap()Ljava/util/HashMap;

    move-result-object p0

    const-string p1, "assets/res_meta.txt"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {p2, p3, p0, p4, p5}, Ltf/e;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Z

    move-result p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v3

    iput-wide p1, p6, Lcom/tencent/tinker/lib/service/PatchResult;->resCostTime:J

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, v1

    aput-object p1, p2, v0

    const-string p1, "recover resource result:%b, cost:%d"

    invoke-static {v2, p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_2
    :goto_0
    const-string p0, "patch recover, resource is not contained"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
