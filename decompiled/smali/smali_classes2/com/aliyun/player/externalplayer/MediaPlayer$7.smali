.class Lcom/aliyun/player/externalplayer/MediaPlayer$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/player/externalplayer/MediaPlayer;-><init>(Landroid/content/Context;Lcom/aliyun/player/nativeclass/Options;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/aliyun/player/externalplayer/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$7;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$7;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$7;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$1800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/aliyun/player/ApasaraExternalPlayer$OnSeekStatusListener;->onSeekEnd(Z)V

    :cond_0
    return-void
.end method
