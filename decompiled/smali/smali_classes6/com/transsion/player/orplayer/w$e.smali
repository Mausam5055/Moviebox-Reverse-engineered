.class public final Lcom/transsion/player/orplayer/w$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/orplayer/w;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/orplayer/w;


# direct methods
.method constructor <init>(Lcom/transsion/player/orplayer/w;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/orplayer/w$e;->a:Lcom/transsion/player/orplayer/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMute()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$e;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->isMute()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$e;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$e;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/player/IPlayer;->start()V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$e;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->s(Lcom/transsion/player/orplayer/w;)Lcom/aliyun/player/AliPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/player/IPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method
