.class public final Lg9/u;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/b0;


# instance fields
.field private final a:Lg9/v;

.field private final b:J


# direct methods
.method public constructor <init>(Lg9/v;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg9/u;->a:Lg9/v;

    iput-wide p2, p0, Lg9/u;->b:J

    return-void
.end method

.method private b(JJ)Lg9/c0;
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p1, v0

    iget-object v0, p0, Lg9/u;->a:Lg9/v;

    iget v0, v0, Lg9/v;->e:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget-wide v0, p0, Lg9/u;->b:J

    add-long/2addr v0, p3

    new-instance p3, Lg9/c0;

    invoke-direct {p3, p1, p2, v0, v1}, Lg9/c0;-><init>(JJ)V

    return-object p3
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-object v0, p0, Lg9/u;->a:Lg9/v;

    invoke-virtual {v0}, Lg9/v;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lg9/b0$a;
    .locals 9

    iget-object v0, p0, Lg9/u;->a:Lg9/v;

    iget-object v0, v0, Lg9/v;->k:Lg9/v$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lg9/u;->a:Lg9/v;

    iget-object v1, v0, Lg9/v;->k:Lg9/v$a;

    iget-object v2, v1, Lg9/v$a;->a:[J

    iget-object v1, v1, Lg9/v$a;->b:[J

    invoke-virtual {v0, p1, p2}, Lg9/v;->i(J)J

    move-result-wide v3

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v0}, Lcom/google/android/exoplayer2/util/p0;->i([JJZZ)I

    move-result v0

    const-wide/16 v3, 0x0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    move-wide v7, v3

    goto :goto_0

    :cond_0
    aget-wide v7, v2, v0

    :goto_0
    if-ne v0, v6, :cond_1

    goto :goto_1

    :cond_1
    aget-wide v3, v1, v0

    :goto_1
    invoke-direct {p0, v7, v8, v3, v4}, Lg9/u;->b(JJ)Lg9/c0;

    move-result-object v3

    iget-wide v6, v3, Lg9/c0;->a:J

    cmp-long p1, v6, p1

    if-eqz p1, :cond_3

    array-length p1, v2

    sub-int/2addr p1, v5

    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v0, v5

    aget-wide p1, v2, v0

    aget-wide v0, v1, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lg9/u;->b(JJ)Lg9/c0;

    move-result-object p1

    new-instance p2, Lg9/b0$a;

    invoke-direct {p2, v3, p1}, Lg9/b0$a;-><init>(Lg9/c0;Lg9/c0;)V

    return-object p2

    :cond_3
    :goto_2
    new-instance p1, Lg9/b0$a;

    invoke-direct {p1, v3}, Lg9/b0$a;-><init>(Lg9/c0;)V

    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
