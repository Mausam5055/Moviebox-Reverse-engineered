.class public final Ljp/b;
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

    iput-object p1, p0, Ljp/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Ljp/b;->b:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/core/k;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_data"

    const-string v4, "getString(...)"

    const-string v0, "emitter"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v5, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_0
    const-string v6, "_id"

    const-string v7, "_data"

    const-string v8, "_size"

    const-string v9, "mime_type"

    const-string v10, "height"

    const-string v11, "width"

    const-string v12, "_display_name"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v15

    iget-object v13, v1, Ljp/b;->b:Landroid/content/ContentResolver;

    if-eqz v13, :cond_0

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v16, "mime_type=? or mime_type=? or mime_type=? or mime_type =?"

    const-string v0, "image/jpeg"

    const-string v6, "image/png"

    const-string v7, "image/gif"

    const-string v8, "image/webp"

    filled-new-array {v0, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v17

    const-string v18, "date_added DESC"

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v6, :cond_6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    const-string v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v10, v0, 0x400

    const-string v0, "width"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v0, "height"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v13, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v14, v1, Ljp/b;->b:Landroid/content/ContentResolver;

    if-eqz v14, :cond_1

    sget-object v15, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "image_id"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "image_id=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_5

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v8, :cond_2

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v13, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_7

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_3
    if-eqz v5, :cond_3

    :goto_4
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v5, v6

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object v5, v6

    goto/16 :goto_8

    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    :goto_6
    :try_start_6
    sget-object v14, Llg/a;->a:Llg/a$a;

    const-string v15, "SelectVideoManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",path:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",thumbPath:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/transsion/publish/api/PhotoEntity;

    invoke-direct {v0}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    invoke-virtual {v0, v7}, Lcom/transsion/publish/api/PhotoEntity;->setImageTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/transsion/publish/api/PhotoEntity;->setLocalPath(Ljava/lang/String;)V

    int-to-long v9, v10

    invoke-virtual {v0, v9, v10}, Lcom/transsion/publish/api/PhotoEntity;->setImageSize(J)V

    invoke-virtual {v0, v13}, Lcom/transsion/publish/api/PhotoEntity;->setThumbPath(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/transsion/publish/api/PhotoEntity;->setHeight(I)V

    invoke-virtual {v0, v11}, Lcom/transsion/publish/api/PhotoEntity;->setWidth(I)V

    invoke-interface/range {p1 .. p1}, Lio/reactivex/rxjava3/core/k;->isDisposed()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/core/d;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v0, v8

    goto/16 :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :goto_7
    if-eqz v5, :cond_5

    :try_start_7
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Lcom/transsion/publish/api/PhotoEntity;

    invoke-direct {v0}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/core/d;->onNext(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_7
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/transsion/publish/api/PhotoEntity;

    invoke-direct {v0}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    invoke-interface {v2, v0}, Lio/reactivex/rxjava3/core/d;->onNext(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v5, :cond_9

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_4
    move-exception v0

    :goto_9
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :cond_9
    :goto_a
    return-void
.end method
