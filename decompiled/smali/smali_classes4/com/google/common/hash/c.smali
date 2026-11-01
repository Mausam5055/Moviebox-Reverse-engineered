.class abstract Lcom/google/common/hash/c;
.super Lcom/google/common/hash/b;


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:I

.field private final c:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lcom/google/common/hash/c;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Lcom/google/common/hash/b;-><init>()V

    rem-int v0, p2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    add-int/lit8 v0, p2, 0x7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/google/common/hash/c;->b:I

    iput p1, p0, Lcom/google/common/hash/c;->c:I

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/g;->a(Ljava/nio/Buffer;)V

    :goto_0
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/c;->c:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->n(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/common/hash/c;->l()V

    :cond_0
    return-void
.end method

.method private p(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/e;
    .locals 4

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/c;->m()V

    return-object p0

    :cond_0
    iget v0, p0, Lcom/google/common/hash/c;->b:I

    iget-object v1, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/common/hash/c;->l()V

    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/c;->c:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->n(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/google/common/hash/HashCode;
    .locals 2

    invoke-direct {p0}, Lcom/google/common/hash/c;->l()V

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/g;->a(Ljava/nio/Buffer;)V

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->o(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/hash/g;->b(Ljava/nio/Buffer;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/hash/c;->k()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final d([BII)Lcom/google/common/hash/e;
    .locals 0

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/hash/c;->p(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/e;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/e;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Lcom/google/common/hash/c;->p(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/e;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v1
.end method

.method public final f(I)Lcom/google/common/hash/e;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/c;->m()V

    return-object p0
.end method

.method public final h(J)Lcom/google/common/hash/e;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/c;->m()V

    return-object p0
.end method

.method public final j(C)Lcom/google/common/hash/e;
    .locals 1

    iget-object v0, p0, Lcom/google/common/hash/c;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/c;->m()V

    return-object p0
.end method

.method protected abstract k()Lcom/google/common/hash/HashCode;
.end method

.method protected abstract n(Ljava/nio/ByteBuffer;)V
.end method

.method protected abstract o(Ljava/nio/ByteBuffer;)V
.end method
