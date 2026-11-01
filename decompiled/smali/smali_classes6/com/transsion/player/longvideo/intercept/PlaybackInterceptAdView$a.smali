.class public final Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$a;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

.field final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lkotlin/jvm/internal/Ref$IntRef;J)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$a;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    const-wide/16 p1, 0x3e8

    invoke-direct {p0, p3, p4, p1, p2}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$a;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$setRemainCountdownTime$p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;I)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$a;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$destroyAdShowCountdownTimer(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "premium_p"

    const-string v3, "StartInterceptView --> adShowCountDown() --> \u5e7f\u544a\u5c55\u793a\u7ed3\u675f\uff0c\u5173\u95ed\u542f\u64ad\u5e7f\u544a"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$a;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$onComplete(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$a;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iget-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$a;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$setRemainCountdownTime$p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;I)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$a;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-virtual {p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->getBinding()Lho/m;

    move-result-object p1

    iget-object p1, p1, Lho/m;->c:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    iget-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView$a;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    invoke-static {p2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->access$getRemainCountdownTime$p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->refreshCountDown(I)V

    return-void
.end method
