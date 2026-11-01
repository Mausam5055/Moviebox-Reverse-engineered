.class Landroidx/media/MediaBrowserServiceCompat$h$b;
.super Landroidx/media/MediaBrowserServiceCompat$g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Landroidx/media/MediaBrowserServiceCompat$h;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$h;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$h$b;->c:Landroidx/media/MediaBrowserServiceCompat$h;

    invoke-direct {p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$g$b;-><init>(Landroidx/media/MediaBrowserServiceCompat$g;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 3

    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$h$b;->c:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$h;->f:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v2, v1, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iput-object v2, v1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$l;

    invoke-direct {v1, p2}, Landroidx/media/MediaBrowserServiceCompat$l;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-virtual {v0, p1, v1, p3}, Landroidx/media/MediaBrowserServiceCompat$h;->h(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$l;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$h$b;->c:Landroidx/media/MediaBrowserServiceCompat$h;

    iget-object p1, p1, Landroidx/media/MediaBrowserServiceCompat$h;->f:Landroidx/media/MediaBrowserServiceCompat;

    const/4 p2, 0x0

    iput-object p2, p1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    return-void
.end method
