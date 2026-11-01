.class Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/sP/Sj/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/component/Jcg/sP/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Jcg/sP/EjP;Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Lcom/bytedance/sdk/component/sP/Sj/Zq;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "content-type"

    iget-object v3, v1, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    if-eqz v3, :cond_b

    if-nez v2, :cond_0

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    new-instance v2, Ljava/io/IOException;

    const-string v4, "No response"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v2}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/sP/Sj/vS;->sP(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v7, :cond_1

    const-string v6, ""

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v0

    invoke-static {v8}, Lcom/bytedance/sdk/component/Jcg/TKC/Sj;->Sj(Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->EjP()[B

    move-result-object v0

    new-instance v14, Lcom/bytedance/sdk/component/Jcg/sP;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->EjP()Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->sP()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Sj()J

    move-result-wide v12

    const/4 v9, 0x0

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/Jcg/sP;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v14, v0}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v14

    goto :goto_3

    :cond_4
    :try_start_2
    iget-object v4, v1, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    iget-boolean v4, v4, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->uA:Z

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->EjP()[B

    move-result-object v14

    new-instance v9, Ljava/lang/String;

    iget-object v4, v1, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    invoke-static {v4, v0}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/EjP;Lcom/bytedance/sdk/component/sP/Sj/uvD;)Lcom/bytedance/sdk/component/sP/Sj/uA;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/EjP;Lcom/bytedance/sdk/component/sP/Sj/uA;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {v9, v14, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v15, Lcom/bytedance/sdk/component/Jcg/sP;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->EjP()Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->sP()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Sj()J

    move-result-wide v12

    move-object v4, v15

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/Jcg/sP;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v15, v14}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v14, v15

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v3, v15

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    :try_start_4
    new-instance v14, Lcom/bytedance/sdk/component/Jcg/sP;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->EjP()Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->sP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->sP()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Sj()J

    move-result-wide v12

    move-object v4, v14

    invoke-direct/range {v4 .. v13}, Lcom/bytedance/sdk/component/Jcg/sP;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    :try_start_5
    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    invoke-static {v0, v14, v2}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/EjP;Lcom/bytedance/sdk/component/Jcg/sP;Lcom/bytedance/sdk/component/sP/Sj/Zq;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :cond_6
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    move-object v14, v3

    move-object v3, v4

    :goto_4
    if-eqz v14, :cond_7

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    invoke-virtual {v0, v2, v14}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V

    return-void

    :cond_7
    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    instance-of v4, v0, Lcom/bytedance/sdk/component/Jcg/Sj/sP;

    const-string v5, "Unexpected exception"

    if-eqz v4, :cond_9

    check-cast v0, Lcom/bytedance/sdk/component/Jcg/Sj/sP;

    iget-object v4, v1, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    if-nez v3, :cond_8

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_8
    new-instance v15, Lcom/bytedance/sdk/component/Jcg/sP;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->EjP()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->sP()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Sj()J

    move-result-wide v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v15

    invoke-direct/range {v5 .. v14}, Lcom/bytedance/sdk/component/Jcg/sP;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v4, v3, v15}, Lcom/bytedance/sdk/component/Jcg/Sj/sP;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;Lcom/bytedance/sdk/component/Jcg/sP;)V

    return-void

    :cond_9
    iget-object v2, v1, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    if-nez v3, :cond_a

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V

    :cond_b
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/EjP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method
