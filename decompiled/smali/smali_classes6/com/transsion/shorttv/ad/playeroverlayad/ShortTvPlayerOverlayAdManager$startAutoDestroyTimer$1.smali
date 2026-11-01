.class final Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->h()V
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
    c = "com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1"
    f = "ShortTvPlayerOverlayAdManager.kt"
    l = {
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;

    invoke-direct {v0, p2}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/n0;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    move-object v1, p1

    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/o0;->g(Lkotlinx/coroutines/n0;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager$startAutoDestroyTimer$1;->label:I

    const-wide/16 v3, 0x1388

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_1
    sget-object p1, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->a:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;

    invoke-static {p1}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;->a(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdManager;)V

    goto :goto_0

    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
