.class public Lcom/tencent/tinker/android/dex/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/android/dex/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/tinker/android/dex/f$b;->a:I

    iput p2, p0, Lcom/tencent/tinker/android/dex/f$b;->b:I

    iput p3, p0, Lcom/tencent/tinker/android/dex/f$b;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/f$b;)I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/f$b;->a:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/f$b;->a:I

    invoke-static {v0, v1}, Lgf/c;->h(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/f$b;->b:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/f$b;->b:I

    invoke-static {v0, v1}, Lgf/c;->c(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/tinker/android/dex/f$b;->c:I

    iget p1, p1, Lcom/tencent/tinker/android/dex/f$b;->c:I

    invoke-static {v0, p1}, Lgf/c;->c(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/f$b;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/f$b;->a(Lcom/tencent/tinker/android/dex/f$b;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/f$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/f$b;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/f$b;->a(Lcom/tencent/tinker/android/dex/f$b;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/tencent/tinker/android/dex/f$b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/f$b;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tinker/android/dex/f$b;->c:I

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
