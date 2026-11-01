.class public final Landroidx/media3/exoplayer/dash/d$c;
.super Lh2/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation


# instance fields
.field private final e:Landroidx/media3/exoplayer/dash/d$b;

.field private final f:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/dash/d$b;JJJ)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lh2/b;-><init>(JJ)V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/d$c;->e:Landroidx/media3/exoplayer/dash/d$b;

    iput-wide p6, p0, Landroidx/media3/exoplayer/dash/d$c;->f:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    invoke-virtual {p0}, Lh2/b;->c()V

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$c;->e:Landroidx/media3/exoplayer/dash/d$b;

    invoke-virtual {p0}, Lh2/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/dash/d$b;->k(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 3

    invoke-virtual {p0}, Lh2/b;->c()V

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$c;->e:Landroidx/media3/exoplayer/dash/d$b;

    invoke-virtual {p0}, Lh2/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/dash/d$b;->i(J)J

    move-result-wide v0

    return-wide v0
.end method
