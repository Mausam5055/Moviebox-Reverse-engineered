.class final Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->p(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.player.mediasession.MediaBrowserCompatHelper$init$1$2$2"
    f = "MediaBrowserCompatHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/support/v4/media/session/MediaControllerCompat$e;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $it:Landroid/app/Application;

.field final synthetic $this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/support/v4/media/session/MediaControllerCompat$e;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;",
            "Landroid/app/Application;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    iput-object p3, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$it:Landroid/app/Application;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;

    iget-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    iget-object v2, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$it:Landroid/app/Application;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/app/Application;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->g(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_0
    iget-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat;

    iget-object v1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$it:Landroid/app/Application;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$it:Landroid/app/Application;

    const-class v4, Lcom/transsion/player/mediasession/MediaService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {v3}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->f(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat$c;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/MediaBrowserCompat;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$c;Landroid/os/Bundle;)V

    invoke-static {p1, v0}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->n(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;Landroid/support/v4/media/MediaBrowserCompat;)V

    iget-object p1, p0, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper$init$1$2$2;->$this_runCatching:Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;

    invoke-static {p1}, Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;->i(Lcom/transsion/player/mediasession/MediaBrowserCompatHelper;)Landroid/support/v4/media/MediaBrowserCompat;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaBrowserCompat;->a()V

    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
