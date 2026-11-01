.class public final Lcom/tencent/tinker/android/dex/h;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/dex/h$a;,
        Lcom/tencent/tinker/android/dex/h$b;
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:[S

.field public g:[Lcom/tencent/tinker/android/dex/h$b;

.field public h:[Lcom/tencent/tinker/android/dex/h$a;


# direct methods
.method public constructor <init>(IIIII[S[Lcom/tencent/tinker/android/dex/h$b;[Lcom/tencent/tinker/android/dex/h$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput p2, p0, Lcom/tencent/tinker/android/dex/h;->b:I

    iput p3, p0, Lcom/tencent/tinker/android/dex/h;->c:I

    iput p4, p0, Lcom/tencent/tinker/android/dex/h;->d:I

    iput p5, p0, Lcom/tencent/tinker/android/dex/h;->e:I

    iput-object p6, p0, Lcom/tencent/tinker/android/dex/h;->f:[S

    iput-object p7, p0, Lcom/tencent/tinker/android/dex/h;->g:[Lcom/tencent/tinker/android/dex/h$b;

    iput-object p8, p0, Lcom/tencent/tinker/android/dex/h;->h:[Lcom/tencent/tinker/android/dex/h$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/h;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/h;->b:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/h;->b:I

    invoke-static {v0, v1}, Lgf/c;->c(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/h;->c:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/h;->c:I

    invoke-static {v0, v1}, Lgf/c;->c(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tinker/android/dex/h;->d:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/h;->d:I

    invoke-static {v0, v1}, Lgf/c;->c(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p0, Lcom/tencent/tinker/android/dex/h;->e:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/h;->e:I

    invoke-static {v0, v1}, Lgf/c;->c(II)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/h;->f:[S

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/h;->f:[S

    invoke-static {v0, v1}, Lgf/c;->f([S[S)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/h;->g:[Lcom/tencent/tinker/android/dex/h$b;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/h;->g:[Lcom/tencent/tinker/android/dex/h$b;

    invoke-static {v0, v1}, Lgf/c;->a([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/h;->h:[Lcom/tencent/tinker/android/dex/h$a;

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/h;->h:[Lcom/tencent/tinker/android/dex/h$a;

    invoke-static {v0, p1}, Lgf/c;->a([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/h;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/h;->a(Lcom/tencent/tinker/android/dex/h;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/h;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/h;->a(Lcom/tencent/tinker/android/dex/h;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 9

    iget v0, p0, Lcom/tencent/tinker/android/dex/h;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/h;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tinker/android/dex/h;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/tencent/tinker/android/dex/h;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tinker/android/dex/h;->f:[S

    iget-object v5, p0, Lcom/tencent/tinker/android/dex/h;->g:[Lcom/tencent/tinker/android/dex/h$b;

    iget-object v6, p0, Lcom/tencent/tinker/android/dex/h;->h:[Lcom/tencent/tinker/android/dex/h$a;

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    invoke-static {v7}, Lgf/e;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
