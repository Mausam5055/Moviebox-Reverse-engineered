.class public final Lcom/tencent/tinker/android/dex/f;
.super Lcom/tencent/tinker/android/dex/v$a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/dex/f$b;,
        Lcom/tencent/tinker/android/dex/f$a;
    }
.end annotation


# instance fields
.field public b:[Lcom/tencent/tinker/android/dex/f$a;

.field public c:[Lcom/tencent/tinker/android/dex/f$a;

.field public d:[Lcom/tencent/tinker/android/dex/f$b;

.field public e:[Lcom/tencent/tinker/android/dex/f$b;


# direct methods
.method public constructor <init>(I[Lcom/tencent/tinker/android/dex/f$a;[Lcom/tencent/tinker/android/dex/f$a;[Lcom/tencent/tinker/android/dex/f$b;[Lcom/tencent/tinker/android/dex/f$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a$a;-><init>(I)V

    iput-object p2, p0, Lcom/tencent/tinker/android/dex/f;->b:[Lcom/tencent/tinker/android/dex/f$a;

    iput-object p3, p0, Lcom/tencent/tinker/android/dex/f;->c:[Lcom/tencent/tinker/android/dex/f$a;

    iput-object p4, p0, Lcom/tencent/tinker/android/dex/f;->d:[Lcom/tencent/tinker/android/dex/f$b;

    iput-object p5, p0, Lcom/tencent/tinker/android/dex/f;->e:[Lcom/tencent/tinker/android/dex/f$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/f;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/f;->b:[Lcom/tencent/tinker/android/dex/f$a;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/f;->b:[Lcom/tencent/tinker/android/dex/f$a;

    invoke-static {v0, v1}, Lgf/c;->a([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/f;->c:[Lcom/tencent/tinker/android/dex/f$a;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/f;->c:[Lcom/tencent/tinker/android/dex/f$a;

    invoke-static {v0, v1}, Lgf/c;->a([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/f;->d:[Lcom/tencent/tinker/android/dex/f$b;

    iget-object v1, p1, Lcom/tencent/tinker/android/dex/f;->d:[Lcom/tencent/tinker/android/dex/f$b;

    invoke-static {v0, v1}, Lgf/c;->a([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/tinker/android/dex/f;->e:[Lcom/tencent/tinker/android/dex/f$b;

    iget-object p1, p1, Lcom/tencent/tinker/android/dex/f;->e:[Lcom/tencent/tinker/android/dex/f$b;

    invoke-static {v0, p1}, Lgf/c;->a([Ljava/lang/Comparable;[Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/f;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/f;->a(Lcom/tencent/tinker/android/dex/f;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/tencent/tinker/android/dex/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/tencent/tinker/android/dex/f;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/f;->a(Lcom/tencent/tinker/android/dex/f;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/f;->b:[Lcom/tencent/tinker/android/dex/f$a;

    iget-object v1, p0, Lcom/tencent/tinker/android/dex/f;->c:[Lcom/tencent/tinker/android/dex/f$a;

    iget-object v2, p0, Lcom/tencent/tinker/android/dex/f;->d:[Lcom/tencent/tinker/android/dex/f$b;

    iget-object v3, p0, Lcom/tencent/tinker/android/dex/f;->e:[Lcom/tencent/tinker/android/dex/f$b;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lgf/e;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
