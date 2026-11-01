.class public Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;
.super Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field protected Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final TKC:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj:Ljava/util/List;

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->TKC:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    if-nez p2, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->TKC()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    :cond_0
    return-void
.end method

.method private static Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static Sj(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string v0, " IN "

    goto :goto_0

    :cond_0
    const-string v0, " NOT IN "

    :goto_0
    if-eqz p3, :cond_1

    const-string p3, " OR "

    goto :goto_1

    :cond_1
    const-string p3, " AND "

    :goto_1
    const/16 v1, 0x3e8

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v2, v1, p2

    if-nez v2, :cond_2

    div-int v2, v1, p2

    goto :goto_2

    :cond_2
    div-int v2, v1, p2

    add-int/lit8 v2, v2, 0x1

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_4

    mul-int v5, v4, p2

    add-int v6, v5, p2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const-string v7, "\',\'"

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\')"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(\'\')"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sP(IJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->HiB()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "gen_time <? OR retry >?"

    invoke-static {p2, p3, v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/TKC;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public EjP()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Sj()I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->HiB()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    move-result-object v3

    const-string v4, "count(1)"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/TKC;->Sj(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :goto_2
    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    throw v1

    :catch_1
    if-eqz v0, :cond_2

    goto :goto_1

    :catch_2
    :cond_2
    :goto_3
    return v1
.end method

.method public Sj(ILjava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->HiB()Landroid/content/Context;

    move-result-object v0

    move/from16 v2, p1

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj(ILandroid/content/Context;)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-wide/16 v6, 0x64

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    move-wide v2, v6

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " DESC limit "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->dNu()J

    move-result-wide v6

    cmp-long v0, v6, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const-string v5, "gen_time>?"

    move-object v11, v0

    move-object v10, v5

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move-object v10, v0

    move-object v11, v10

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/TKC/Sj;->EjP()Z

    move-result v0

    const-string v5, "channel"

    const-string v6, "encrypt"

    const-string v15, "value"

    const-string v13, "id"

    const/4 v12, 0x3

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->EjP()B

    move-result v0

    if-ne v0, v12, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->HiB()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v13, v15, v6, v5}, [Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    const/16 v16, 0x0

    move v3, v12

    move-object v12, v0

    move-object v4, v13

    move-object/from16 v13, v16

    invoke-static/range {v7 .. v14}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/TKC;->Sj(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_3
    move v3, v12

    move-object v4, v13

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->HiB()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4, v15, v6}, [Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v14}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/TKC;->Sj(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_2

    :goto_3
    if-eqz v7, :cond_b

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uvD()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object v8

    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_9

    :try_start_1
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/TKC/Sj;->EjP()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->EjP()B

    move-result v11

    if-ne v11, v3, :cond_4

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    const/4 v12, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    const/4 v12, 0x1

    goto :goto_8

    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    :goto_6
    if-ne v10, v12, :cond_5

    :try_start_2
    invoke-interface {v8, v9}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_5
    :goto_7
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v9, v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const/16 v13, 0x64

    if-le v10, v13, :cond_7

    goto :goto_9

    :cond_7
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;

    invoke-direct {v9, v0, v10}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->EjP()B

    move-result v0

    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Sj(B)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->TKC()B

    move-result v0

    invoke-virtual {v9, v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->sP(B)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/TKC/Sj;->EjP()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->EjP()B

    move-result v0

    if-ne v0, v3, :cond_8

    invoke-virtual {v9, v11}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Sj(I)V

    :cond_8
    invoke-static {v10, v9}, Lcom/bytedance/sdk/component/vS/Sj/TKC/Sj;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_4

    :goto_8
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    goto :goto_a

    :cond_9
    :goto_9
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    iget-object v0, v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(Ljava/util/List;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :goto_a
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    iget-object v2, v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(Ljava/util/List;)V

    iget-object v2, v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_a
    throw v0

    :catch_1
    :cond_b
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    return-object v2
.end method

.method public Sj(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    if-nez v0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public Sj(IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP(IJ)V

    return-void
.end method

.method protected Sj(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const-string v3, "id"

    invoke-static {v3, p1, v1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->HiB()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/TKC;->Sj(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->pfr()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->TKC(Ljava/util/List;)V

    return-void
.end method

.method public Sj(I)Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj()I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->EjP:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->Sj()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/TKC/Sj;->TKC()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq p1, v4, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    :cond_1
    if-lez v0, :cond_2

    return v4

    :cond_2
    return v1

    :cond_3
    if-lt v0, v2, :cond_4

    return v4

    :cond_4
    return v1
.end method

.method public TKC()B
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->EjP()Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;->sP()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public sP(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/bytedance/sdk/component/vS/Sj/TKC/Sj;->TEQ(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const-string v3, "id"

    invoke-static {v3, v0, v1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(Ljava/lang/String;Ljava/util/List;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->HiB()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/TKC;->Sj(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->TKC(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method
