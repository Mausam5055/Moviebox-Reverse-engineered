.class public final Lcom/transsion/player/mediasession/f;
.super Landroid/support/v4/media/session/MediaSessionCompat$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/mediasession/f$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/player/mediasession/f$a;


# instance fields
.field private final f:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final g:Lcom/transsion/player/mediasession/MediaService;

.field private h:Lcom/transsion/player/mediasession/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/player/mediasession/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/player/mediasession/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/player/mediasession/f;->i:Lcom/transsion/player/mediasession/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat;Lcom/transsion/player/mediasession/MediaService;)V
    .locals 1

    const-string v0, "mediaService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$b;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/mediasession/f;->f:Landroid/support/v4/media/session/MediaSessionCompat;

    iput-object p2, p0, Lcom/transsion/player/mediasession/f;->g:Lcom/transsion/player/mediasession/MediaService;

    return-void
.end method

.method private final E(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    iget-object v1, p0, Lcom/transsion/player/mediasession/f;->g:Lcom/transsion/player/mediasession/MediaService;

    iget-object v2, p0, Lcom/transsion/player/mediasession/f;->h:Lcom/transsion/player/mediasession/MediaItem;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/player/mediasession/f;->f:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/transsion/player/mediasession/h;->o(Lcom/transsion/player/mediasession/MediaService;Lcom/transsion/player/mediasession/MediaItem;Ljava/lang/Integer;Landroid/support/v4/media/session/MediaSessionCompat;)V

    :cond_0
    return-void
.end method

.method private final F()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/player/mediasession/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final G(I)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 5

    iget-object v0, p0, Lcom/transsion/player/mediasession/f;->h:Lcom/transsion/player/mediasession/MediaItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaItem;->getPosition()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$d;

    invoke-direct {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$d;-><init>()V

    const-wide/16 v3, 0x307

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$d;->b(J)Landroid/support/v4/media/session/PlaybackStateCompat$d;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, p1, v0, v1, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$d;->c(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$d;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/player/mediasession/f;->f:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->i(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public A()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->A()V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/f;->F()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> mediaSessionCallback --> onSkipToPrevious() -- \u6682\u4e0d\u5904\u7406\u8be5\u4e8b\u4ef6"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public C()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->C()V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/f;->F()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> mediaSessionCallback --> onStop()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/player/mediasession/f;->G(I)Landroid/support/v4/media/session/PlaybackStateCompat;

    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "MediaItem"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/transsion/player/mediasession/MediaItem;

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/transsion/player/mediasession/f;->h:Lcom/transsion/player/mediasession/MediaItem;

    const-string p2, "transsion_play"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/transsion/player/mediasession/f;->f:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz p1, :cond_3

    new-instance p2, Landroid/support/v4/media/MediaMetadataCompat$b;

    invoke-direct {p2}, Landroid/support/v4/media/MediaMetadataCompat$b;-><init>()V

    iget-object v1, p0, Lcom/transsion/player/mediasession/f;->h:Lcom/transsion/player/mediasession/MediaItem;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/player/mediasession/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p2, v1, v0}, Landroid/support/v4/media/MediaMetadataCompat$b;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/player/mediasession/f;->h:Lcom/transsion/player/mediasession/MediaItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/MediaItem;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    :goto_1
    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p2, v2, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat$b;->b(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$b;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/media/MediaMetadataCompat$b;->a()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->h(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_3
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/transsion/player/mediasession/f;->G(I)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string p2, "transsion_pause"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/transsion/player/mediasession/f;->G(I)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Lcom/transsion/player/mediasession/f;->E(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public h()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->h()V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/f;->F()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> mediaSessionCallback --> onPause()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/transsion/player/mediasession/f;->G(I)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/player/mediasession/f;->E(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->i()V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/f;->F()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> mediaSessionCallback --> onPlay()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/transsion/player/mediasession/f;->G(I)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/player/mediasession/f;->E(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    return-void
.end method

.method public s(J)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->s(J)V

    iget-object v0, p0, Lcom/transsion/player/mediasession/f;->h:Lcom/transsion/player/mediasession/MediaItem;

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/MediaItem;->setPosition(Ljava/lang/Long;)V

    :cond_0
    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/f;->F()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/player/mediasession/f;->h:Lcom/transsion/player/mediasession/MediaItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> mediaSessionCallback --> onSeekTo() --> mediaItem = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->h()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public z()V
    .locals 3

    invoke-super {p0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->z()V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/f;->F()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> mediaSessionCallback --> onSkipToNext() -- \u6682\u4e0d\u5904\u7406\u8be5\u4e8b\u4ef6"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    return-void
.end method
