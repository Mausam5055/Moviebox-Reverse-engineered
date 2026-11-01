.class final La2/m;
.super Ljava/lang/Object;

# interfaces
.implements Lz1/e;


# instance fields
.field private final a:La2/i;


# direct methods
.method public constructor <init>(La2/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/m;->a:La2/i;

    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 0

    return-wide p3
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
    .locals 0

    iget-object p1, p0, La2/m;->a:La2/i;

    return-object p1
.end method

.method public e(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public f(J)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTimeUs(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public h()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i(JJ)J
    .locals 0

    const-wide/16 p1, 0x1

    return-wide p1
.end method
