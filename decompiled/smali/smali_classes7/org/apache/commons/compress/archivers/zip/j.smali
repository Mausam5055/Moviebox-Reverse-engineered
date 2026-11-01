.class public Lorg/apache/commons/compress/archivers/zip/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/t;


# instance fields
.field private a:Lorg/apache/commons/compress/archivers/zip/ZipShort;

.field private b:[B

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/u;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/j;->c:[B

    return-void
.end method

.method public b(Lorg/apache/commons/compress/archivers/zip/ZipShort;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/j;->a:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public c([B)V
    .locals 0

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/u;->c([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/j;->b:[B

    return-void
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/j;->a:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/j;->a([B)V

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/j;->b:[B

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/j;->c([B)V

    :cond_0
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/j;->c([B)V

    return-void
.end method
