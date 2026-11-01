.class public final Lcom/tencent/tinker/android/dex/g;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/g;->b:I

    iput p3, p0, Lcom/tencent/tinker/android/dex/g;->c:I

    iput p4, p0, Lcom/tencent/tinker/android/dex/g;->d:I

    iput p5, p0, Lcom/tencent/tinker/android/dex/g;->e:I

    iput p6, p0, Lcom/tencent/tinker/android/dex/g;->f:I

    iput p7, p0, Lcom/tencent/tinker/android/dex/g;->g:I

    iput p8, p0, Lcom/tencent/tinker/android/dex/g;->h:I

    iput p9, p0, Lcom/tencent/tinker/android/dex/g;->i:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/g;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/g;->b:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-static {v0, v1}, Lgf/c;->h(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/g;->c:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->c:I

    invoke-static {v0, v1}, Lgf/c;->c(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tinker/android/dex/g;->d:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->d:I

    invoke-static {v0, v1}, Lgf/c;->h(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p0, Lcom/tencent/tinker/android/dex/g;->e:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->e:I

    invoke-static {v0, v1}, Lgf/c;->c(II)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget v0, p0, Lcom/tencent/tinker/android/dex/g;->f:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->f:I

    invoke-static {v0, v1}, Lgf/c;->h(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget v0, p0, Lcom/tencent/tinker/android/dex/g;->g:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->g:I

    invoke-static {v0, v1}, Lgf/c;->c(II)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget v0, p0, Lcom/tencent/tinker/android/dex/g;->h:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/g;->h:I

    invoke-static {v0, v1}, Lgf/c;->c(II)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/tencent/tinker/android/dex/g;->i:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/g;->i:I

    invoke-static {v0, p1}, Lgf/c;->c(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/g;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/g;->a(Lcom/tencent/tinker/android/dex/g;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/g;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/g;->a(Lcom/tencent/tinker/android/dex/g;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 10

    iget v0, p0, Lcom/tencent/tinker/android/dex/g;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/g;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tinker/android/dex/g;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/tencent/tinker/android/dex/g;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/tencent/tinker/android/dex/g;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/tencent/tinker/android/dex/g;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/tencent/tinker/android/dex/g;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/tencent/tinker/android/dex/g;->i:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v5, v8, v0

    const/4 v0, 0x6

    aput-object v6, v8, v0

    const/4 v0, 0x7

    aput-object v7, v8, v0

    invoke-static {v8}, Lgf/e;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
