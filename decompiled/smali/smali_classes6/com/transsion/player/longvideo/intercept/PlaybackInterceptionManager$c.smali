.class public final Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/longvideo/intercept/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->D(Lao/e;Lgo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

.field final synthetic b:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

.field final synthetic c:Lcom/transsion/player/longvideo/intercept/d;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$c;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$c;->b:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$c;->c:Lcom/transsion/player/longvideo/intercept/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$c;->h(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method private static final h(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;->destroy()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/longvideo/intercept/d;->onComplete()V

    :cond_0
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

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$c;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onCompletion() --> \u7ed3\u675f\u5e7f\u544a\u5c55\u793a\u5b8c\u6210"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$c;->b:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$c;->c:Lcom/transsion/player/longvideo/intercept/d;

    new-instance v2, Lcom/transsion/player/longvideo/intercept/a0;

    invoke-direct {v2, v0, v1}, Lcom/transsion/player/longvideo/intercept/a0;-><init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptAdView;Lcom/transsion/player/longvideo/intercept/d;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
