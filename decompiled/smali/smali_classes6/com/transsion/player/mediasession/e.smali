.class public final synthetic Lcom/transsion/player/mediasession/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/support/v4/media/session/MediaControllerCompat$e;

    invoke-static {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->c(Landroid/support/v4/media/session/MediaControllerCompat$e;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
