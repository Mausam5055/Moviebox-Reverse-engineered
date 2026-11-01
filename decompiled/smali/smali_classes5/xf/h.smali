.class public Lxf/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:J

.field d:J

.field e:J

.field f:I

.field g:I

.field h:I

.field i:[B

.field j:J

.field k:J


# direct methods
.method public constructor <init>(Lxf/h;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lxf/h;->c:J

    iput-wide v0, p0, Lxf/h;->d:J

    iput-wide v0, p0, Lxf/h;->e:J

    const/4 v2, -0x1

    iput v2, p0, Lxf/h;->f:I

    iput v2, p0, Lxf/h;->g:I

    iput v2, p0, Lxf/h;->h:I

    iput-wide v0, p0, Lxf/h;->j:J

    iput-wide v0, p0, Lxf/h;->k:J

    iget-object v0, p1, Lxf/h;->a:Ljava/lang/String;

    iput-object v0, p0, Lxf/h;->a:Ljava/lang/String;

    iget-object v0, p1, Lxf/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lxf/h;->b:Ljava/lang/String;

    iget v0, p1, Lxf/h;->g:I

    iput v0, p0, Lxf/h;->g:I

    iget-wide v0, p1, Lxf/h;->e:J

    iput-wide v0, p0, Lxf/h;->e:J

    iget-wide v0, p1, Lxf/h;->d:J

    iput-wide v0, p0, Lxf/h;->d:J

    iget-wide v0, p1, Lxf/h;->c:J

    iput-wide v0, p0, Lxf/h;->c:J

    iget v0, p1, Lxf/h;->f:I

    iput v0, p0, Lxf/h;->f:I

    iget v0, p1, Lxf/h;->h:I

    iput v0, p0, Lxf/h;->h:I

    iget-object v0, p1, Lxf/h;->i:[B

    iput-object v0, p0, Lxf/h;->i:[B

    iget-wide v0, p1, Lxf/h;->j:J

    iput-wide v0, p0, Lxf/h;->j:J

    iget-wide v0, p1, Lxf/h;->k:J

    iput-wide v0, p0, Lxf/h;->k:J

    return-void
.end method

.method constructor <init>([BLjava/io/InputStream;Ljava/nio/charset/Charset;Z)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lxf/h;->c:J

    iput-wide v0, p0, Lxf/h;->d:J

    iput-wide v0, p0, Lxf/h;->e:J

    const/4 p4, -0x1

    iput p4, p0, Lxf/h;->f:I

    iput p4, p0, Lxf/h;->g:I

    iput p4, p0, Lxf/h;->h:I

    iput-wide v0, p0, Lxf/h;->j:J

    iput-wide v0, p0, Lxf/h;->k:J

    array-length p4, p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p4}, Lxf/g;->a(Ljava/io/InputStream;[BII)V

    array-length p4, p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v0, p4, v1}, Lxf/d;->e([BIILjava/nio/ByteOrder;)Lxf/c;

    move-result-object p1

    invoke-virtual {p1}, Lxf/c;->a()I

    move-result v8

    int-to-long v1, v8

    const-wide/32 v3, 0x2014b50    # 1.6619997E-316

    cmp-long p4, v1, v3

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p4

    int-to-long v2, p4

    const-wide/16 v5, 0x0

    const-string v7, "Central Directory Entry"

    const-string v1, "unknown"

    const-string v4, "unknown"

    invoke-static/range {v1 .. v8}, Lxf/i;->o(Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;I)V

    :cond_0
    const/16 p4, 0x8

    invoke-virtual {p1, p4}, Lxf/c;->c(I)V

    invoke-virtual {p1}, Lxf/c;->b()S

    move-result p4

    const v1, 0xffff

    and-int v2, p4, v1

    and-int/lit8 v3, p4, 0x1

    if-nez v3, :cond_5

    and-int/lit16 p4, p4, 0x800

    if-eqz p4, :cond_1

    const-string p3, "UTF-8"

    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    :cond_1
    invoke-virtual {p1}, Lxf/c;->b()S

    move-result p4

    and-int/2addr p4, v1

    iput p4, p0, Lxf/h;->f:I

    invoke-virtual {p1}, Lxf/c;->b()S

    move-result p4

    and-int/2addr p4, v1

    iput p4, p0, Lxf/h;->g:I

    invoke-virtual {p1}, Lxf/c;->b()S

    move-result p4

    and-int/2addr p4, v1

    iput p4, p0, Lxf/h;->h:I

    invoke-virtual {p1}, Lxf/c;->a()I

    move-result p4

    int-to-long v2, p4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Lxf/h;->c:J

    invoke-virtual {p1}, Lxf/c;->a()I

    move-result p4

    int-to-long v2, p4

    and-long/2addr v2, v4

    iput-wide v2, p0, Lxf/h;->d:J

    invoke-virtual {p1}, Lxf/c;->a()I

    move-result p4

    int-to-long v2, p4

    and-long/2addr v2, v4

    iput-wide v2, p0, Lxf/h;->e:J

    invoke-virtual {p1}, Lxf/c;->b()S

    move-result p4

    and-int/2addr p4, v1

    invoke-virtual {p1}, Lxf/c;->b()S

    move-result v2

    and-int/2addr v2, v1

    invoke-virtual {p1}, Lxf/c;->b()S

    move-result v3

    and-int/2addr v1, v3

    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Lxf/c;->c(I)V

    invoke-virtual {p1}, Lxf/c;->a()I

    move-result p1

    int-to-long v6, p1

    and-long v3, v6, v4

    iput-wide v3, p0, Lxf/h;->j:J

    new-array p1, p4, [B

    invoke-static {p2, p1, v0, p4}, Lxf/g;->a(Ljava/io/InputStream;[BII)V

    invoke-static {p1}, Lxf/h;->a([B)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v0, p4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v3, p0, Lxf/h;->a:Ljava/lang/String;

    if-lez v2, :cond_2

    new-array p1, v2, [B

    iput-object p1, p0, Lxf/h;->i:[B

    invoke-static {p2, p1, v0, v2}, Lxf/g;->a(Ljava/io/InputStream;[BII)V

    :cond_2
    if-lez v1, :cond_3

    new-array p1, v1, [B

    invoke-static {p2, p1, v0, v1}, Lxf/g;->a(Ljava/io/InputStream;[BII)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1, v0, v1, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object p2, p0, Lxf/h;->b:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    new-instance p2, Ljava/util/zip/ZipException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Filename contains NUL byte: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/util/zip/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid General Purpose Bit Flag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a([B)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public b()J
    .locals 2

    iget-wide v0, p0, Lxf/h;->d:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lxf/h;->c:J

    return-wide v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxf/h;

    iget-object v1, p0, Lxf/h;->i:[B

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lxf/h;->i:[B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lxf/h;->i:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lxf/h;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lxf/h;->a:Ljava/lang/String;

    check-cast p1, Lxf/h;

    iget-object p1, p1, Lxf/h;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lxf/h;->f:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxf/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lxf/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lxf/h;->e:J

    return-wide v0
.end method

.method public j(J)V
    .locals 0

    iput-wide p1, p0, Lxf/h;->d:J

    return-void
.end method

.method public k(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lxf/h;->c:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad CRC32: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lxf/h;->f:I

    return-void
.end method

.method public m(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lxf/h;->e:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lxf/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncomment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lxf/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ntime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lxf/h;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nsize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lxf/h;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncompressedSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lxf/h;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncrc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lxf/h;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ncompressionMethod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lxf/h;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nmodDate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lxf/h;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nextra length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lxf/h;->i:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nlocalHeaderRelOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lxf/h;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ndataOffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lxf/h;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
