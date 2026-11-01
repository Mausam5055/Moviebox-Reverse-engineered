.class final Landroidx/media3/exoplayer/dash/DashMediaSource$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/dash/DashMediaSource;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/dash/DashMediaSource;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$g;->a:Landroidx/media3/exoplayer/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/dash/DashMediaSource;Landroidx/media3/exoplayer/dash/DashMediaSource$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$g;-><init>(Landroidx/media3/exoplayer/dash/DashMediaSource;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/upstream/q;JJZ)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$g;->a:Landroidx/media3/exoplayer/dash/DashMediaSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/dash/DashMediaSource;->S(Landroidx/media3/exoplayer/upstream/q;JJ)V

    return-void
.end method

.method public b(Landroidx/media3/exoplayer/upstream/q;JJ)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$g;->a:Landroidx/media3/exoplayer/dash/DashMediaSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/dash/DashMediaSource;->W(Landroidx/media3/exoplayer/upstream/q;JJ)V

    return-void
.end method

.method public c(Landroidx/media3/exoplayer/upstream/q;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$g;->a:Landroidx/media3/exoplayer/dash/DashMediaSource;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/dash/DashMediaSource;->X(Landroidx/media3/exoplayer/upstream/q;JJLjava/io/IOException;)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    invoke-virtual/range {p0 .. p7}, Landroidx/media3/exoplayer/dash/DashMediaSource$g;->c(Landroidx/media3/exoplayer/upstream/q;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/media3/exoplayer/upstream/o;->a(Landroidx/media3/exoplayer/upstream/Loader$b;Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V

    return-void
.end method

.method public bridge synthetic p(Landroidx/media3/exoplayer/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    invoke-virtual/range {p0 .. p5}, Landroidx/media3/exoplayer/dash/DashMediaSource$g;->b(Landroidx/media3/exoplayer/upstream/q;JJ)V

    return-void
.end method

.method public bridge synthetic q(Landroidx/media3/exoplayer/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/upstream/q;

    invoke-virtual/range {p0 .. p6}, Landroidx/media3/exoplayer/dash/DashMediaSource$g;->a(Landroidx/media3/exoplayer/upstream/q;JJZ)V

    return-void
.end method
