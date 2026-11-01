.class public Lorg/apache/commons/compress/archivers/zip/q;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/t;


# static fields
.field static final f:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private static final g:[B


# instance fields
.field private a:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private b:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

.field private d:Lorg/apache/commons/compress/archivers/zip/ZipLong;

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/q;->f:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/q;->g:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/q;->f:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 2

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q;->e:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x1c

    if-lt p3, v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/q;->parseFromLocalFileData([BII)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-ne p3, v0, :cond_1

    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/q;->a:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p3, p2, 0x8

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p3}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q;->b:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 p2, p2, 0x10

    new-instance p3, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {p3, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object p3, p0, Lorg/apache/commons/compress/archivers/zip/q;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    goto :goto_0

    :cond_1
    rem-int/lit8 v0, p3, 0x8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    add-int/2addr p2, p3

    sub-int/2addr p2, v1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q;->d:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    :cond_2
    :goto_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    if-lt p3, v0, :cond_3

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/q;->a:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 v0, p2, 0x8

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/q;->b:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 v0, p2, 0x10

    add-int/lit8 v1, p3, -0x10

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/zip/q;->c:Lorg/apache/commons/compress/archivers/zip/ZipEightByteInteger;

    add-int/lit8 v0, p2, 0x18

    add-int/lit8 v1, p3, -0x18

    :cond_1
    const/4 p2, 0x4

    if-lt v1, p2, :cond_2

    new-instance p2, Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-direct {p2, p1, v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;-><init>([BI)V

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/zip/q;->d:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/util/zip/ZipException;

    const-string p2, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
