.class public final Lcom/tencent/tinker/android/dex/a;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# instance fields
.field public b:B

.field public c:Lcom/tencent/tinker/android/dex/l;


# direct methods
.method public constructor <init>(IBLcom/tencent/tinker/android/dex/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput-byte p2, p0, Lcom/tencent/tinker/android/dex/a;->b:B

    iput-object p3, p0, Lcom/tencent/tinker/android/dex/a;->c:Lcom/tencent/tinker/android/dex/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/a;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/a;->c:Lcom/tencent/tinker/android/dex/l;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/a;->c:Lcom/tencent/tinker/android/dex/l;

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/android/dex/l;->b(Lcom/tencent/tinker/android/dex/l;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-byte v0, p0, Lcom/tencent/tinker/android/dex/a;->b:B

    iget-byte p1, p1, Lcom/tencent/tinker/android/dex/a;->b:B

    invoke-static {v0, p1}, Lgf/c;->g(BB)I

    move-result p1

    return p1
.end method

.method public b()Lcom/tencent/tinker/android/dex/n;
    .locals 3

    new-instance v0, Lcom/tencent/tinker/android/dex/n;

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/a;->c:Lcom/tencent/tinker/android/dex/l;

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/tencent/tinker/android/dex/n;-><init>(Lcom/tencent/tinker/android/dex/l;I)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/a;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/a;->a(Lcom/tencent/tinker/android/dex/a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/a;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/a;->a(Lcom/tencent/tinker/android/dex/a;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-byte v0, p0, Lcom/tencent/tinker/android/dex/a;->b:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/a;->c:Lcom/tencent/tinker/android/dex/l;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lgf/e;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
