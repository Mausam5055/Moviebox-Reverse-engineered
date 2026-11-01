.class public Lorg/apache/commons/compress/archivers/zip/o;
.super Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;


# instance fields
.field private d:I

.field private e:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field private f:I

.field private g:I

.field private h:J

.field private i:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

.field private j:I

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B

.field private o:[B

.field private p:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V

    return-void
.end method

.method private d(Ljava/lang/String;III)V
    .locals 3

    add-int v0, p3, p2

    if-gt v0, p4, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid X0017_StrongEncryptionHeader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t fit into "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes of data at position "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public e([BII)V
    .locals 4

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->a(II)V

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/o;->d:I

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/o;->e:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/o;->f:I

    add-int/lit8 v0, p2, 0x6

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/o;->g:I

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/o;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->a(II)V

    add-int/lit8 p3, p2, 0xc

    invoke-static {p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p3

    invoke-static {p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/o;->i:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    add-int/lit8 p2, p2, 0xe

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/o;->j:I

    :goto_0
    iget-wide p1, p0, Lorg/apache/commons/compress/archivers/zip/o;->h:J

    cmp-long p1, v2, p1

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :goto_1
    iget p2, p0, Lorg/apache/commons/compress/archivers/zip/o;->j:I

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0x1

    add-long/2addr v2, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public f([BII)V
    .locals 12

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->a(II)V

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v1

    const-string v2, "ivSize"

    invoke-direct {p0, v2, v1, v0, p3}, Lorg/apache/commons/compress/archivers/zip/o;->d(Ljava/lang/String;III)V

    add-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/o;->k:[B

    add-int/lit8 v2, v1, 0x10

    invoke-virtual {p0, v2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->a(II)V

    add-int/2addr p2, v1

    add-int/lit8 v3, p2, 0x6

    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/o;->d:I

    add-int/lit8 v3, p2, 0x8

    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/o;->e:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    add-int/lit8 v3, p2, 0xa

    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/o;->f:I

    add-int/lit8 v3, p2, 0xc

    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/compress/archivers/zip/o;->g:I

    add-int/lit8 v3, p2, 0xe

    invoke-static {p1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    const-string v4, "erdSize"

    invoke-direct {p0, v4, v3, v2, p3}, Lorg/apache/commons/compress/archivers/zip/o;->d(Ljava/lang/String;III)V

    add-int/lit8 v2, p2, 0x10

    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/o;->l:[B

    add-int/lit8 v4, v1, 0x14

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->a(II)V

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/o;->h:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    const-string v5, " is too small to hold CRC"

    const-string v6, "Invalid X0017_StrongEncryptionHeader: vSize "

    const-string v7, "vSize"

    if-nez v2, :cond_1

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->a(II)V

    add-int/lit8 v2, p2, 0x14

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    add-int/lit8 v1, v1, 0x16

    add-int/2addr v1, v3

    invoke-direct {p0, v7, v2, v1, p3}, Lorg/apache/commons/compress/archivers/zip/o;->d(Ljava/lang/String;III)V

    if-lt v2, v0, :cond_0

    add-int/lit8 p2, p2, 0x16

    add-int/2addr p2, v3

    add-int/lit8 p3, v2, -0x4

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/o;->o:[B

    add-int/2addr p2, v2

    sub-int/2addr p2, v0

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/o;->p:[B

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v4, v4, 0x6

    invoke-virtual {p0, v4, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->a(II)V

    add-int/lit8 v2, p2, 0x14

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;->getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/zip/o;->i:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$HashAlgorithm;

    add-int/lit8 v2, p2, 0x16

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v4

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/o;->j:I

    add-int/lit8 v4, p2, 0x18

    add-int/2addr v4, v3

    invoke-static {p1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v8

    iget v9, p0, Lorg/apache/commons/compress/archivers/zip/o;->j:I

    new-array v10, v9, [B

    iput-object v10, p0, Lorg/apache/commons/compress/archivers/zip/o;->m:[B

    if-lt v8, v9, :cond_3

    sub-int v9, v8, v9

    new-array v9, v9, [B

    iput-object v9, p0, Lorg/apache/commons/compress/archivers/zip/o;->n:[B

    add-int/lit8 v9, v1, 0x18

    add-int/2addr v9, v3

    const-string v10, "resize"

    invoke-direct {p0, v10, v8, v9, p3}, Lorg/apache/commons/compress/archivers/zip/o;->d(Ljava/lang/String;III)V

    iget-object v9, p0, Lorg/apache/commons/compress/archivers/zip/o;->m:[B

    iget v10, p0, Lorg/apache/commons/compress/archivers/zip/o;->j:I

    const/4 v11, 0x0

    invoke-static {p1, v4, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v9, p0, Lorg/apache/commons/compress/archivers/zip/o;->j:I

    add-int/2addr v4, v9

    iget-object v10, p0, Lorg/apache/commons/compress/archivers/zip/o;->n:[B

    sub-int v9, v8, v9

    invoke-static {p1, v4, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v1, 0x1a

    add-int/2addr v4, v3

    add-int/2addr v4, v8

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->a(II)V

    add-int/lit8 p2, p2, 0x1a

    add-int/2addr p2, v3

    add-int/2addr p2, v8

    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result p2

    if-lt p2, v0, :cond_2

    add-int/lit8 v1, v1, 0x16

    add-int/2addr v1, v3

    add-int/2addr v1, v8

    invoke-direct {p0, v7, p2, v1, p3}, Lorg/apache/commons/compress/archivers/zip/o;->d(Ljava/lang/String;III)V

    add-int/lit8 p3, p2, -0x4

    new-array v1, p3, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/o;->o:[B

    new-array v3, v0, [B

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/o;->p:[B

    add-int/2addr v2, v8

    invoke-static {p1, v2, v1, v11, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/o;->p:[B

    invoke-static {p1, v2, p2, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid X0017_StrongEncryptionHeader: resize "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is too small to hold hashSize"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lorg/apache/commons/compress/archivers/zip/o;->j:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromCentralDirectoryData([BII)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/o;->e([BII)V

    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;->parseFromLocalFileData([BII)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/o;->f([BII)V

    return-void
.end method
