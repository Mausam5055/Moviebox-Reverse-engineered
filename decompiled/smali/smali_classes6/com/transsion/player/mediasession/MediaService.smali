.class public final Lcom/transsion/player/mediasession/MediaService;
.super Landroidx/media/MediaBrowserServiceCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/mediasession/MediaService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0003J)\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J+\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00042\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0003\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/player/mediasession/MediaService;",
        "Landroidx/media/MediaBrowserServiceCompat;",
        "<init>",
        "()V",
        "",
        "s",
        "()Ljava/lang/String;",
        "",
        "t",
        "onCreate",
        "clientPackageName",
        "",
        "clientUid",
        "Landroid/os/Bundle;",
        "rootHints",
        "Landroidx/media/MediaBrowserServiceCompat$e;",
        "f",
        "(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$e;",
        "parentId",
        "Landroidx/media/MediaBrowserServiceCompat$k;",
        "",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        "result",
        "g",
        "(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$k;)V",
        "onDestroy",
        "j",
        "a",
        "LibPlayer_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final j:Lcom/transsion/player/mediasession/MediaService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/player/mediasession/MediaService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/player/mediasession/MediaService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/player/mediasession/MediaService;->j:Lcom/transsion/player/mediasession/MediaService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    return-void
.end method

.method private final s()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/player/mediasession/MediaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final t()V
    .locals 5

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    const-string v1, "media_service_id"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->d(Z)V

    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat$d;

    invoke-direct {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$d;-><init>()V

    const-wide/16 v3, 0x307

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$d;->b(J)Landroid/support/v4/media/session/PlaybackStateCompat$d;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/PlaybackStateCompat$d;->a()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->i(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    new-instance v2, Lcom/transsion/player/mediasession/f;

    invoke-direct {v2, v0, p0}, Lcom/transsion/player/mediasession/f;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;Lcom/transsion/player/mediasession/MediaService;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->e(Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/media/MediaBrowserServiceCompat;->r(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/transsion/player/mediasession/MusicIntentReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-virtual {v3}, Lcom/transsion/player/mediasession/h;->j()I

    move-result v3

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g(Landroid/app/PendingIntent;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/MediaService;->s()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> initMediaSessionCompat() --> it = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/player/mediasession/i;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$e;
    .locals 0

    const-string p2, "clientPackageName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/media/MediaBrowserServiceCompat$e;

    const-string p2, "media_service_id"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/media/MediaBrowserServiceCompat$e;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public g(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$k;)V
    .locals 1

    const-string v0, "parentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$k;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onCreate()V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/MediaService;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onCreate()"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/player/mediasession/h;->a:Lcom/transsion/player/mediasession/h;

    invoke-virtual {v0}, Lcom/transsion/player/mediasession/h;->l()V

    invoke-direct {p0}, Lcom/transsion/player/mediasession/MediaService;->t()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onDestroy()V

    sget-object v0, Lcom/transsion/player/mediasession/i;->a:Lcom/transsion/player/mediasession/i;

    invoke-direct {p0}, Lcom/transsion/player/mediasession/MediaService;->s()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onDestroy() --> \u670d\u52a1\u9500\u6bc1\u7684\u65f6\u5019\u505c\u6b62\u901a\u77e5"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/mediasession/i;->b(Ljava/lang/String;)V

    return-void
.end method
