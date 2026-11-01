.class public Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sP"
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;

.field private volatile sP:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private Sj()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;->Sj(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    throw v0
.end method

.method private sP()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public Sj(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_0
    throw p1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_0
    throw p1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP()Z

    move-result p2

    if-nez p2, :cond_0

    const-wide/16 p1, -0x1

    :goto_0
    return-wide p1

    :cond_0
    throw p1
.end method

.method public Sj(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$Sj;

    iget-object p3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$Sj;-><init>(Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$1;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP()Z

    move-result p3

    if-nez p3, :cond_0

    move-object p1, p2

    :goto_0
    return-object p1

    :cond_0
    throw p1
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw p1
.end method

.method public declared-synchronized Sj(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->Jcg()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v5, "id"

    invoke-interface {v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->TKC()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uvD()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object v5

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->sP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "value"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "retry"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "encrypt"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/TKC/Sj;->EjP()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->TEQ()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    const-string v4, "channel"

    invoke-interface {v3}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->TEQ()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-interface {p3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_2
    :try_start_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    invoke-direct {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_6

    :try_start_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    :try_start_5
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;->sP:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    throw p1

    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method
