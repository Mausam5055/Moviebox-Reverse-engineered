.class public final Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$c;
.super Landroid/support/v4/media/session/MediaControllerCompat$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->d(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public e(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$a;->e(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method
