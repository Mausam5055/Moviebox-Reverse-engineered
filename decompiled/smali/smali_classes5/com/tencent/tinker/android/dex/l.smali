.class public final Lcom/tencent/tinker/android/dex/l;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# instance fields
.field public b:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/l;->b:[B

    return-void
.end method


# virtual methods
.method public a()Lgf/a;
    .locals 1

    new-instance v0, Lcom/tencent/tinker/android/dex/l$a;

    invoke-direct {v0, p0}, Lcom/tencent/tinker/android/dex/l$a;-><init>(Lcom/tencent/tinker/android/dex/l;)V

    return-object v0
.end method

.method public b(Lcom/tencent/tinker/android/dex/l;)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/l;->b:[B

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/l;->b:[B

    invoke-static {v0, p1}, Lgf/c;->d([B[B)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/l;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/l;->b(Lcom/tencent/tinker/android/dex/l;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/l;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/l;->b(Lcom/tencent/tinker/android/dex/l;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/l;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
