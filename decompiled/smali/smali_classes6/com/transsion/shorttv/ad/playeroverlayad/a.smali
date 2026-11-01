.class public final Lcom/transsion/shorttv/ad/playeroverlayad/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/transsion/shorttv/ad/AdLoadState;

.field private b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->IDLE:Lcom/transsion/shorttv/ad/AdLoadState;

    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a:Lcom/transsion/shorttv/ad/AdLoadState;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lcom/transsion/shorttv/ad/AdLoadState;->DESTROYED:Lcom/transsion/shorttv/ad/AdLoadState;

    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a:Lcom/transsion/shorttv/ad/AdLoadState;

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->f()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c:Z

    return-void
.end method

.method public final b()Lcom/transsion/shorttv/ad/playeroverlayad/e;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    return-object v0
.end method

.method public final c()Lcom/transsion/shorttv/ad/AdLoadState;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a:Lcom/transsion/shorttv/ad/AdLoadState;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c:Z

    return v0
.end method

.method public final f(Lcom/transsion/shorttv/ad/playeroverlayad/e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->b:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    return-void
.end method

.method public final g(Lcom/transsion/shorttv/ad/AdLoadState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->a:Lcom/transsion/shorttv/ad/AdLoadState;

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->d:Z

    return-void
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/a;->c:Z

    return-void
.end method
