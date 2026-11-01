.class Lcom/aliyun/player/externalplayer/MediaPlayer$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$4;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$4;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$4;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    invoke-static {p1}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$700(Lcom/aliyun/player/externalplayer/MediaPlayer;)Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;

    move-result-object p1

    sget-object v0, Lcom/aliyun/player/bean/ErrorCode;->ERROR_UNKNOWN:Lcom/aliyun/player/bean/ErrorCode;

    invoke-virtual {v0}, Lcom/aliyun/player/bean/ErrorCode;->getValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", extra="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/aliyun/player/ApasaraExternalPlayer$OnErrorListener;->onError(ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/aliyun/player/externalplayer/MediaPlayer$4;->this$0:Lcom/aliyun/player/externalplayer/MediaPlayer;

    sget-object p2, Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;->PLAYER_ERROR:Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/aliyun/player/externalplayer/MediaPlayer;->access$600(Lcom/aliyun/player/externalplayer/MediaPlayer;Lcom/aliyun/player/ApasaraExternalPlayer$PlayerStatus;Z)V

    return p3
.end method
