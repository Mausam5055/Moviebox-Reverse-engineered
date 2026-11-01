.class final Lg3/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lg3/a;


# direct methods
.method private constructor <init>(Lg3/a;)V
    .locals 0

    iput-object p1, p0, Lg3/a$b;->a:Lg3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg3/a;Lg3/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lg3/a$b;-><init>(Lg3/a;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 3

    iget-object v0, p0, Lg3/a$b;->a:Lg3/a;

    invoke-static {v0}, Lg3/a;->b(Lg3/a;)Lg3/i;

    move-result-object v0

    iget-object v1, p0, Lg3/a$b;->a:Lg3/a;

    invoke-static {v1}, Lg3/a;->d(Lg3/a;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lg3/i;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Ll2/m0$a;
    .locals 10

    iget-object v0, p0, Lg3/a$b;->a:Lg3/a;

    invoke-static {v0}, Lg3/a;->b(Lg3/a;)Lg3/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lg3/i;->c(J)J

    move-result-wide v0

    iget-object v2, p0, Lg3/a$b;->a:Lg3/a;

    invoke-static {v2}, Lg3/a;->c(Lg3/a;)J

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lg3/a$b;->a:Lg3/a;

    invoke-static {v1}, Lg3/a;->e(Lg3/a;)J

    move-result-wide v4

    iget-object v1, p0, Lg3/a$b;->a:Lg3/a;

    invoke-static {v1}, Lg3/a;->c(Lg3/a;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lg3/a$b;->a:Lg3/a;

    invoke-static {v1}, Lg3/a;->d(Lg3/a;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    iget-object v0, p0, Lg3/a$b;->a:Lg3/a;

    invoke-static {v0}, Lg3/a;->c(Lg3/a;)J

    move-result-wide v6

    iget-object v0, p0, Lg3/a$b;->a:Lg3/a;

    invoke-static {v0}, Lg3/a;->e(Lg3/a;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/a1;->q(JJJ)J

    move-result-wide v0

    new-instance v2, Ll2/m0$a;

    new-instance v3, Ll2/n0;

    invoke-direct {v3, p1, p2, v0, v1}, Ll2/n0;-><init>(JJ)V

    invoke-direct {v2, v3}, Ll2/m0$a;-><init>(Ll2/n0;)V

    return-object v2
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
