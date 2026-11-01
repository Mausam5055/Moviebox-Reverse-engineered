.class final Landroidx/media3/exoplayer/audio/i$d;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Landroid/net/Uri;

.field final synthetic c:Landroidx/media3/exoplayer/audio/i;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/i;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i$d;->c:Landroidx/media3/exoplayer/audio/i;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Landroidx/media3/exoplayer/audio/i$d;->a:Landroid/content/ContentResolver;

    iput-object p4, p0, Landroidx/media3/exoplayer/audio/i$d;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i$d;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i$d;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i$d;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/i$d;->c:Landroidx/media3/exoplayer/audio/i;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/i;->e(Landroidx/media3/exoplayer/audio/i;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i$d;->c:Landroidx/media3/exoplayer/audio/i;

    invoke-static {v1}, Landroidx/media3/exoplayer/audio/i;->a(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/common/c;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/i$d;->c:Landroidx/media3/exoplayer/audio/i;

    invoke-static {v2}, Landroidx/media3/exoplayer/audio/i;->b(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/exoplayer/audio/j;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/audio/e;->f(Landroid/content/Context;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/audio/i;->d(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/e;)V

    return-void
.end method
