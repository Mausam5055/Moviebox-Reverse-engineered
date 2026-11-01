.class public final Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/transsion/player/ui/longvideo/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\u001b\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\tB#\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0005\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\'\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0011\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010&\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0012H\u0014\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010+\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008+\u0010,J\u0017\u0010-\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008-\u0010,J\u0019\u00100\u001a\u00020\u00122\u0008\u0010/\u001a\u0004\u0018\u00010.H\u0016\u00a2\u0006\u0004\u00080\u00101J\u0019\u00104\u001a\u00020\u00122\u0008\u00103\u001a\u0004\u0018\u000102H\u0016\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u00086\u0010)J\u0017\u00107\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020*H\u0016\u00a2\u0006\u0004\u00087\u0010,J\u0017\u0010:\u001a\u00020\u00122\u0006\u00109\u001a\u000208H\u0016\u00a2\u0006\u0004\u0008:\u0010;J\u000f\u0010<\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008<\u0010)J\u000f\u0010=\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008=\u0010)J\u000f\u0010>\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008>\u0010)J\u000f\u0010?\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008?\u0010)J\u000f\u0010@\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008@\u0010)J\u0019\u0010@\u001a\u00020\u00122\u0008\u0010B\u001a\u0004\u0018\u00010AH\u0016\u00a2\u0006\u0004\u0008@\u0010CJ\u000f\u0010D\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008D\u0010)J\u0017\u0010G\u001a\u00020\u00122\u0006\u0010F\u001a\u00020EH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u000f\u0010I\u001a\u00020EH\u0016\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010K\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008K\u0010\u000fJ\u000f\u0010L\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008L\u0010\u000fJ\u0017\u0010N\u001a\u00020\u00122\u0006\u0010M\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008N\u0010\'J\u000f\u0010O\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008O\u0010\u000fJ\u0017\u0010R\u001a\u00020\u00122\u0006\u0010Q\u001a\u00020PH\u0016\u00a2\u0006\u0004\u0008R\u0010SJ\u0011\u0010T\u001a\u0004\u0018\u00010PH\u0016\u00a2\u0006\u0004\u0008T\u0010UJ\u0017\u0010W\u001a\u00020\u00122\u0006\u0010V\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008W\u0010\'J\u0017\u0010X\u001a\u00020\u00122\u0006\u0010%\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008X\u0010\'J\u001b\u0010Z\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0YH\u0016\u00a2\u0006\u0004\u0008Z\u0010[J\u0011\u0010]\u001a\u0004\u0018\u00010\\H\u0016\u00a2\u0006\u0004\u0008]\u0010^J\u000f\u0010_\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008_\u0010\u000fJ\u0011\u0010a\u001a\u0004\u0018\u00010`H\u0016\u00a2\u0006\u0004\u0008a\u0010bJ\u000f\u0010c\u001a\u00020EH\u0016\u00a2\u0006\u0004\u0008c\u0010JJ\u0011\u0010e\u001a\u0004\u0018\u00010dH\u0016\u00a2\u0006\u0004\u0008e\u0010fJ\u001f\u0010j\u001a\u00020\u00122\u0006\u0010h\u001a\u00020g2\u0006\u0010i\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008j\u0010kJ\u0017\u0010m\u001a\u00020\u00122\u0006\u0010l\u001a\u00020PH\u0016\u00a2\u0006\u0004\u0008m\u0010SJ\u0017\u0010p\u001a\u00020\u00122\u0006\u0010o\u001a\u00020nH\u0016\u00a2\u0006\u0004\u0008p\u0010qJ\u001f\u0010t\u001a\u00020\u00122\u0006\u0010r\u001a\u00020\r2\u0006\u0010s\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008t\u0010uR\u0018\u0010x\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010zR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010{R\u0016\u0010~\u001a\u00020|8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010}R\u0019\u0010\u0082\u0001\u001a\u00020\u007f8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u00a8\u0006\u0083\u0001"
    }
    d2 = {
        "Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/transsion/player/ui/longvideo/a;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "d",
        "()Z",
        "Landroid/view/View;",
        "gestureView",
        "",
        "c",
        "(Landroid/view/View;)V",
        "Lbo/a;",
        "config",
        "Lcom/transsion/player/ui/ORPlayerView;",
        "playerView",
        "initLongVodPlayer",
        "(Lbo/a;Lcom/transsion/player/ui/ORPlayerView;)V",
        "Lcom/transsion/player/orplayer/g;",
        "orPlayer",
        "setExistPlayer",
        "(Lbo/a;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V",
        "getOrPlayer",
        "()Lcom/transsion/player/orplayer/g;",
        "Lcom/transsion/player/ui/longvideo/a$b;",
        "listener",
        "setGestureListener",
        "(Lcom/transsion/player/ui/longvideo/a$b;)V",
        "enable",
        "enableGesture",
        "(Z)V",
        "onAttachedToWindow",
        "()V",
        "Lcom/transsion/player/orplayer/f;",
        "addPlayerListener",
        "(Lcom/transsion/player/orplayer/f;)V",
        "removePlayerListener",
        "Landroid/view/SurfaceView;",
        "surfaceView",
        "setSurfaceView",
        "(Landroid/view/SurfaceView;)V",
        "Landroid/view/TextureView;",
        "textureView",
        "setTextureView",
        "(Landroid/view/TextureView;)V",
        "clearSurfaceOnly",
        "setPlayerListener",
        "Lao/e;",
        "mediaSource",
        "setDataSource",
        "(Lao/e;)V",
        "prepare",
        "play",
        "pause",
        "stop",
        "release",
        "",
        "id",
        "(Ljava/lang/String;)V",
        "reset",
        "",
        "mills",
        "seekTo",
        "(J)V",
        "getDuration",
        "()J",
        "isPlaying",
        "isComplete",
        "isLoop",
        "setLooping",
        "isMute",
        "",
        "volume",
        "setVolume",
        "(F)V",
        "getVolume",
        "()Ljava/lang/Float;",
        "isAutoPlay",
        "setAutoPlay",
        "enableHardwareDecoder",
        "Lkotlin/Pair;",
        "getBitrate",
        "()Lkotlin/Pair;",
        "",
        "getDownloadBitrate",
        "()Ljava/lang/Object;",
        "requestForce",
        "Lmo/c;",
        "getCurrentTracks",
        "()Lmo/c;",
        "getCurrentPosition",
        "Lmo/b;",
        "getCurrentVideoFormat",
        "()Lmo/b;",
        "Lmo/d;",
        "mediaTrackGroup",
        "index",
        "changeTrackSelection",
        "(Lmo/d;I)V",
        "speed",
        "setSpeed",
        "Lcom/transsion/player/enum/ScaleMode;",
        "scaleMode",
        "setScaleMode",
        "(Lcom/transsion/player/enum/ScaleMode;)V",
        "isVipSubscriber",
        "vipResolution",
        "setVipResolution",
        "(ZI)V",
        "a",
        "Lcom/transsion/player/ui/longvideo/a$b;",
        "gestureListener",
        "b",
        "Lcom/transsion/player/orplayer/g;",
        "Lbo/a;",
        "Leo/e;",
        "Leo/e;",
        "gestureControl",
        "Leo/n;",
        "e",
        "Leo/n;",
        "volumeControl",
        "PlayerView_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private a:Lcom/transsion/player/ui/longvideo/a$b;

.field private b:Lcom/transsion/player/orplayer/g;

.field private c:Lbo/a;

.field private d:Leo/e;

.field private e:Leo/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->c(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getGestureListener$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->a:Lcom/transsion/player/ui/longvideo/a$b;

    return-object p0
.end method

.method public static final synthetic access$getVolumeControl$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Leo/n;
    .locals 0

    iget-object p0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->e:Leo/n;

    return-object p0
.end method

.method private final c(Landroid/view/View;)V
    .locals 3

    sget-object v0, Leo/n;->a:Leo/n$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Leo/n$a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Leo/n;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->e:Leo/n;

    new-instance v0, Leo/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Leo/e;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->d:Leo/e;

    new-instance p1, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;

    invoke-direct {p1, p0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;-><init>(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)V

    invoke-virtual {v0, p1}, Leo/e;->s(Leo/e$a;)V

    return-void
.end method

.method private final d()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addDataSource(Lao/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/ui/longvideo/a$a;->a(Lcom/transsion/player/ui/longvideo/a;Lao/e;)Z

    move-result p1

    return p1
.end method

.method public addPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->addPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_0
    return-void
.end method

.method public changeTrackSelection(Lmo/d;I)V
    .locals 1

    const-string v0, "mediaTrackGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->changeTrackSelection(Lmo/d;I)V

    :cond_0
    return-void
.end method

.method public clearScreen()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/ui/longvideo/a$a;->b(Lcom/transsion/player/ui/longvideo/a;)V

    return-void
.end method

.method public clearSurfaceOnly()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->clearSurfaceOnly()V

    :cond_0
    return-void
.end method

.method public currentMediaSource()Lao/e;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/ui/longvideo/a$a;->c(Lcom/transsion/player/ui/longvideo/a;)Lao/e;

    move-result-object v0

    return-object v0
.end method

.method public enableGesture(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->d:Leo/e;

    if-nez v0, :cond_0

    const-string v0, "gestureControl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Leo/e;->l(Z)V

    return-void
.end method

.method public enableHardwareDecoder(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->enableHardwareDecoder(Z)V

    :cond_0
    return-void
.end method

.method public getBitrate()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getBitrate()Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lkotlin/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getCurrentTracks()Lmo/c;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentTracks()Lmo/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentVideoFormat()Lmo/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentVideoFormat()Lmo/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDownloadBitrate()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDownloadBitrate()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getOrPlayer()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/ui/longvideo/a$a;->d(Lcom/transsion/player/ui/longvideo/a;)I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/ui/longvideo/a$a;->e(Lcom/transsion/player/ui/longvideo/a;)I

    move-result v0

    return v0
.end method

.method public getVolume()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getVolume()Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public initLongVodPlayer(Lbo/a;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->c:Lbo/a;

    sget-object v0, Lko/l0;->a:Lko/l0;

    invoke-virtual {v0}, Lko/l0;->s()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    invoke-virtual {p1}, Lbo/a;->b()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    invoke-virtual {p1}, Lbo/a;->a()Lcom/transsion/player/enum/ScaleMode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    invoke-virtual {p1}, Lbo/a;->d()Lbo/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setPlayerConfig(Lbo/d;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/g;->setVolume(F)V

    invoke-virtual {p1}, Lbo/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/transsion/player/ui/ORPlayerView;->getSurface()Landroid/view/SurfaceView;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/player/ui/ORPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    :goto_0
    iput-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    iget-object p1, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->e:Leo/n;

    if-nez p1, :cond_1

    const-string p1, "volumeControl"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    invoke-interface {p1, v0}, Leo/n;->e(Lcom/transsion/player/orplayer/g;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public isComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isComplete()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/ui/longvideo/a$a;->f(Lcom/transsion/player/ui/longvideo/a;)Z

    move-result v0

    return v0
.end method

.method public isMute()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isMute()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/ui/longvideo/a$a;->g(Lcom/transsion/player/ui/longvideo/a;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public pause()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_1
    return-void
.end method

.method public play()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_1
    return-void
.end method

.method public prepare()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/transsion/player/ui/ORPlayerView;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_1
    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1}, Lcom/transsion/player/ui/longvideo/a$a;->h(Lcom/transsion/player/ui/longvideo/a;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->release(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/player/ui/ORPlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_1
    return-void
.end method

.method public removeDataSource(Lao/e;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/ui/longvideo/a$a;->i(Lcom/transsion/player/ui/longvideo/a;Lao/e;)Z

    move-result p1

    return p1
.end method

.method public removePlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_0
    return-void
.end method

.method public requestForce()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->requestForce()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->reset()V

    :cond_1
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public seekTo(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/ui/longvideo/a$a;->j(Lcom/transsion/player/ui/longvideo/a;Ljava/lang/String;J)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/ui/longvideo/a$a;->k(Lcom/transsion/player/ui/longvideo/a;)V

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setAutoPlay(Z)V

    :cond_0
    return-void
.end method

.method public setDataSource(Lao/e;)V
    .locals 1

    const-string v0, "mediaSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_0
    return-void
.end method

.method public setErrorInterceptor(Lko/e0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/ui/longvideo/a$a;->l(Lcom/transsion/player/ui/longvideo/a;Lko/e0;)V

    return-void
.end method

.method public setExistPlayer(Lbo/a;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orPlayer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    invoke-virtual {p1}, Lbo/a;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/transsion/player/ui/ORPlayerView;->getSurface()Landroid/view/SurfaceView;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/transsion/player/orplayer/g;->setSurfaceView(Landroid/view/SurfaceView;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/transsion/player/ui/ORPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->e:Leo/n;

    if-nez p1, :cond_1

    const-string p1, "volumeControl"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-interface {p1, p2}, Leo/n;->e(Lcom/transsion/player/orplayer/g;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setGestureListener(Lcom/transsion/player/ui/longvideo/a$b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->a:Lcom/transsion/player/ui/longvideo/a$b;

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/ui/longvideo/a$a;->m(Lcom/transsion/player/ui/longvideo/a;Z)V

    return-void
.end method

.method public setPlayerConfig(Lbo/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/ui/longvideo/a$a;->n(Lcom/transsion/player/ui/longvideo/a;Lbo/d;)V

    return-void
.end method

.method public setPlayerListener(Lcom/transsion/player/orplayer/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_0
    return-void
.end method

.method public setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V
    .locals 1

    const-string v0, "scaleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/transsion/player/ui/longvideo/a$a;->o(Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/enum/ScaleMode;)V

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setSurfaceView(Landroid/view/SurfaceView;)V

    :cond_0
    return-void
.end method

.method public setTextureView(Landroid/view/TextureView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public setVipResolution(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->setVipResolution(ZI)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/orplayer/g;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->b:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_1
    return-void
.end method
