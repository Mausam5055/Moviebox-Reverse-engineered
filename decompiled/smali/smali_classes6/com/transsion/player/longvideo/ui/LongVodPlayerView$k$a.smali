.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/longvideo/intercept/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->onCompletion(Lao/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->d(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->b(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public c()Lgo/b;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->a(Lcom/transsion/player/longvideo/intercept/d;)Lgo/b;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->e(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->g(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->f(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->c(Lcom/transsion/player/longvideo/intercept/d;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPlayerCallback$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lfo/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lfo/a$b;->onCompletion()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getPageType$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/constants/LongVodPageType;

    move-result-object v0

    sget-object v1, Lcom/transsion/player/longvideo/constants/LongVodPageType;->TRAILER:Lcom/transsion/player/longvideo/constants/LongVodPageType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showCoverBg(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k$a;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-virtual {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->showReplay()V

    :cond_1
    return-void
.end method
