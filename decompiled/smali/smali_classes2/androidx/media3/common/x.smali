.class public final Landroidx/media3/common/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/x$a;
    }
.end annotation


# instance fields
.field private final a:[Landroidx/media3/common/x$a;

.field public final b:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/common/x$a;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroidx/media3/common/x$a;

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/common/x;-><init>(J[Landroidx/media3/common/x$a;)V

    return-void
.end method

.method public varargs constructor <init>(J[Landroidx/media3/common/x$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/common/x;->b:J

    iput-object p3, p0, Landroidx/media3/common/x;->a:[Landroidx/media3/common/x$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/common/x$a;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/common/x$a;

    invoke-direct {p0, p1}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/common/x$a;)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/common/x;-><init>(J[Landroidx/media3/common/x$a;)V

    return-void
.end method


# virtual methods
.method public varargs a([Landroidx/media3/common/x$a;)Landroidx/media3/common/x;
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/common/x;

    iget-wide v1, p0, Landroidx/media3/common/x;->b:J

    iget-object v3, p0, Landroidx/media3/common/x;->a:[Landroidx/media3/common/x$a;

    invoke-static {v3, p1}, Landroidx/media3/common/util/a1;->W0([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/common/x$a;

    invoke-direct {v0, v1, v2, p1}, Landroidx/media3/common/x;-><init>(J[Landroidx/media3/common/x$a;)V

    return-object v0
.end method

.method public b(Landroidx/media3/common/x;)Landroidx/media3/common/x;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object p1, p1, Landroidx/media3/common/x;->a:[Landroidx/media3/common/x$a;

    invoke-virtual {p0, p1}, Landroidx/media3/common/x;->a([Landroidx/media3/common/x$a;)Landroidx/media3/common/x;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Landroidx/media3/common/x;
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/x;->b:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/common/x;

    iget-object v1, p0, Landroidx/media3/common/x;->a:[Landroidx/media3/common/x$a;

    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/common/x;-><init>(J[Landroidx/media3/common/x$a;)V

    return-object v0
.end method

.method public d(I)Landroidx/media3/common/x$a;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/x;->a:[Landroidx/media3/common/x$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/x;->a:[Landroidx/media3/common/x$a;

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/common/x;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/x;

    iget-object v2, p0, Landroidx/media3/common/x;->a:[Landroidx/media3/common/x$a;

    iget-object v3, p1, Landroidx/media3/common/x;->a:[Landroidx/media3/common/x$a;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/x;->b:J

    iget-wide v4, p1, Landroidx/media3/common/x;->b:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/x;->a:[Landroidx/media3/common/x$a;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/common/x;->b:J

    invoke-static {v1, v2}, Lcom/google/common/primitives/Longs;->e(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/common/x;->a:[Landroidx/media3/common/x$a;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media3/common/x;->b:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", presentationTimeUs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/media3/common/x;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
