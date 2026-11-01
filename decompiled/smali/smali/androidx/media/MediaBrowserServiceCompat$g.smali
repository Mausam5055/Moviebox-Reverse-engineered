.class Landroidx/media/MediaBrowserServiceCompat$g;
.super Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaBrowserServiceCompat$g$b;
    }
.end annotation


# instance fields
.field final synthetic e:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g;->e:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;-><init>(Landroidx/media/MediaBrowserServiceCompat;)V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$l;)V
    .locals 2

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$g$a;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$g$a;-><init>(Landroidx/media/MediaBrowserServiceCompat$g;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompat$l;)V

    iget-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$g;->e:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v1, p2, Landroidx/media/MediaBrowserServiceCompat;->c:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    iput-object v1, p2, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    invoke-virtual {p2, p1, v0}, Landroidx/media/MediaBrowserServiceCompat;->i(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$k;)V

    iget-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$g;->e:Landroidx/media/MediaBrowserServiceCompat;

    const/4 p2, 0x0

    iput-object p2, p1, Landroidx/media/MediaBrowserServiceCompat;->f:Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    return-void
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$g$b;

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$g;->e:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {v0, p0, v1}, Landroidx/media/MediaBrowserServiceCompat$g$b;-><init>(Landroidx/media/MediaBrowserServiceCompat$g;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->b:Landroid/service/media/MediaBrowserService;

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    return-void
.end method
