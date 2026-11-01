.class public final Lz1/g;
.super Ljava/lang/Object;

# interfaces
.implements Lz1/e;


# instance fields
.field private final a:Ll2/h;

.field private final b:J


# direct methods
.method public constructor <init>(Ll2/h;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/g;->a:Ll2/h;

    iput-wide p2, p0, Lz1/g;->b:J

    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 0

    iget-object p3, p0, Lz1/g;->a:Ll2/h;

    iget-object p3, p3, Ll2/h;->d:[J

    long-to-int p1, p1

    aget-wide p1, p3, p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public c(JJ)J
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public d(J)La2/i;
    .locals 7

    new-instance v6, La2/i;

    iget-object v0, p0, Lz1/g;->a:Ll2/h;

    iget-object v1, v0, Ll2/h;->c:[J

    long-to-int p1, p1

    aget-wide v2, v1, p1

    iget-object p2, v0, Ll2/h;->b:[I

    aget p1, p2, p1

    int-to-long v4, p1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, La2/i;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public e(JJ)J
    .locals 2

    iget-object p3, p0, Lz1/g;->a:Ll2/h;

    iget-wide v0, p0, Lz1/g;->b:J

    add-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ll2/h;->b(J)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public f(J)J
    .locals 0

    iget-object p1, p0, Lz1/g;->a:Ll2/h;

    iget p1, p1, Ll2/h;->a:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTimeUs(J)J
    .locals 2

    iget-object v0, p0, Lz1/g;->a:Ll2/h;

    iget-object v0, v0, Ll2/h;->e:[J

    long-to-int p1, p1

    aget-wide p1, v0, p1

    iget-wide v0, p0, Lz1/g;->b:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public h()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i(JJ)J
    .locals 0

    iget-object p1, p0, Lz1/g;->a:Ll2/h;

    iget p1, p1, Ll2/h;->a:I

    int-to-long p1, p1

    return-wide p1
.end method
