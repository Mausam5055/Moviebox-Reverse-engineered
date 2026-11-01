.class public abstract Lv6/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv6/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lv6/y;Lv6/z;)V
    .locals 14

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lv6/z;->getLayerId()J

    move-result-wide v0

    const-string v2, "SELECT * FROM hisavana_ab_room WHERE layer_id = ?"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroidx/room/g0;->h(Ljava/lang/String;I)Landroidx/room/g0;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Landroidx/room/g0;->c(IJ)V

    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;La4/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "layer_id"

    invoke-static {v0, v1}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v5, "request_time"

    invoke-static {v0, v5}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "ab_info"

    invoke-static {v0, v6}, Landroidx/room/util/a;->e(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move-object v13, v4

    goto :goto_1

    :cond_0
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :goto_1
    new-instance v4, Lv6/z;

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lv6/z;-><init>(JJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/g0;->release()V

    const-string v0, "ADSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnlineABDao Query whether the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lv6/z;->getLayerId()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " exists in the database = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABTEST"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lv6/z;->getLayerId()J

    move-result-wide v0

    invoke-virtual {p1}, Lv6/z;->getRequestTime()J

    move-result-wide v4

    iget-object p1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->j()V

    iget-object p1, p0, Lv6/y;->e:Lv6/x;

    invoke-virtual {p1}, Landroidx/room/j0;->b()La4/h;

    move-result-object p1

    invoke-interface {p1, v3, v4, v5}, La4/f;->c(IJ)V

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, La4/f;->c(IJ)V

    :try_start_1
    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, La4/h;->F()I

    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p0, p0, Lv6/y;->e:Lv6/x;

    invoke-virtual {p0, p1}, Landroidx/room/j0;->h(La4/h;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    iget-object p0, p0, Lv6/y;->e:Lv6/x;

    invoke-virtual {p0, p1}, Landroidx/room/j0;->h(La4/h;)V

    throw v0

    :cond_3
    invoke-virtual {p0, p1}, Lv6/y;->a(Lv6/z;)J

    :goto_4
    return-void

    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Landroidx/room/g0;->release()V

    throw p0
.end method

.method public static b(Lv6/y;Lv6/z;)J
    .locals 5

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->j()V

    iget-object v0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    iget-object v0, p0, Lv6/y;->b:Lv6/t;

    invoke-virtual {v0, p1}, Landroidx/room/h;->m(Ljava/lang/Object;)J

    move-result-wide v0

    iget-object p1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object p1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    const-string p1, "SELECT COUNT(*) FROM hisavana_ab_room"

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroidx/room/g0;->h(Ljava/lang/String;I)Landroidx/room/g0;

    move-result-object p1

    iget-object v3, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->j()V

    iget-object v3, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    const/4 v4, 0x0

    invoke-static {v3, p1, v2, v4}, Landroidx/room/util/b;->g(Landroidx/room/RoomDatabase;La4/g;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    move v4, v2

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Landroidx/room/g0;->release()V

    const/16 p1, 0x14

    if-lt v4, p1, :cond_1

    add-int/lit8 v4, v4, -0xa

    iget-object p1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->j()V

    iget-object p1, p0, Lv6/y;->c:Lv6/v;

    invoke-virtual {p1}, Landroidx/room/j0;->b()La4/h;

    move-result-object p1

    int-to-long v2, v4

    const/4 v4, 0x1

    invoke-interface {p1, v4, v2, v3}, La4/f;->c(IJ)V

    :try_start_2
    iget-object v2, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {p1}, La4/h;->F()I

    move-result v2

    iget-object v3, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v3, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->t()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p0, p0, Lv6/y;->c:Lv6/v;

    invoke-virtual {p0, p1}, Landroidx/room/j0;->h(La4/h;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->t()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    iget-object p0, p0, Lv6/y;->c:Lv6/v;

    invoke-virtual {p0, p1}, Landroidx/room/j0;->h(La4/h;)V

    throw v0

    :cond_1
    :goto_2
    const-string p0, "ADSDK"

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "OnlineABDao delCount = "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and upsertId = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ABTEST"

    invoke-virtual {p0, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-wide v0

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Landroidx/room/g0;->release()V

    throw p0

    :catchall_3
    move-exception p1

    iget-object p0, p0, Lv6/y;->a:Lcom/cloud/hisavana/abtestkit/db/ABRoomDatabase_Impl;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->t()V

    throw p1
.end method
