.class final Lj3/e$b;
.super Li3/o;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private j:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li3/o;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lj3/e$a;)V
    .locals 0

    invoke-direct {p0}, Lj3/e$b;-><init>()V

    return-void
.end method

.method static synthetic h(Lj3/e$b;J)J
    .locals 0

    iput-wide p1, p0, Lj3/e$b;->j:J

    return-wide p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj3/e$b;

    invoke-virtual {p0, p1}, Lj3/e$b;->i(Lj3/e$b;)I

    move-result p1

    return p1
.end method

.method public i(Lj3/e$b;)I
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    iget-wide v0, p0, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    iget-wide v4, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    iget-wide v0, p0, Lj3/e$b;->j:J

    iget-wide v6, p1, Lj3/e$b;->j:J

    sub-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    cmp-long p1, v0, v4

    if-lez p1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method
