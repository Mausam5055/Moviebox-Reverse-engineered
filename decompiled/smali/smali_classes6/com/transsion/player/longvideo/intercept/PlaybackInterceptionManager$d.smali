.class public final Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/longvideo/intercept/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->G(JLgo/a;Lcom/transsion/player/ui/longvideo/a;Lho/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

.field final synthetic b:Lho/j;

.field final synthetic c:Lgo/a;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lho/j;Lgo/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->b:Lho/j;

    iput-object p3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->c:Lgo/a;

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
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->e(Lcom/transsion/player/longvideo/intercept/d;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->t(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Z)V

    return-void
.end method

.method public e()V
    .locals 6

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->g(Lcom/transsion/player/longvideo/intercept/d;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v1}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->p(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> onProgress() --> \u5f00\u542f\u5206\u8fa8\u7387\u964d\u7ea7 --> \u9700\u8981\u5224\u65ad\u662f\u5426\u6709\u4f4e\u5206\u8fa8\u7387"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->b:Lho/j;

    iget-object v0, v0, Lho/j;->o:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->c:Lgo/a;

    iget-object v2, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v2}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->r(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    iget-object v4, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->b:Lho/j;

    iget-object v4, v4, Lho/j;->j:Lho/i;

    iget-object v4, v4, Lho/i;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;->setPreviewingEnded(Lgo/a;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager$d;->a:Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;

    invoke-static {v0}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->o(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)Lcom/transsion/player/longvideo/intercept/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/longvideo/intercept/d;->e()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->f(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->c(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method
