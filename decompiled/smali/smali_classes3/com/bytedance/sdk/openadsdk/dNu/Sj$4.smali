.class Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/dNu/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v1, p0

    const-string v0, "extra"

    const-string v2, "is_init"

    const-string v3, "mediation"

    const-string v4, "label"

    const-string v5, "tag"

    const-string v6, "rit"

    const-string v7, "fail_count"

    const-string v8, "success_count"

    const-string v9, "start_count"

    const-string v10, "scene"

    const-string v11, "sdk_version"

    const-string v12, "_id"

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/Sj/Sj;->sP()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    if-eqz v13, :cond_12

    const-string v14, "_id"

    const-string v15, "sdk_version"

    const-string v16, "scene"

    const-string v17, "start_count"

    const-string v18, "success_count"

    const-string v19, "fail_count"

    const-string v20, "rit"

    const-string v21, "tag"

    const-string v22, "label"

    const-string v23, "timestamp"

    const-string v24, "mediation"

    const-string v25, "is_init"

    const-string v26, "extra"

    filled-new-array/range {v14 .. v26}, [Ljava/lang/String;

    move-result-object v15

    const-string v16, "timestamp <= ?"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->sP()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v17

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/sP;

    move-result-object v14

    invoke-interface {v14}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getOnceLogCount()I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0xa

    :try_start_1
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v1, 0x64

    if-le v14, v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    move v1, v14

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    const-string v14, "monitor_table"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_11

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_d

    move/from16 v16, v1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;-><init>()V

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    if-ltz v17, :cond_1

    move-object/from16 v17, v14

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(J)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_6

    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v17, v14

    :goto_2
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_4

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(I)V

    :cond_4
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP(I)V

    :cond_5
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC(I)V

    :cond_6
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP(Ljava/lang/String;)V

    :cond_8
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_9

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->HiB(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v2, v19

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_a

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v3, v18

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_b

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP(I)V

    :cond_b
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_c

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v14, v17

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v16

    move-object/from16 v27, v3

    move-object v3, v2

    move-object/from16 v2, v27

    goto/16 :goto_1

    :cond_d
    move/from16 v16, v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_11

    move-object/from16 v1, p0

    :try_start_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/sP;

    move-result-object v0

    invoke-interface {v0, v14}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->onMonitorUpload(Ljava/util/List;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/Sj/Sj;->Sj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    const-string v5, "?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_e

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_e
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_f
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v5, "monitor_table"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->sP()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;->Sj(J)V

    :cond_10
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v14, v16

    if-lt v0, v14, :cond_12

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Jcg(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)I

    move-result v0

    const/16 v3, 0x3e8

    if-gt v0, v3, :cond_12

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :cond_11
    move-object/from16 v1, p0

    :cond_12
    :goto_5
    return-void

    :goto_6
    const-string v2, "BusMonitorCenter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
