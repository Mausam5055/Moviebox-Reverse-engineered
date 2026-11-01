.class final Le3/a;
.super Ll2/i;

# interfaces
.implements Le3/g;


# instance fields
.field private final h:J

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final l:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Ll2/i;-><init>(JJIIZ)V

    iput-wide p3, p0, Le3/a;->h:J

    iput p5, p0, Le3/a;->i:I

    iput p6, p0, Le3/a;->j:I

    iput-boolean p7, p0, Le3/a;->k:Z

    const-wide/16 p3, -0x1

    cmp-long p5, p1, p3

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, p3

    :goto_0
    iput-wide p1, p0, Le3/a;->l:J

    return-void
.end method

.method public constructor <init>(JJLl2/i0$a;Z)V
    .locals 8

    iget v5, p5, Ll2/i0$a;->f:I

    iget v6, p5, Ll2/i0$a;->c:I

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Le3/a;-><init>(JJIIZ)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Le3/a;->l:J

    return-wide v0
.end method

.method public e(J)Le3/a;
    .locals 9

    new-instance v8, Le3/a;

    iget-wide v3, p0, Le3/a;->h:J

    iget v5, p0, Le3/a;->i:I

    iget v6, p0, Le3/a;->j:I

    iget-boolean v7, p0, Le3/a;->k:Z

    move-object v0, v8

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Le3/a;-><init>(JJIIZ)V

    return-object v8
.end method

.method public g()I
    .locals 1

    iget v0, p0, Le3/a;->i:I

    return v0
.end method

.method public getTimeUs(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Ll2/i;->c(J)J

    move-result-wide p1

    return-wide p1
.end method
