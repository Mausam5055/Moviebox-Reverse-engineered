.class public Lorg/apache/commons/compress/archivers/zip/Zip64RequiredException;
.super Ljava/util/zip/ZipException;


# static fields
.field static final ARCHIVE_TOO_BIG_MESSAGE:Ljava/lang/String; = "Archive\'s size exceeds the limit of 4GByte."

.field static final TOO_MANY_ENTRIES_MESSAGE:Ljava/lang/String; = "Archive contains more than 65535 entries."

.field private static final serialVersionUID:J = 0x132ddd9L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static getEntryTooBigMessage(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
