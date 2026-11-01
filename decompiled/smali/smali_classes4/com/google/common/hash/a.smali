.class abstract Lcom/google/common/hash/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/hash/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hashBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/HashCode;
    .locals 1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/a;->newHasher(I)Lcom/google/common/hash/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/e;->e(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashBytes([B)Lcom/google/common/hash/HashCode;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/hash/a;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/m;->t(III)V

    invoke-virtual {p0, p3}, Lcom/google/common/hash/a;->newHasher(I)Lcom/google/common/hash/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/e;->d([BII)Lcom/google/common/hash/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/common/hash/a;->newHasher(I)Lcom/google/common/hash/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/e;->f(I)Lcom/google/common/hash/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/common/hash/a;->newHasher(I)Lcom/google/common/hash/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/e;->h(J)Lcom/google/common/hash/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/hash/d;->newHasher()Lcom/google/common/hash/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/e;->a(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
    .locals 1

    invoke-interface {p0}, Lcom/google/common/hash/d;->newHasher()Lcom/google/common/hash/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/e;->g(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/hash/a;->newHasher(I)Lcom/google/common/hash/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/e;->c(Ljava/lang/CharSequence;)Lcom/google/common/hash/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/e;->b()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public newHasher(I)Lcom/google/common/hash/e;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expectedInputSize must be >= 0 but was %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/m;->f(ZLjava/lang/String;I)V

    invoke-interface {p0}, Lcom/google/common/hash/d;->newHasher()Lcom/google/common/hash/e;

    move-result-object p1

    return-object p1
.end method
