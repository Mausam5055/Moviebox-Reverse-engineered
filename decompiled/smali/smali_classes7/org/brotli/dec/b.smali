.class public Lorg/brotli/dec/b;
.super Ljava/io/InputStream;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private final d:Lorg/brotli/dec/j;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/16 v0, 0x4000

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/brotli/dec/b;-><init>(Ljava/io/InputStream;I[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I[B)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Lorg/brotli/dec/j;

    invoke-direct {v0}, Lorg/brotli/dec/j;-><init>()V

    iput-object v0, p0, Lorg/brotli/dec/b;->d:Lorg/brotli/dec/j;

    if-lez p2, :cond_2

    if-eqz p1, :cond_1

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/brotli/dec/b;->a:[B

    const/4 p2, 0x0

    iput p2, p0, Lorg/brotli/dec/b;->b:I

    iput p2, p0, Lorg/brotli/dec/b;->c:I

    :try_start_0
    invoke-static {v0, p1}, Lorg/brotli/dec/j;->c(Lorg/brotli/dec/j;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/brotli/dec/BrotliRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_0

    invoke-static {v0, p3}, Lorg/brotli/dec/d;->s(Lorg/brotli/dec/j;[B)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    const-string p3, "Brotli decoder initialization failed"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad buffer size:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/brotli/dec/b;->d:Lorg/brotli/dec/j;

    invoke-static {v0}, Lorg/brotli/dec/j;->a(Lorg/brotli/dec/j;)V

    return-void
.end method

.method public read()I
    .locals 3

    iget v0, p0, Lorg/brotli/dec/b;->c:I

    iget v1, p0, Lorg/brotli/dec/b;->b:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/brotli/dec/b;->a:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/brotli/dec/b;->read([BII)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/b;->b:I

    iput v2, p0, Lorg/brotli/dec/b;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/brotli/dec/b;->a:[B

    iget v1, p0, Lorg/brotli/dec/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/brotli/dec/b;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 4

    if-ltz p2, :cond_5

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lorg/brotli/dec/b;->b:I

    iget v2, p0, Lorg/brotli/dec/b;->c:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/brotli/dec/b;->a:[B

    iget v3, p0, Lorg/brotli/dec/b;->c:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/brotli/dec/b;->c:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/brotli/dec/b;->c:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    if-nez p3, :cond_1

    return v1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/brotli/dec/b;->d:Lorg/brotli/dec/j;

    iput-object p1, v2, Lorg/brotli/dec/j;->Z:[B

    iput p2, v2, Lorg/brotli/dec/j;->U:I

    iput p3, v2, Lorg/brotli/dec/j;->V:I

    iput v0, v2, Lorg/brotli/dec/j;->W:I

    invoke-static {v2}, Lorg/brotli/dec/d;->i(Lorg/brotli/dec/j;)V

    iget-object p1, p0, Lorg/brotli/dec/b;->d:Lorg/brotli/dec/j;

    iget p1, p1, Lorg/brotli/dec/j;->W:I
    :try_end_0
    .catch Lorg/brotli/dec/BrotliRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    add-int/2addr p1, v1

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    const-string p3, "Brotli stream decoding failed"

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer overflow: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad offset: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
