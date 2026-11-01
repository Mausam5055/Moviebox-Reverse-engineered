.class public Lkf/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/File;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-static {p0}, Lkf/b;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p1}, Lkf/b;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lkf/a;->b([BI[BII)[B

    move-result-object p0

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p0
.end method

.method public static b([BI[BII)[B
    .locals 16

    move-object/from16 v0, p2

    move/from16 v1, p3

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6}, Ljava/io/InputStream;->skip(J)J

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    long-to-int v3, v9

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0, v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-wide/16 v9, 0x20

    invoke-virtual {v2, v9, v10}, Ljava/io/InputStream;->skip(J)J

    new-instance v11, Ljava/io/DataInputStream;

    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0, v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    add-long v12, v5, v9

    invoke-virtual {v2, v12, v13}, Ljava/io/InputStream;->skip(J)J

    new-instance v12, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v12, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0, v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    add-long/2addr v7, v5

    add-long/2addr v7, v9

    invoke-virtual {v2, v7, v8}, Ljava/io/InputStream;->skip(J)J

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v1, v3, [B

    const/4 v2, 0x3

    new-array v2, v2, [I

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_7

    move v7, v4

    :goto_1
    const/4 v8, 0x2

    if-gt v7, v8, :cond_0

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aget v7, v2, v4

    add-int v9, v5, v7

    const-string v10, "Corrupt by wrong patch file."

    if-gt v9, v3, :cond_6

    invoke-static {v12, v1, v5, v7}, Lkf/b;->b(Ljava/io/InputStream;[BII)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v4

    :goto_2
    aget v9, v2, v4

    if-ge v7, v9, :cond_2

    add-int v9, v6, v7

    move/from16 v13, p1

    if-ltz v9, :cond_1

    if-ge v9, v13, :cond_1

    add-int v14, v5, v7

    aget-byte v15, v1, v14

    aget-byte v9, p0, v9

    add-int/2addr v15, v9

    int-to-byte v9, v15

    aput-byte v9, v1, v14

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move/from16 v13, p1

    add-int/2addr v5, v9

    add-int/2addr v6, v9

    const/4 v7, 0x1

    aget v9, v2, v7

    add-int v14, v5, v9

    if-gt v14, v3, :cond_4

    invoke-static {v0, v1, v5, v9}, Lkf/b;->b(Ljava/io/InputStream;[BII)Z

    move-result v9

    if-eqz v9, :cond_3

    aget v7, v2, v7

    add-int/2addr v5, v7

    aget v7, v2, v8

    add-int/2addr v6, v7

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1
.end method
