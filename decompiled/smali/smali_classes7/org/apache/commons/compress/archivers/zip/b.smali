.class public Lorg/apache/commons/compress/archivers/zip/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/t;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final g:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/zip/CRC32;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x756e

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/b;->g:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->a:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->b:I

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->c:I

    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->e:Z

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->f:Ljava/util/zip/CRC32;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected b(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xa000

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x4000

    goto :goto_0

    :cond_1
    const v0, 0x8000

    :goto_0
    and-int/lit16 p1, p1, 0xfff

    or-int/2addr p1, v0

    return p1
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/b;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/b;

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, v0, Lorg/apache/commons/compress/archivers/zip/b;->f:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->e:Z

    iget p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->a:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/b;->b(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->a:I

    return-void
.end method

.method public g(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/b;->b(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->a:I

    return-void
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/b;->g:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/b;->parseFromLocalFileData([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 5

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    add-int/lit8 v2, p3, -0x4

    new-array v3, v2, [B

    add-int/lit8 p2, p2, 0x4

    const/4 v4, 0x0

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->f:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->f:Ljava/util/zip/CRC32;

    invoke-virtual {p1, v3}, Ljava/util/zip/CRC32;->update([B)V

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/zip/b;->f:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_3

    invoke-static {v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p1

    const/4 p2, 0x2

    invoke-static {v3, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    long-to-int p2, v0

    new-array v0, p2, [B

    const/4 v1, 0x6

    invoke-static {v3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->b:I

    const/16 v1, 0x8

    invoke-static {v3, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/b;->c:I

    if-nez p2, :cond_0

    const-string p2, ""

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/b;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0xe

    if-gt p2, p3, :cond_2

    const/16 p3, 0xa

    invoke-static {v3, p3, v0, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/b;->d:Ljava/lang/String;

    :goto_0
    and-int/lit16 p2, p1, 0x4000

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/b;->f(Z)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/b;->g(I)V

    return-void

    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad symbolic link name length "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in ASI extra field"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p3, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad CRC checksum, expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " instead of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
