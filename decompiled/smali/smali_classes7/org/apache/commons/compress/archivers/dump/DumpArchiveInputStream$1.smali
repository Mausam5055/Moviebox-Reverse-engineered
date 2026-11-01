.class Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/dump/a;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/dump/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    check-cast p2, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveInputStream$1;->compare(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;)I
    .locals 1

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const p1, 0x7fffffff

    return p1
.end method
