.class public abstract Lw00/b;
.super Ljava/lang/Object;


# static fields
.field private static a:[Z

.field private static b:[C

.field private static c:[C

.field private static d:[C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x20

    const/4 v1, 0x1

    const/16 v2, 0xf

    const/16 v3, 0x80

    new-array v4, v3, [Z

    sput-object v4, Lw00/b;->a:[Z

    new-array v4, v3, [C

    sput-object v4, Lw00/b;->b:[C

    new-array v3, v3, [C

    sput-object v3, Lw00/b;->c:[C

    const/16 v3, 0x46

    const/16 v4, 0x37

    const/16 v5, 0x10

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    sput-object v5, Lw00/b;->d:[C

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v0, :cond_0

    sget-object v7, Lw00/b;->a:[Z

    aput-boolean v1, v7, v6

    sget-object v7, Lw00/b;->b:[C

    sget-object v8, Lw00/b;->d:[C

    shr-int/lit8 v9, v6, 0x4

    aget-char v9, v8, v9

    aput-char v9, v7, v6

    sget-object v7, Lw00/b;->c:[C

    and-int/lit8 v9, v6, 0xf

    aget-char v8, v8, v9

    aput-char v8, v7, v6

    add-int/2addr v6, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lw00/b;->a:[Z

    const/16 v6, 0x7f

    aput-boolean v1, v0, v6

    sget-object v0, Lw00/b;->b:[C

    aput-char v4, v0, v6

    sget-object v0, Lw00/b;->c:[C

    aput-char v3, v0, v6

    new-array v0, v2, [C

    fill-array-data v0, :array_1

    :goto_1
    if-ge v5, v2, :cond_1

    aget-char v3, v0, v5

    sget-object v4, Lw00/b;->a:[Z

    aput-boolean v1, v4, v3

    sget-object v4, Lw00/b;->b:[C

    sget-object v6, Lw00/b;->d:[C

    shr-int/lit8 v7, v3, 0x4

    aget-char v7, v6, v7

    aput-char v7, v4, v3

    sget-object v4, Lw00/b;->c:[C

    and-int/lit8 v7, v3, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v3

    add-int/2addr v5, v1

    goto :goto_1

    :cond_1
    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/text/StringCharacterIterator;

    invoke-direct {v2, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/text/CharacterIterator;->first()C

    move-result p0

    :goto_0
    const v3, 0xffff

    if-eq p0, v3, :cond_3

    if-ne p0, v0, :cond_1

    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    move-result p0

    if-eq p0, v3, :cond_2

    const/16 v4, 0x10

    invoke-static {p0, v4}, Ljava/lang/Character;->digit(CI)I

    move-result p0

    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    move-result v5

    if-eq v5, v3, :cond_2

    invoke-static {v5, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 p0, p0, 0x4

    add-int/2addr p0, v3

    int-to-char p0, p0

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    move-result p0

    goto :goto_0

    :cond_3
    const-string p0, "UTF-8"

    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    const/16 v4, 0x25

    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-lt v5, v6, :cond_0

    goto :goto_2

    :cond_0
    sget-object v6, Lw00/b;->a:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lw00/b;->b:[C

    aget-char v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lw00/b;->c:[C

    aget-char v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    int-to-char v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-ge v3, v0, :cond_8

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_8

    aget-byte v5, v0, v1

    if-gez v5, :cond_6

    add-int/lit16 v5, v5, 0x100

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lw00/b;->d:[C

    shr-int/lit8 v7, v5, 0x4

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lw00/b;->d:[C

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v6, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    sget-object v6, Lw00/b;->a:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_7

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lw00/b;->b:[C

    aget-char v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v6, Lw00/b;->c:[C

    aget-char v5, v6, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lw00/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-string v1, "file"

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    sget-char v0, Ljava/io/File;->pathSeparatorChar:C

    const/16 v1, 0x3b

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :try_start_1
    invoke-static {p0}, Lw00/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "user.dir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    return-object v0

    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not convert URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " to path: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can only handle valid file: URIs, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
