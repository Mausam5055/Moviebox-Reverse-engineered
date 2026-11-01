.class Landroidx/media/MediaBrowserServiceCompat$g$b;
.super Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Landroidx/media/MediaBrowserServiceCompat$g;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$g;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g$b;->b:Landroidx/media/MediaBrowserServiceCompat$g;

    invoke-direct {p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$b;-><init>(Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 2

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$g$b;->b:Landroidx/media/MediaBrowserServiceCompat$g;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$l;

    invoke-direct {v1, p2}, Landroidx/media/MediaBrowserServiceCompat$l;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    invoke-virtual {v0, p1, v1}, Landroidx/media/MediaBrowserServiceCompat$g;->g(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$l;)V

    return-void
.end method
