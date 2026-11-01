.class public final Landroidx/media3/exoplayer/upstream/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/q$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lw1/h;

.field public final c:I

.field private final d:Lw1/l;

.field private final e:Landroidx/media3/exoplayer/upstream/q$a;

.field private volatile f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a;Landroid/net/Uri;ILandroidx/media3/exoplayer/upstream/q$a;)V
    .locals 1

    new-instance v0, Lw1/h$b;

    invoke-direct {v0}, Lw1/h$b;-><init>()V

    invoke-virtual {v0, p2}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lw1/h$b;->b(I)Lw1/h$b;

    move-result-object p2

    invoke-virtual {p2}, Lw1/h$b;->a()Lw1/h;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/upstream/q;-><init>(Landroidx/media3/datasource/a;Lw1/h;ILandroidx/media3/exoplayer/upstream/q$a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a;Lw1/h;ILandroidx/media3/exoplayer/upstream/q$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw1/l;

    invoke-direct {v0, p1}, Lw1/l;-><init>(Landroidx/media3/datasource/a;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    iput p3, p0, Landroidx/media3/exoplayer/upstream/q;->c:I

    iput-object p4, p0, Landroidx/media3/exoplayer/upstream/q;->e:Landroidx/media3/exoplayer/upstream/q$a;

    invoke-static {}, Lg2/i;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/q;->a:J

    return-void
.end method

.method public static e(Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/upstream/q$a;Lw1/h;I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/upstream/q;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/media3/exoplayer/upstream/q;-><init>(Landroidx/media3/datasource/a;Lw1/h;ILandroidx/media3/exoplayer/upstream/q$a;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/q;->load()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/q;->c()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    invoke-virtual {v0}, Lw1/l;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    invoke-virtual {v0}, Lw1/l;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final cancelLoad()V
    .locals 0

    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    invoke-virtual {v0}, Lw1/l;->e()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final load()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    invoke-virtual {v0}, Lw1/l;->g()V

    new-instance v0, Lw1/f;

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    invoke-direct {v0, v1, v2}, Lw1/f;-><init>(Landroidx/media3/datasource/a;Lw1/h;)V

    :try_start_0
    invoke-virtual {v0}, Lw1/f;->h()V

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    invoke-virtual {v1}, Lw1/l;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/q;->e:Landroidx/media3/exoplayer/upstream/q$a;

    invoke-interface {v2, v1, v0}, Landroidx/media3/exoplayer/upstream/q$a;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/upstream/q;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroidx/media3/common/util/a1;->m(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/media3/common/util/a1;->m(Ljava/io/Closeable;)V

    throw v1
.end method
