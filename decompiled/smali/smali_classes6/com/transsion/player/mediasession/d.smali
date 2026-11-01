.class public final synthetic Lcom/transsion/player/mediasession/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/player/mediasession/MediaItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/mediasession/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/mediasession/d;->a:Lcom/transsion/player/mediasession/MediaItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/mediasession/d;->a:Lcom/transsion/player/mediasession/MediaItem;

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$e;

    invoke-static {v0, p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->b(Lcom/transsion/player/mediasession/MediaItem;Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
