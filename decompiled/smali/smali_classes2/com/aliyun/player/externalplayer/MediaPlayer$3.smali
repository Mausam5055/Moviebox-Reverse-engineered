.class Lcom/aliyun/player/externalplayer/MediaPlayer$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$500(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/aliyun/player/ApasaraExternalPlayer$OnCompletionListener;->onCompletion()V

    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$3;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    sget-object v0, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_COMPLETION:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$600(Lcom/aliyun/player/externalplayer/MediaPlayer;Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    return-void
.end method
