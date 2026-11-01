.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/longvideo/intercept/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;->onRenderFirstFrame()V
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

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k$b;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

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
    .locals 6

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->c(Lcom/transsion/player/longvideo/intercept/d;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const-string v2, "StartInterceptAdManager --> \u542f\u64ad\u903b\u8f91\u5904\u7406\u5b8c\u6bd5\uff0c\u7ee7\u7eed\u64ad\u653e"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k$b;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$onPrepare2PlayVideo(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    return-void
.end method
