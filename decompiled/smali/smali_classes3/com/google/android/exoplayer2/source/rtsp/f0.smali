.class final Lcom/google/android/exoplayer2/source/rtsp/f0;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JILandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f0;->a:J

    iput p3, p0, Lcom/google/android/exoplayer2/source/rtsp/f0;->b:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/f0;->c:Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/net/Uri;)Lcom/google/common/collect/ImmutableList;
    .locals 18

    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    const-string v1, ","

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/p0;->S0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_a

    aget-object v5, v1, v4

    const-string v6, ";"

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/p0;->S0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v12, v3

    const/4 v13, 0x0

    const/4 v14, -0x1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    if-ge v12, v7, :cond_7

    aget-object v8, v6, v12

    :try_start_0
    const-string v9, "="

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/p0;->T0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v11, v9, v3

    const/4 v3, 0x1

    aget-object v9, v9, v3

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v3, 0x1bc5f

    move-object/from16 v17, v1

    const/4 v1, 0x2

    if-eq v10, v3, :cond_2

    const v3, 0x1c56f

    if-eq v10, v3, :cond_1

    const v3, 0x5ad9263b

    if-eq v10, v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "rtptime"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_1
    const-string v3, "url"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const-string v3, "seq"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, -0x1

    :goto_3
    if-eqz v3, :cond_6

    const/4 v10, 0x1

    if-eq v3, v10, :cond_5

    if-ne v3, v1, :cond_4

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    :goto_4
    move-object/from16 v1, p1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    invoke-static {v11, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_5
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    goto :goto_4

    :cond_6
    move-object/from16 v1, p1

    invoke-static {v9, v1}, Lcom/google/android/exoplayer2/source/rtsp/f0;->b(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v17

    const/4 v3, 0x0

    goto :goto_1

    :goto_6
    invoke-static {v8, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v1, p1

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const/4 v3, -0x1

    move-wide v8, v15

    if-ne v14, v3, :cond_9

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v8, v6

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    new-instance v3, Lcom/google/android/exoplayer2/source/rtsp/f0;

    invoke-direct {v3, v8, v9, v14, v13}, Lcom/google/android/exoplayer2/source/rtsp/f0;-><init>(JILandroid/net/Uri;)V

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    :goto_8
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_a
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "rtsp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "rtsp://"

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/util/n0;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/n0;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_1
    return-object p0
.end method
