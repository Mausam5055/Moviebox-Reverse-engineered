.class Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRecord"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Landroidx/media/b;

.field public final e:Landroid/os/Bundle;

.field public final f:Landroidx/media/MediaBrowserServiceCompat$m;

.field public final g:Ljava/util/HashMap;

.field public h:Landroidx/media/MediaBrowserServiceCompat$e;

.field final synthetic i:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;Ljava/lang/String;IILandroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$m;)V
    .locals 0

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->i:Landroidx/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->g:Ljava/util/HashMap;

    iput-object p2, p0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->a:Ljava/lang/String;

    iput p3, p0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->b:I

    iput p4, p0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->c:I

    new-instance p1, Landroidx/media/b;

    invoke-direct {p1, p2, p3, p4}, Landroidx/media/b;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->d:Landroidx/media/b;

    iput-object p5, p0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->e:Landroid/os/Bundle;

    iput-object p6, p0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->f:Landroidx/media/MediaBrowserServiceCompat$m;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->i:Landroidx/media/MediaBrowserServiceCompat;

    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat;->g:Landroidx/media/MediaBrowserServiceCompat$o;

    new-instance v1, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord$1;

    invoke-direct {v1, p0}, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord$1;-><init>(Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
