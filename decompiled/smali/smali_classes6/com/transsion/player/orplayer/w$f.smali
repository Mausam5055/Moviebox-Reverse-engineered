.class public final Lcom/transsion/player/orplayer/w$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/player/IPlayer$OnLoadingStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/orplayer/w;->P(Z)V
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

    iput-object p1, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingBegin()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->A(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->x(Lcom/transsion/player/orplayer/w;)Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/player/orplayer/w;->D(Lcom/transsion/player/orplayer/w;Z)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->v(Lcom/transsion/player/orplayer/w;)Lcom/transsion/player/orplayer/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v1}, Lcom/transsion/player/orplayer/w;->u(Lcom/transsion/player/orplayer/w;)Lao/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->onLoadingBegin(Lao/e;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->t(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/orplayer/f;

    invoke-static {v1}, Lcom/transsion/player/orplayer/w;->u(Lcom/transsion/player/orplayer/w;)Lao/e;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/f;->onLoadingBegin(Lao/e;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onLoadingEnd()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->A(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->x(Lcom/transsion/player/orplayer/w;)Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/player/orplayer/w;->D(Lcom/transsion/player/orplayer/w;Z)V

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->v(Lcom/transsion/player/orplayer/w;)Lcom/transsion/player/orplayer/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v1}, Lcom/transsion/player/orplayer/w;->u(Lcom/transsion/player/orplayer/w;)Lao/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/player/orplayer/f;->onLoadingEnd(Lao/e;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->t(Lcom/transsion/player/orplayer/w;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/player/orplayer/f;

    invoke-static {v1}, Lcom/transsion/player/orplayer/w;->u(Lcom/transsion/player/orplayer/w;)Lao/e;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/player/orplayer/f;->onLoadingEnd(Lao/e;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onLoadingProgress(IF)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/orplayer/w$f;->a:Lcom/transsion/player/orplayer/w;

    invoke-static {v0}, Lcom/transsion/player/orplayer/w;->x(Lcom/transsion/player/orplayer/w;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadingProgress percent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",netSpeed:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    return-void
.end method
