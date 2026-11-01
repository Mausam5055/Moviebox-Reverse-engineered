.class final Lcom/google/android/exoplayer2/source/rtsp/l;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/l;->a:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/l;->d:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/source/rtsp/y$a;)Ljava/lang/String;
    .locals 3

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/rtsp/y$a;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/y$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/y;->c(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/google/android/exoplayer2/source/rtsp/y$a;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x2

    const-string v8, ":"

    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplayer2/source/rtsp/y;->s(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/rtsp/y$a;->a:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/exoplayer2/source/rtsp/l;->b:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/rtsp/y$a;->b:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v7

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/source/rtsp/y;->c(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/p0;->Z0([B)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/source/rtsp/y;->c(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/p0;->Z0([B)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v1, Lcom/google/android/exoplayer2/source/rtsp/l;->c:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/rtsp/y;->c(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/p0;->Z0([B)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/rtsp/l;->d:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\""

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/y$a;->a:Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/rtsp/l;->b:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/rtsp/l;->c:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object v10, v5, v6

    aput-object v11, v5, v7

    aput-object p2, v5, v3

    aput-object v8, v5, v2

    invoke-static {v9, v5}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v9, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\", opaque=\"%s\""

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/y$a;->a:Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/exoplayer2/source/rtsp/l;->b:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/rtsp/l;->c:Ljava/lang/String;

    iget-object v12, v1, Lcom/google/android/exoplayer2/source/rtsp/l;->d:Ljava/lang/String;

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v0, v13, v4

    aput-object v10, v13, v6

    aput-object v11, v13, v7

    aput-object p2, v13, v3

    aput-object v8, v13, v2

    aput-object v12, v13, v5

    invoke-static {v9, v13}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/ParserException;->createForManifestWithUnsupportedFeature(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/rtsp/y$a;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/rtsp/l;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/rtsp/l;->c(Lcom/google/android/exoplayer2/source/rtsp/y$a;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    const/4 p2, 0x0

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ParserException;->createForManifestWithUnsupportedFeature(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/l;->b(Lcom/google/android/exoplayer2/source/rtsp/y$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
