.class public final Landroidx/media3/exoplayer/offline/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/upstream/q$a;


# instance fields
.field private final a:Landroidx/media3/exoplayer/upstream/q$a;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/q$a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/r;->a:Landroidx/media3/exoplayer/upstream/q$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/r;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/offline/q;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/r;->a:Landroidx/media3/exoplayer/upstream/q$a;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/upstream/q$a;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/offline/q;

    iget-object p2, p0, Landroidx/media3/exoplayer/offline/r;->b:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/offline/r;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/offline/q;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/offline/q;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/offline/r;->a(Landroid/net/Uri;Ljava/io/InputStream;)Landroidx/media3/exoplayer/offline/q;

    move-result-object p1

    return-object p1
.end method
