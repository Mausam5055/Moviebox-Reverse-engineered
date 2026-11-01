.class public final Lcom/tencent/tinker/android/dex/s;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# instance fields
.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/s;->b:I

    iput p3, p0, Lcom/tencent/tinker/android/dex/s;->c:I

    iput p4, p0, Lcom/tencent/tinker/android/dex/s;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/s;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/s;->b:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/s;->b:I

    invoke-static {v0, v1}, Lgf/c;->h(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/s;->c:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/s;->c:I

    invoke-static {v0, v1}, Lgf/c;->h(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tinker/android/dex/s;->d:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/s;->d:I

    invoke-static {v0, p1}, Lgf/c;->c(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/s;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/s;->a(Lcom/tencent/tinker/android/dex/s;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/s;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/s;->a(Lcom/tencent/tinker/android/dex/s;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/tencent/tinker/android/dex/s;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/s;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tinker/android/dex/s;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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
