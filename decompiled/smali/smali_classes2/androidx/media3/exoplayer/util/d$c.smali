.class final Landroidx/media3/exoplayer/util/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/util/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/util/d$b;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/util/d$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/d$c;->a:Landroidx/media3/exoplayer/util/d$b;

    return-void
.end method


# virtual methods
.method public k(Landroidx/media3/exoplayer/upstream/Loader$d;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$c;
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/util/d$c;->a:Landroidx/media3/exoplayer/util/d$b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p6}, Landroidx/media3/exoplayer/util/d$b;->a(Ljava/io/IOException;)V

    :cond_0
    sget-object p1, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$c;

    return-object p1
.end method

.method public synthetic o(Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/media3/exoplayer/upstream/o;->a(Landroidx/media3/exoplayer/upstream/Loader$b;Landroidx/media3/exoplayer/upstream/Loader$d;JJI)V

    return-void
.end method

.method public p(Landroidx/media3/exoplayer/upstream/Loader$d;JJ)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/util/d$c;->a:Landroidx/media3/exoplayer/util/d$b;

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/media3/exoplayer/util/d;->m()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/util/d$c;->a:Landroidx/media3/exoplayer/util/d$b;

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/util/ConcurrentModificationException;

    invoke-direct {p3}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/util/d$b;->a(Ljava/io/IOException;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/util/d$c;->a:Landroidx/media3/exoplayer/util/d$b;

    invoke-interface {p1}, Landroidx/media3/exoplayer/util/d$b;->onInitialized()V

    :cond_1
    :goto_0
    return-void
.end method

.method public q(Landroidx/media3/exoplayer/upstream/Loader$d;JJZ)V
    .locals 0

    return-void
.end method
