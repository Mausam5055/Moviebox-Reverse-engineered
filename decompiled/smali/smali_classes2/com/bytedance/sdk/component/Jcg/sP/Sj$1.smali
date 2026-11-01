.class Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/sP/Sj/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

.field final synthetic sP:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Jcg/sP/Sj;Lcom/bytedance/sdk/component/Jcg/Sj/Sj;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iput-wide p3, p0, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->sP:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Lcom/bytedance/sdk/component/sP/Sj/Zq;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/vS;->sP(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v13, Lcom/bytedance/sdk/component/Jcg/sP;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->EjP()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->sP()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Sj()J

    move-result-wide v10

    const/4 v7, 0x0

    move-object v2, v13

    move-object v6, v0

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/Jcg/sP;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->EjP()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->Sj()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    invoke-static {v0}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj(Ljava/util/Map;)J

    move-result-wide v2

    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP(Ljava/util/Map;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    iget-wide v8, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->sP:J

    add-long/2addr v2, v8

    const-string v8, "Content-Range"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "bytes "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->sP:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x1

    sub-long v10, v2, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v10

    if-ne v10, v7, :cond_2

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/Sj;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The Content-Range Header is invalid Assume["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] vs Real["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], please remove the temporary file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v5, v5, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V

    return-void

    :cond_2
    cmp-long v8, v2, v4

    const-string v9, "Rename fail"

    if-lez v8, :cond_4

    iget-object v8, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v8, v8, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v8, v8, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v8, v10, v2

    if-nez v8, :cond_4

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v2, v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP:Ljava/io/File;

    iget-object v0, v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj:Ljava/io/File;

    invoke-virtual {v13, v0}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj(Ljava/io/File;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    invoke-virtual {v0, v2, v13}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V

    return-void

    :cond_3
    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V

    return-void

    :cond_4
    const/4 v8, 0x0

    :try_start_0
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v11, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v11, v11, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP:Ljava/io/File;

    const-string v14, "rw"

    invoke-direct {v10, v11, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v6, :cond_5

    :try_start_1
    iget-wide v14, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->sP:J

    invoke-virtual {v10, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v14, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->sP:J

    goto :goto_2

    :cond_5
    invoke-virtual {v10, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    move-wide v14, v4

    goto :goto_2

    :catchall_1
    move-object v10, v8

    goto :goto_1

    :goto_2
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->TKC()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v0}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->TKC(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, v8, Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v8, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_9

    :cond_6
    :goto_3
    const/16 v0, 0x4000

    :try_start_3
    new-array v0, v0, [B

    move-wide/from16 v16, v4

    const/4 v11, 0x0

    :goto_4
    rsub-int v12, v11, 0x4000

    invoke-virtual {v8, v0, v11, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eq v12, v7, :cond_a

    add-int/2addr v11, v12

    move-object/from16 p2, v8

    int-to-long v7, v12

    add-long v16, v16, v7

    const-wide/16 v7, 0x4000

    :try_start_4
    rem-long v7, v16, v7

    cmp-long v7, v7, v4

    if-eqz v7, :cond_7

    iget-wide v7, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->sP:J

    sub-long v7, v2, v7

    cmp-long v7, v16, v7

    if-nez v7, :cond_8

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v8, p2

    goto/16 :goto_9

    :cond_7
    :goto_5
    invoke-virtual {v10, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v7, 0x0

    invoke-virtual {v10, v0, v7, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v7, v11

    add-long/2addr v14, v7

    const/4 v11, 0x0

    :cond_8
    iget-object v7, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    invoke-static {v7}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP(Lcom/bytedance/sdk/component/Jcg/sP/Sj;)Z

    move-result v7

    if-nez v7, :cond_9

    move-object/from16 v8, p2

    const/4 v7, -0x1

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "net is cancel"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 p2, v8

    if-eqz v11, :cond_b

    invoke-virtual {v10, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v7, 0x0

    invoke-virtual {v10, v0, v7, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_6

    :cond_b
    const/4 v7, 0x0

    :goto_6
    if-nez v6, :cond_c

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    :cond_c
    cmp-long v0, v2, v4

    if-lez v0, :cond_e

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v2, v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP:Ljava/io/File;

    iget-object v0, v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj:Ljava/io/File;

    invoke-virtual {v13, v0}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj(Ljava/io/File;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    invoke-virtual {v0, v2, v13}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V

    goto :goto_8

    :cond_d
    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V

    goto :goto_8

    :cond_e
    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iget-object v4, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " tempFile.length() == fileSize is"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v9, v9, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->sP:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v2, v11, v2

    if-nez v2, :cond_f

    const/4 v12, 0x1

    goto :goto_7

    :cond_f
    move v12, v7

    :goto_7
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_8
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    :try_start_6
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    return-void

    :catchall_6
    move-exception v0

    move-object/from16 p2, v8

    :goto_9
    :try_start_7
    iget-object v2, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iget-object v3, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V

    if-nez v6, :cond_10

    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/Sj;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    goto :goto_b

    :cond_10
    :goto_a
    if-eqz v8, :cond_11

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :catchall_8
    :cond_11
    :try_start_9
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :catchall_9
    return-void

    :goto_b
    if-eqz v8, :cond_12

    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :catchall_a
    :cond_12
    :try_start_b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :catchall_b
    throw v0

    :cond_13
    iget-object v0, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iget-object v2, v1, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    invoke-virtual {v0, v2, v13}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V

    :cond_14
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/Sj$1;->TKC:Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/Sj;)V

    return-void
.end method
