.class public Lorg/mvel2/util/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:[C

.field private b:I

.field private c:I

.field private d:[B

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mvel2/util/s;->c:I

    const/16 v0, 0xf

    iput v0, p0, Lorg/mvel2/util/s;->b:I

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mvel2/util/s;->a:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mvel2/util/s;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/util/s;->a:[C

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/util/s;->c:I

    iput p1, p0, Lorg/mvel2/util/s;->b:I

    return-void
.end method

.method private f(I)V
    .locals 3

    iget v0, p0, Lorg/mvel2/util/s;->b:I

    if-nez v0, :cond_0

    const/16 v0, 0xf

    iput v0, p0, Lorg/mvel2/util/s;->b:I

    :cond_0
    iget v0, p0, Lorg/mvel2/util/s;->b:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mvel2/util/s;->b:I

    new-array p1, v0, [C

    iget-object v0, p0, Lorg/mvel2/util/s;->a:[C

    iget v1, p0, Lorg/mvel2/util/s;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lorg/mvel2/util/s;->a:[C

    return-void
.end method


# virtual methods
.method public a(C)Lorg/mvel2/util/s;
    .locals 3

    iget v0, p0, Lorg/mvel2/util/s;->c:I

    iget v1, p0, Lorg/mvel2/util/s;->b:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/mvel2/util/s;->f(I)V

    :cond_0
    iget-object v0, p0, Lorg/mvel2/util/s;->a:[C

    iget v1, p0, Lorg/mvel2/util/s;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mvel2/util/s;->c:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lorg/mvel2/util/s;
    .locals 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lorg/mvel2/util/s;->b:I

    iget v2, p0, Lorg/mvel2/util/s;->c:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/mvel2/util/s;->f(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/mvel2/util/s;->a:[C

    iget v2, p0, Lorg/mvel2/util/s;->c:I

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    aput-char v0, v1, v2

    iget v0, p0, Lorg/mvel2/util/s;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mvel2/util/s;->c:I

    move v0, v3

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public c(Ljava/lang/Object;)Lorg/mvel2/util/s;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mvel2/util/s;->d(Ljava/lang/String;)Lorg/mvel2/util/s;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lorg/mvel2/util/s;->a:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public d(Ljava/lang/String;)Lorg/mvel2/util/s;
    .locals 4

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/mvel2/util/s;->b:I

    iget v2, p0, Lorg/mvel2/util/s;->c:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/mvel2/util/s;->f(I)V

    :cond_1
    iget-object v1, p0, Lorg/mvel2/util/s;->a:[C

    iget v2, p0, Lorg/mvel2/util/s;->c:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lorg/mvel2/util/s;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/mvel2/util/s;->c:I

    return-object p0
.end method

.method public e([CII)Lorg/mvel2/util/s;
    .locals 3

    iget v0, p0, Lorg/mvel2/util/s;->b:I

    iget v1, p0, Lorg/mvel2/util/s;->c:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_0

    invoke-direct {p0, p3}, Lorg/mvel2/util/s;->f(I)V

    :cond_0
    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    iget-object v0, p0, Lorg/mvel2/util/s;->a:[C

    iget v1, p0, Lorg/mvel2/util/s;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mvel2/util/s;->c:I

    aget-char v2, p1, p2

    aput-char v2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public g(II)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/util/s;->a:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public h()[C
    .locals 4

    iget-object v0, p0, Lorg/mvel2/util/s;->d:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/util/s;->d:[B

    iget-object v2, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/util/s;->d:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0

    :cond_1
    iget v0, p0, Lorg/mvel2/util/s;->c:I

    new-array v1, v0, [C

    iget-object v2, p0, Lorg/mvel2/util/s;->a:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lorg/mvel2/util/s;->c:I

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/mvel2/util/s;->g(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lorg/mvel2/util/s;->d:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/util/s;->d:[B

    iget v3, p0, Lorg/mvel2/util/s;->c:I

    iget-object v4, p0, Lorg/mvel2/util/s;->e:Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/util/s;->d:[B

    iget v3, p0, Lorg/mvel2/util/s;->c:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([BII)V

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lorg/mvel2/util/s;->c:I

    iget v2, p0, Lorg/mvel2/util/s;->b:I

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/util/s;->a:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/util/s;->a:[C

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method
