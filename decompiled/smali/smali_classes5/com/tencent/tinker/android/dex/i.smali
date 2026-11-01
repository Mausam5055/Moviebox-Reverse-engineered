.class public Lcom/tencent/tinker/android/dex/i;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# instance fields
.field public b:I

.field public c:[I

.field public d:[B


# direct methods
.method public constructor <init>(II[I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/i;->b:I

    iput-object p3, p0, Lcom/tencent/tinker/android/dex/i;->c:[I

    iput-object p4, p0, Lcom/tencent/tinker/android/dex/i;->d:[B

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/i;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/i;->b:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/i;->b:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/i;->c:[I

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/i;->c:[I

    invoke-static {v0, v1}, Lgf/c;->e([I[I)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/i;->d:[B

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/i;->d:[B

    invoke-static {v0, p1}, Lgf/c;->d([B[B)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/i;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/i;->a(Lcom/tencent/tinker/android/dex/i;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/i;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/i;->a(Lcom/tencent/tinker/android/dex/i;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/tencent/tinker/android/dex/i;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/i;->c:[I

    iget-object v2, p0, Lcom/tencent/tinker/android/dex/i;->d:[B

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lgf/e;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
