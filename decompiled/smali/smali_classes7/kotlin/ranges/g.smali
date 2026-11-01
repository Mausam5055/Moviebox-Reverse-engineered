.class final Lkotlin/ranges/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private final a:J

.field private b:Z

.field private final c:J

.field private d:J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lkotlin/ranges/g;->a:J

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Landroidx/collection/b0;->a(JJ)I

    move-result v0

    if-gtz v0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroidx/collection/b0;->a(JJ)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v1, p0, Lkotlin/ranges/g;->b:Z

    invoke-static {p5, p6}, Lkotlin/ULong;->b(J)J

    move-result-wide p5

    iput-wide p5, p0, Lkotlin/ranges/g;->c:J

    iget-boolean p5, p0, Lkotlin/ranges/g;->b:Z

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    move-wide p1, p3

    :goto_2
    iput-wide p1, p0, Lkotlin/ranges/g;->d:J

    return-void
.end method

.method public synthetic constructor <init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lkotlin/ranges/g;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-wide v0, p0, Lkotlin/ranges/g;->d:J

    iget-wide v2, p0, Lkotlin/ranges/g;->a:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lkotlin/ranges/g;->b:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lkotlin/ranges/g;->b:Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget-wide v2, p0, Lkotlin/ranges/g;->c:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lkotlin/ULong;->b(J)J

    move-result-wide v2

    iput-wide v2, p0, Lkotlin/ranges/g;->d:J

    :goto_0
    return-wide v0
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lkotlin/ranges/g;->b:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lkotlin/ranges/g;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->a(J)Lkotlin/ULong;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
