.class public Lcom/bytedance/sdk/openadsdk/dNu/Sj;
.super Ljava/lang/Object;


# static fields
.field private static EjP:Landroid/content/Context;

.field private static final HiB:J


# instance fields
.field private Dq:Ljava/lang/Runnable;

.field private final Jcg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/dNu/EjP;",
            ">;"
        }
    .end annotation
.end field

.field private Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

.field private TKC:Ljava/lang/Boolean;

.field private sP:Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

.field private uA:Ljava/lang/Runnable;

.field private vS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->HiB:J

    return-void
.end method

.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/dNu/sP;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->vS:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Jcg:Ljava/util/ArrayList;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Dq:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj$4;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->uA:Ljava/lang/Runnable;

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/BusMonitorDependWrapper;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/BusMonitorDependWrapper;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/sP;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->sP:Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->EjP:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "BusMonitorCenter"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->vS:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->vS:I

    return v0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->sP:Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->vS:I

    return p0
.end method

.method public static Sj()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->EjP:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/BusMonitorDependWrapper;->getReflectContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/dNu/sP;)Lcom/bytedance/sdk/openadsdk/dNu/Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/sP;)V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Lcom/bytedance/sdk/openadsdk/dNu/sP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->TKC:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/dNu/Sj;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj(Ljava/util/List;)V

    return-void
.end method

.method private Sj(Ljava/util/List;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/dNu/EjP;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "BusMonitorCenter"

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/dNu/Sj/Sj;->Sj()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_9

    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    move v12, v4

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_8

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/dNu/EjP;

    if-eqz v4, :cond_7

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/dNu/EjP;->generatorModel()Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;

    move-result-object v13

    if-eqz v13, :cond_7

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

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sdk_version = ? AND scene = ? AND rit = ? AND tag = ? AND label = ? AND mediation = ? AND is_init = ? AND extra = ?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Dq()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->uA()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Ym()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->aa()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Fmk()Ljava/lang/String;

    move-result-object v21

    filled-new-array/range {v14 .. v21}, [Ljava/lang/String;

    move-result-object v8

    const-string v5, "monitor_table"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "timestamp"

    const-string v6, "fail_count"

    const-string v7, "success_count"

    const-string v8, "start_count"

    const-string v9, "_id"

    if-eqz v4, :cond_5

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_0

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto/16 :goto_2

    :cond_0
    :goto_1
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_1

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v13, v10}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj(I)V

    :cond_1
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_2

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->HiB()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v13, v10}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP(I)V

    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_3

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v13, v10}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC(I)V

    :cond_3
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_4

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TEQ()J

    move-result-wide v14

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP(J)V

    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj()J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v10, v10, v14

    if-lez v10, :cond_6

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Sj()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    const-string v9, "sdk_version"

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "scene"

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TKC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->EjP()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->HiB()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->vS()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "rit"

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Jcg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "tag"

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Dq()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "label"

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->uA()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->TEQ()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "mediation"

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Ym()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "is_init"

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->aa()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "extra"

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/dNu/sP/Sj;->Fmk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "monitor_table"

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "exec save size = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    move-object v2, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_a

    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    return-void

    :catchall_3
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_b

    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    throw v3

    :cond_c
    :goto_5
    if-eqz v2, :cond_d

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_d
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Jcg:Ljava/util/ArrayList;

    return-object p0
.end method

.method private TKC()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->TKC:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->isMonitorOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method static synthetic sP()J
    .locals 2

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->HiB:J

    return-wide v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->TKC:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/dNu/Sj;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->uA:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->TKC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dNu/Sj$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/Sj;Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Dq:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Dq:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->sP:Lcom/bytedance/sdk/openadsdk/dNu/TKC/Sj;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->isMonitorOpen()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getOnceLogInterval()I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/dNu/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/dNu/sP;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/dNu/sP;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/dNu/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/dNu/Sj;Z)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method
