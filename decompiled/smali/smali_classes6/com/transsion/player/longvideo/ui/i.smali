.class public final synthetic Lcom/transsion/player/longvideo/ui/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/i;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/i;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->Y(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/baselib/helper/ScreenRotationHelper;

    move-result-object v0

    return-object v0
.end method
