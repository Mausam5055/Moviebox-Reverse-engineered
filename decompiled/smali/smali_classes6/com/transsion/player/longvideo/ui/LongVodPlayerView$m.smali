.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/longvideo/intercept/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->setDataSource(Lgo/a;)V
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

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

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
    .locals 4

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->b(Lcom/transsion/player/longvideo/intercept/d;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->backClick$default(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZZILjava/lang/Object;)V

    return-void
.end method

.method public c()Lgo/b;
    .locals 2

    sget-object v0, Lcom/transsion/player/longvideo/member/q;->a:Lcom/transsion/player/longvideo/member/q;

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getResolutionList$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/member/q;->b(Ljava/util/List;)Lgo/b;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->e(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public e()V
    .locals 9

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->g(Lcom/transsion/player/longvideo/intercept/d;)V

    sget-object v0, Lcom/transsion/player/longvideo/member/q;->a:Lcom/transsion/player/longvideo/member/q;

    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getResolutionList$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/member/q;->b(Ljava/util/List;)Lgo/b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getClassTag(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lgo/b;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onResolutionReduction() --> \u8d44\u6e90\u5185\u5bb9\u62e6\u622a,\u964d\u7ea7\u5206\u8fa8\u7387 --> content = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "premium_p"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getConfigViewModel(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/player/longvideo/ui/dialog/a;

    move-result-object v0

    invoke-virtual {v2}, Lgo/b;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lgo/b;->b(Lgo/b;ZLjava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;ILjava/lang/Object;)Lgo/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/ui/dialog/a;->c(Lgo/b;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->f(Lcom/transsion/player/longvideo/intercept/d;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$m;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$fullScreenClick(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->c(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method
