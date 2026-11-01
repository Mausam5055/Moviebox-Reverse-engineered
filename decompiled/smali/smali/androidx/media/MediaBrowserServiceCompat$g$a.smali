.class Landroidx/media/MediaBrowserServiceCompat$g$a;
.super Landroidx/media/MediaBrowserServiceCompat$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$g;->g(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroidx/media/MediaBrowserServiceCompat$l;

.field final synthetic g:Landroidx/media/MediaBrowserServiceCompat$g;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$g;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$l;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g$a;->g:Landroidx/media/MediaBrowserServiceCompat$g;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$g$a;->f:Landroidx/media/MediaBrowserServiceCompat$l;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$k;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$g$a;->h(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method

.method h(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g$a;->f:Landroidx/media/MediaBrowserServiceCompat$l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$l;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g$a;->f:Landroidx/media/MediaBrowserServiceCompat$l;

    invoke-virtual {p1, v0}, Landroidx/media/MediaBrowserServiceCompat$l;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
