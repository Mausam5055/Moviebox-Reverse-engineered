.class public Lzi/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/room/api/IFloatingApi;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 2

    const-string v0, "refer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioBean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p2}, Lcom/transsion/audio/view/d;->d(Landroid/app/Activity;Lcom/transsion/baselib/db/audio/AudioBean;)Lcom/transsion/audio/view/d;

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Lcom/transsion/audio/view/d;->f(Landroid/app/Activity;)Lcom/transsion/audio/view/d;

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/view/d;->s()V

    return-void
.end method

.method public c()V
    .locals 2

    sget-object v0, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/AudioPlayer;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer;->G()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/c;->a:Z

    :cond_0
    invoke-virtual {p0}, Lzi/c;->hide()V

    return-void
.end method

.method public d(Lcom/transsion/room/api/IFloatingApi$a;)V
    .locals 1

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/view/d;->v(Lcom/transsion/room/api/IFloatingApi$a;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lzi/c;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/audio/player/AudioPlayer;->i:Lcom/transsion/audio/player/AudioPlayer$a;

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer$a;->a()Lcom/transsion/audio/player/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/AudioPlayer;->S()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzi/c;->a:Z

    invoke-virtual {p0}, Lzi/c;->show()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/view/d;->x(Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/ref/WeakReference;)V
    .locals 1

    const-string v0, "refer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/view/d;->f(Landroid/app/Activity;)Lcom/transsion/audio/view/d;

    return-void
.end method

.method public h()V
    .locals 1

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/view/d;->r()V

    return-void
.end method

.method public hide()V
    .locals 2

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/transsion/audio/view/d;->w(I)Lcom/transsion/audio/view/d;

    return-void
.end method

.method public i(Ljava/lang/ref/WeakReference;)V
    .locals 1

    const-string v0, "refer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/transsion/audio/view/d;->h(Landroid/app/Activity;)Lcom/transsion/audio/view/d;

    return-void
.end method

.method public j(Lcom/transsion/room/api/IFloatingApi$a;)V
    .locals 1

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/audio/view/d;->u(Lcom/transsion/room/api/IFloatingApi$a;)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-static {}, Lcom/transsion/audio/view/d;->k()Lcom/transsion/audio/view/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/view/d;->w(I)Lcom/transsion/audio/view/d;

    return-void
.end method
