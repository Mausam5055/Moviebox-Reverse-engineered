.class public Lcom/transsion/athena/aethna/anehat/athena;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/transsion/athena/aethna/anehat/athena;


# instance fields
.field private b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

.field private c:Lcom/transsion/athena/config/data/model/anateh;


# direct methods
.method private constructor <init>(Lcom/transsion/athena/aethna/anehat/aethna/athena;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/athena/config/data/model/anateh;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/anateh;-><init>()V

    iput-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    iput-object p1, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    return-void
.end method

.method public static a(Lcom/transsion/athena/aethna/anehat/aethna/athena;)Lcom/transsion/athena/aethna/anehat/athena;
    .locals 2

    sget-object v0, Lcom/transsion/athena/aethna/anehat/athena;->a:Lcom/transsion/athena/aethna/anehat/athena;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/athena/aethna/anehat/athena;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/athena/aethna/anehat/athena;->a:Lcom/transsion/athena/aethna/anehat/athena;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/athena/aethna/anehat/athena;

    invoke-direct {v1, p0}, Lcom/transsion/athena/aethna/anehat/athena;-><init>(Lcom/transsion/athena/aethna/anehat/aethna/athena;)V

    sput-object v1, Lcom/transsion/athena/aethna/anehat/athena;->a:Lcom/transsion/athena/aethna/anehat/athena;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/transsion/athena/aethna/anehat/athena;->a:Lcom/transsion/athena/aethna/anehat/athena;

    return-object p0
.end method

.method private c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "63D4BEBEBC7ABCA4BC6A796B6AB06B766A6C7D706B6B756F70B07B6F71A4A5AEBCB2D4BEBEBC6A69BCA4BC7A6B69B16A796B6AB06B767D72726A6C65B07B6F71BCB2D4BEBEBC6A7BBCA4BC7A6B7BB16A796B6AB06B767D72726A6C65B07B6F71BCB2D4BEBEBC6F69BCA4BC7A6B69B06B767D72726A6C65B07B6F71BCB2D4BEBEBC6F7BBCA4BC7A6B7BB06B767D72726A6C65B07B6F71BCB2D4BEBEBC7BBCA4BCAF726F777B6F7078AF68A8AF696E726F7D7A7B6F7078BCB2D4BEBEBC77BCA4BCAF726F777B6F7078AF68ADAF6B797B6C796ABCB2D4BEBEBC69BCA4BCAF7D6A7679707DAF7B76797B736E6F75706AAF68ACAF696E726F7D7ABCB2D4BEBEBC787BBCA4BC68AEAC7BBCB2D4BEBEBC787ABCA4BC68AEAC7ABCB2D4BEBEBC7879BCA4BC68AEAC79BCB2D4BEBEBC7568BCA4BC7D7C7B7A79787776757473AD71706F6EBCB2D4BEBEBC67BCA4BCABA7ADA899A99B9CAD9CA5A6AC9BAEABA9AEADAB99A9ACADA8A79D9D98A9AA9DBCD461D4D4"

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-byte v2, v0, v1

    int-to-char v2, v2

    rsub-int v2, v2, 0xde

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/transsion/athena/config/data/model/ehanat;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->m:[B

    invoke-virtual {v0, v1}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a([B)V

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const-string v1, "initSDKConfig"

    invoke-static {v1, v0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    sget-object v1, Lcom/transsion/athena/config/data/model/ehanat;->m:[B

    invoke-virtual {v0, v1}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a([B)V

    :goto_3
    return-void

    :goto_4
    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    sget-object v2, Lcom/transsion/athena/config/data/model/ehanat;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    sget-object v2, Lcom/transsion/athena/config/data/model/ehanat;->m:[B

    invoke-virtual {v1, v2}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a([B)V

    throw v0
.end method


# virtual methods
.method public a(J)Lcom/transsion/athena/config/data/model/aethna;
    .locals 2

    new-instance v0, Lcom/transsion/athena/config/data/model/aethna;

    invoke-direct {v0}, Lcom/transsion/athena/config/data/model/aethna;-><init>()V

    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/athena/config/data/model/anateh;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/transsion/athena/config/data/model/ehanat;->a(Z)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/transsion/athena/config/data/model/ehanat;->h:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/athena/config/data/model/aethna;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/athena/aethna/anehat/athena;->e()Landroid/util/Pair;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/athena/config/data/model/aethna;->b:Landroid/util/Pair;

    iget-object p1, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/enatha;->f()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/transsion/athena/config/data/model/aethna;->c:J

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->b()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_1
    new-instance v1, Lcom/transsion/athena/config/data/model/athena;

    invoke-direct {v1}, Lcom/transsion/athena/config/data/model/athena;-><init>()V

    invoke-virtual {v1, p1}, Lcom/transsion/athena/config/data/model/athena;->a(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/os/Handler;Lcom/transsion/athena/aethna/aethna;)V
    .locals 7

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/enatha;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/transsion/athena/hatnea/athena;->a()Lcom/transsion/athena/hatnea/athena;

    move-result-object v2

    new-instance v3, Lcom/transsion/athena/hatnea/atenha;

    invoke-direct {v3, p1, v0, p2}, Lcom/transsion/athena/hatnea/atenha;-><init>(Landroid/os/Handler;Lcom/transsion/athena/config/data/model/enatha;Lcom/transsion/athena/aethna/aethna;)V

    invoke-virtual {v2, v3}, Lcom/transsion/athena/hatnea/athena;->a(Lcom/transsion/athena/hatnea/anateh;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/anateh;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/config/data/model/athena;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/athena;->e()I

    move-result v3

    if-lez v3, :cond_3

    int-to-long v3, v3

    const-wide/32 v5, 0x36ee80

    mul-long/2addr v3, v5

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/enatha;->c()J

    move-result-wide v3

    :goto_1
    invoke-virtual {v2, v3, v4, v1}, Lcom/transsion/athena/config/data/model/athena;->a(JI)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/transsion/athena/hatnea/athena;->a()Lcom/transsion/athena/hatnea/athena;

    move-result-object v5

    new-instance v6, Lcom/transsion/athena/hatnea/athaen;

    invoke-direct {v6, v2, v3, v4, p2}, Lcom/transsion/athena/hatnea/athaen;-><init>(Lcom/transsion/athena/config/data/model/athena;JLcom/transsion/athena/aethna/aethna;)V

    invoke-virtual {v5, v6}, Lcom/transsion/athena/hatnea/athena;->a(Lcom/transsion/athena/hatnea/anateh;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public a(Lcom/transsion/athena/config/data/model/athena;Ljava/lang/String;)V
    .locals 28
    .param p1    # Lcom/transsion/athena/config/data/model/athena;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-string v1, "cfg"

    const-string v2, "data"

    const-string v3, "url_config"

    const-string v4, "offline"

    const-string v5, "interval"

    const-string v6, "url"

    const-string v7, "ver"

    const-string v8, "gpct"

    const-string v9, "upct"

    const-string v10, "pr"

    const-string v11, "stats"

    const-string v12, "frq"

    const-string v13, "ur"

    const-string v14, "iw"

    const-string v15, "s"

    move-object/from16 v16, v8

    const-string v8, "num"

    move-object/from16 v17, v9

    const-string v9, "gmax"

    move-object/from16 v18, v10

    const-string v10, "gmin"

    move-object/from16 v19, v11

    const-string v11, "cv"

    move-object/from16 v20, v12

    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v21, v13

    move-object/from16 v13, p2

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v22, v14

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lcom/transsion/athena/config/data/model/athena;->c(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_6

    :cond_0
    move-object/from16 v22, v14

    :goto_0
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/transsion/athena/config/data/model/athena;->e(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/transsion/athena/config/data/model/athena;->c(I)V

    :cond_2
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/transsion/athena/config/data/model/athena;->d(I)V

    :cond_3
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/athena/config/data/model/athena;->c(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_14

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move v5, v3

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_14

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v13, "tids"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    move v13, v3

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_13

    move-object v14, v4

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/transsion/athena/config/data/model/athena;->a(J)Lcom/transsion/athena/config/data/model/TidConfigBean;

    move-result-object v23

    if-nez v23, :cond_5

    move-object/from16 v24, v1

    new-instance v1, Lcom/transsion/athena/config/data/model/TidConfigBean;

    invoke-direct {v1}, Lcom/transsion/athena/config/data/model/TidConfigBean;-><init>()V

    invoke-virtual {v1, v3, v4}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setTid(J)V

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/athena;->a(Lcom/transsion/athena/config/data/model/TidConfigBean;)V

    move-object/from16 v23, v1

    :goto_3
    move-object v3, v14

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    move-object/from16 v24, v1

    goto :goto_3

    :goto_4
    invoke-virtual {v3, v11, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_6
    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v1

    const-wide/32 v25, 0xea60

    move-object v14, v11

    move-object/from16 v27, v12

    int-to-long v11, v4

    if-lez v4, :cond_7

    mul-long v11, v11, v25

    :cond_7
    invoke-virtual {v1, v11, v12}, Lcom/transsion/athena/config/data/model/aatnhe;->b(J)V

    const/4 v1, 0x0

    invoke-virtual {v3, v10, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_8
    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/transsion/athena/config/data/model/aatnhe;->c(I)V

    const/16 v1, 0x64

    invoke-virtual {v3, v9, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_9
    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/transsion/athena/config/data/model/aatnhe;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/transsion/athena/config/data/model/aatnhe;->e(I)V

    const/16 v1, 0xa

    invoke-virtual {v3, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_b
    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v4

    int-to-long v11, v1

    mul-long v11, v11, v25

    invoke-virtual {v4, v11, v12}, Lcom/transsion/athena/config/data/model/aatnhe;->d(J)V

    move-object/from16 v1, v22

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    :cond_c
    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/transsion/athena/config/data/model/aatnhe;->f(I)V

    const/16 v4, 0x64

    move-object/from16 v11, v21

    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_d
    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/transsion/athena/config/data/model/aatnhe;->j(I)V

    move-object/from16 v4, v20

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    :cond_e
    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v12

    mul-int/lit8 v0, v20, 0x3c

    move-object/from16 v22, v1

    int-to-long v0, v0

    const-wide/16 v20, 0x3e8

    mul-long v0, v0, v20

    invoke-virtual {v12, v0, v1}, Lcom/transsion/athena/config/data/model/aatnhe;->a(J)V

    move-object/from16 v0, v19

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    :cond_f
    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/transsion/athena/config/data/model/aatnhe;->h(I)V

    move-object/from16 v1, v18

    const/4 v12, 0x0

    invoke-virtual {v3, v1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    :cond_10
    move-object/from16 v19, v0

    move/from16 v12, v18

    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/transsion/athena/config/data/model/aatnhe;->g(I)V

    const/4 v0, 0x1

    move-object/from16 v12, v17

    invoke-virtual {v3, v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    :cond_11
    move/from16 v0, v17

    move-object/from16 v17, v1

    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/athena/config/data/model/aatnhe;->i(I)V

    move-object/from16 v0, v16

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_12

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_12
    move-object/from16 v16, v0

    invoke-virtual/range {v23 .. v23}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTidConfig()Lcom/transsion/athena/config/data/model/aatnhe;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/aatnhe;->d(I)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move-object/from16 v20, v4

    move-object/from16 v21, v11

    move-object v11, v14

    move-object/from16 v18, v17

    move-object/from16 v1, v24

    move-object v4, v3

    move-object/from16 v17, v12

    move-object/from16 v12, v27

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_13
    move-object/from16 v24, v1

    move-object v3, v4

    move-object v14, v11

    move-object/from16 v27, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v18

    move-object/from16 v4, v20

    move-object/from16 v11, v21

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p1

    move-object v11, v14

    move-object v4, v3

    move-object/from16 v17, v12

    move-object/from16 v12, v27

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_14
    move-object/from16 v27, v12

    const-string v0, "table"

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "table"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/athena/config/data/model/athena;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/athena/config/data/model/TidConfigBean;

    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/TidConfigBean;->getTid()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    invoke-virtual {v2, v3}, Lcom/transsion/athena/config/data/model/TidConfigBean;->setEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_16
    move-object/from16 v1, p0

    :try_start_1
    iget-object v0, v1, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/athena/config/data/model/anateh;->a(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_7

    :cond_17
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->i()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/transsion/athena/config/data/model/ehanat;->a(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_6
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const-string v2, "updateAppConfig"

    invoke-static {v2, v0}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "dlt"

    const-string v1, "tz"

    const-string v2, "delays"

    const-string v3, "ver"

    const-string v4, "p"

    const-string v5, "networks"

    :try_start_0
    iget-object v6, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v6}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cv"

    invoke-virtual {v7, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lcom/transsion/athena/config/data/model/enatha;->d(J)V

    const-string p1, "threshold"

    invoke-virtual {v7, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/transsion/athena/config/data/model/enatha;->e(J)V

    const-string p1, "once"

    invoke-virtual {v7, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne p1, v9, :cond_0

    move p1, v9

    goto :goto_0

    :cond_0
    move p1, v8

    :goto_0
    invoke-virtual {v6, p1}, Lcom/transsion/athena/config/data/model/enatha;->b(Z)V

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v5, "url"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/transsion/athena/config/data/model/enatha;->c(Ljava/lang/String;)V

    const-string v5, "tids"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/transsion/athena/config/data/model/enatha;->b(Lorg/json/JSONObject;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/transsion/athena/config/data/model/enatha;->a(Lorg/json/JSONArray;)V

    :cond_2
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/transsion/athena/config/data/model/enatha;->f(J)V

    :cond_3
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object v2, p1, v8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p1, p1, v9

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v6, v2, p1}, Lcom/transsion/athena/config/data/model/enatha;->a(II)V

    :cond_4
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/transsion/athena/config/data/model/enatha;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v6, p1}, Lcom/transsion/athena/config/data/model/enatha;->d(I)V

    :cond_6
    const-string p1, "geo"

    const/4 v0, 0x6

    invoke-virtual {v7, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v6, p1}, Lcom/transsion/athena/config/data/model/enatha;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    const-string v0, "updateGlobalConfig"

    invoke-static {v0, p1}, Lcom/transsion/ga/anateh;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/athena;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v0, p1}, Lcom/transsion/athena/config/data/model/anateh;->a(Ljava/util/List;)V

    return-void
.end method

.method public b()Lcom/transsion/athena/config/data/model/anateh;
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    return-object v0
.end method

.method public b(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/athena/config/data/model/TidConfigBean;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/anateh;->c()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v0, p1}, Lcom/transsion/athena/config/data/model/anateh;->a(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/athena/config/data/model/athena;->j()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/transsion/athena/aethna/anehat/athena;->c()V

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    invoke-virtual {v0}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anateh;->a(Ljava/lang/String;)Lcom/transsion/athena/config/data/model/anateh;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/anateh;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iput-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    :goto_0
    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/anateh;->a(I)Lcom/transsion/athena/config/data/model/athena;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/athena;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/transsion/athena/config/data/model/ehanat;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public e()Landroid/util/Pair;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/enatha;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/config/data/model/anehat;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/transsion/athena/config/data/model/ehanat;->n:[B

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->d()V

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/anateh;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/anateh;->b()Lcom/transsion/athena/config/data/model/enatha;

    move-result-object v0

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/taaneh/athena;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/enatha;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/enatha;->a(Z)V

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/anateh;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->b(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/athena;->b:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/athena;->c:Lcom/transsion/athena/config/data/model/anateh;

    invoke-virtual {v1}, Lcom/transsion/athena/config/data/model/anateh;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
