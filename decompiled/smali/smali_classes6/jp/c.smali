.class public final Ljp/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljp/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Ljp/c;->b:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/core/k;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-string v8, "getString(...)"

    const-string v0, "emitter"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v16, "height"

    const-string v17, "width"

    const-string v9, "title"

    const-string v10, "_size"

    const-string v11, "duration"

    const-string v12, "_data"

    const-string v13, "_id"

    const-string v14, "date_added"

    const-string v15, "mime_type"

    filled-new-array/range {v9 .. v17}, [Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v9, "mounted"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, v1, Ljp/c;->b:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    sget-object v19, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v10, "%1$s IN (?, ?, ?) AND %2$s > %3$s AND %2$s < %4$s"

    const/16 v11, 0x1f4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v12, 0x5b8d80

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v13, v7, [Ljava/lang/Object;

    const-string v14, "mime_type"

    aput-object v14, v13, v6

    const-string v14, "duration"

    aput-object v14, v13, v5

    aput-object v11, v13, v4

    aput-object v12, v13, v3

    invoke-static {v13, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "format(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "video/mp4"

    const-string v12, "video/ext-mp4"

    const-string v13, "video/3gpp"

    filled-new-array {v11, v12, v13}, [Ljava/lang/String;

    move-result-object v22

    const-string v23, "date_added DESC"

    move-object/from16 v18, v0

    move-object/from16 v21, v10

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    move-object v10, v9

    :goto_0
    move v0, v6

    :goto_1
    if-eqz v10, :cond_6

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-ne v11, v5, :cond_6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v17, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v3, v1, Ljp/c;->b:Landroid/content/ContentResolver;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v6, "_data"

    if-eqz v3, :cond_1

    :try_start_3
    sget-object v19, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "video_id"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v20

    const-string v21, "video_id=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v3, v9

    goto :goto_6

    :cond_1
    move-object v3, v9

    :goto_2
    if-eqz v3, :cond_2

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v17, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v9, v3

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    :goto_4
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v9, v10

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object v9, v10

    goto/16 :goto_9

    :cond_3
    :goto_5
    move-object/from16 v0, v17

    goto :goto_7

    :goto_6
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_3

    goto :goto_4

    :goto_7
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",duration:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",path:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",thumbPath:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/16 v3, 0x8

    move-wide/from16 v18, v6

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    new-instance v3, Lcom/transsion/publish/api/VsMediaInfo;

    invoke-direct {v3}, Lcom/transsion/publish/api/VsMediaInfo;-><init>()V

    invoke-virtual {v3, v14, v15}, Lcom/transsion/publish/api/VsMediaInfo;->setVideoDuration(J)V

    invoke-virtual {v3, v11}, Lcom/transsion/publish/api/VsMediaInfo;->setVideoTitle(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/transsion/publish/api/VsMediaInfo;->setVideoPath(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Lcom/transsion/publish/api/VsMediaInfo;->setVideoSize(J)V

    invoke-virtual {v3, v0}, Lcom/transsion/publish/api/VsMediaInfo;->setImagePath(Ljava/lang/String;)V

    move-wide/from16 v11, v18

    long-to-int v0, v11

    invoke-virtual {v3, v0}, Lcom/transsion/publish/api/VsMediaInfo;->setHeight(I)V

    long-to-int v0, v5

    invoke-virtual {v3, v0}, Lcom/transsion/publish/api/VsMediaInfo;->setWidth(I)V

    invoke-interface/range {p1 .. p1}, Lio/reactivex/rxjava3/core/k;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v2, v3}, Lio/reactivex/rxjava3/core/d;->onNext(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v0, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    goto/16 :goto_1

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void

    :goto_8
    if-eqz v9, :cond_5

    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Lcom/transsion/publish/api/VsMediaInfo;

    invoke-direct {v0}, Lcom/transsion/publish/api/VsMediaInfo;-><init>()V

    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/core/d;->onNext(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_7
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :goto_9
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :goto_a
    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    :goto_b
    return-void
.end method
