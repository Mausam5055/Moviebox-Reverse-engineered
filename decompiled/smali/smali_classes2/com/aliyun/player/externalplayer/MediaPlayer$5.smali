.class Lcom/aliyun/player/externalplayer/MediaPlayer$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x2be

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;->onLoadingEnd()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$800(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$OnLoadStatusListener;->onLoadingStart()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$5;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$900(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$OnFirstFrameRenderListener;->onFirstFrameRender()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
