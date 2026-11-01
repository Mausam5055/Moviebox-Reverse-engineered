.class public abstract Lx9/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx9/k$d;,
        Lx9/k$c;,
        Lx9/k$b;,
        Lx9/k$a;,
        Lx9/k$e;
    }
.end annotation


# instance fields
.field final a:Lx9/i;

.field final b:J

.field final c:J


# direct methods
.method public constructor <init>(Lx9/i;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9/k;->a:Lx9/i;

    iput-wide p2, p0, Lx9/k;->b:J

    iput-wide p4, p0, Lx9/k;->c:J

    return-void
.end method


# virtual methods
.method public a(Lx9/j;)Lx9/i;
    .locals 0

    iget-object p1, p0, Lx9/k;->a:Lx9/i;

    return-object p1
.end method

.method public b()J
    .locals 6

    iget-wide v0, p0, Lx9/k;->c:J

    const-wide/32 v2, 0xf4240

    iget-wide v4, p0, Lx9/k;->b:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v0

    return-wide v0
.end method
