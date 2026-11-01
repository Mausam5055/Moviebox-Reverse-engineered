.class public final Lcom/transsion/audio/player/l$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/player/l;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/player/l;


# direct methods
.method constructor <init>(Lcom/transsion/audio/player/l;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/player/l$b;->a:Lcom/transsion/audio/player/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingBegin()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/audio/player/l$b;->a:Lcom/transsion/audio/player/l;

    invoke-static {v1}, Lcom/transsion/audio/player/l;->n(Lcom/transsion/audio/player/l;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onLoadingBegin--->"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/player/l$b;->a:Lcom/transsion/audio/player/l;

    invoke-static {v0}, Lcom/transsion/audio/player/l;->m(Lcom/transsion/audio/player/l;)Lcom/transsion/player/orplayer/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/transsion/player/orplayer/f$a;->j(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onLoadingEnd()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/audio/player/l$b;->a:Lcom/transsion/audio/player/l;

    invoke-static {v1}, Lcom/transsion/audio/player/l;->n(Lcom/transsion/audio/player/l;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "onLoadingEnd----->"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/player/l$b;->a:Lcom/transsion/audio/player/l;

    invoke-static {v0}, Lcom/transsion/audio/player/l;->m(Lcom/transsion/audio/player/l;)Lcom/transsion/player/orplayer/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/transsion/player/orplayer/f$a;->l(Lcom/transsion/player/orplayer/f;Lao/e;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onLoadingProgress(IF)V
    .locals 7

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/audio/player/l$b;->a:Lcom/transsion/audio/player/l;

    invoke-static {v1}, Lcom/transsion/audio/player/l;->n(Lcom/transsion/audio/player/l;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadingProgress percent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",netSpeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/audio/player/l$b;->a:Lcom/transsion/audio/player/l;

    invoke-static {v0}, Lcom/transsion/audio/player/l;->m(Lcom/transsion/audio/player/l;)Lcom/transsion/player/orplayer/f;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/transsion/player/orplayer/f$a;->n(Lcom/transsion/player/orplayer/f;IFLao/e;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
