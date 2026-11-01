.class public Ltf/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_7

    if-nez v3, :cond_7

    add-int/2addr v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try Extracting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "Tinker.BasePatchInternal"

    invoke-static {v5, v3, v4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v3

    goto/16 :goto_5

    :cond_1
    :goto_1
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v3, 0x21

    :try_start_2
    invoke-static {v3, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNewerOrEqualThanVersion(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->setReadOnly()Z

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v3, v6

    goto :goto_5

    :cond_2
    :goto_2
    const/16 v3, 0x1000

    new-array v3, v3, [B

    :goto_3
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v6, v3, v1, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :cond_3
    invoke-static {v6}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lpf/b;->a(Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    if-eqz p4, :cond_4

    invoke-static {p2, p3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    goto :goto_4

    :cond_4
    invoke-static {p2, p3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    goto :goto_4

    :cond_5
    move v3, v0

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const-string v4, "isExtractionSuccessful: %b"

    invoke-static {v5, v4, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v3, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete corrupted dex "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    :goto_5
    invoke-static {v3}, Lpf/b;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lpf/b;->a(Ljava/lang/Object;)V

    throw p0

    :cond_7
    return v3
.end method

.method public static b(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    const/4 p0, -0x4

    return p0

    :cond_1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    const/4 p0, -0x8

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
