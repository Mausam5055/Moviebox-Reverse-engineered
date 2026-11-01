.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.super Ljava/lang/Object;

# interfaces
.implements Lo00/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;,
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;,
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field private c:Ljava/util/Set;

.field private final d:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->b:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->c:Ljava/util/Set;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->d:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->d:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$a;

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:I

    iget p1, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
