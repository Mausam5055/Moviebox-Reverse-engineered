.class public final Lco/h$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/orplayer/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/h;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lco/h;


# direct methods
.method constructor <init>(Lco/h;)V
    .locals 0

    iput-object p1, p0, Lco/h$h;->a:Lco/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMute()Z
    .locals 1

    iget-object v0, p0, Lco/h$h;->a:Lco/h;

    invoke-static {v0}, Lco/h;->m(Lco/h;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->W()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lco/h$h;->a:Lco/h;

    invoke-static {v0}, Lco/h;->m(Lco/h;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lco/h$h;->a:Lco/h;

    invoke-static {v0}, Lco/h;->m(Lco/h;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/a0;->play()V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lco/h$h;->a:Lco/h;

    invoke-static {v0}, Lco/h;->m(Lco/h;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->setVolume(F)V

    :cond_0
    return-void
.end method
