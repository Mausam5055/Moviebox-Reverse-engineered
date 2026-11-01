.class final Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1;->a(Ljava/lang/String;I)V
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
    c = "com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1"
    f = "ShortTvDetailListFragment.kt"
    l = {
        0x46e
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $it:Ljs/e;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;


# direct methods
.method constructor <init>(Ljs/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljs/e;",
            "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->$it:Ljs/e;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->this$0:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->$it:Ljs/e;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->this$0:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;-><init>(Ljs/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljs/e;

    iget-object v2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->$it:Ljs/e;

    invoke-virtual {p1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Media;->getVideo()Lcom/transsion/shorttv/bean/Video;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->this$0:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    iget-object v3, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->$it:Ljs/e;

    invoke-static {v1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->y0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lqs/d;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljs/e;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v6

    iput-object v1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment$downloadListener$1$onDownloadSuccess$2$1;->label:I

    invoke-interface {v4, v5, v6, p1, p0}, Lqs/d;->a(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    move-object v1, v3

    move-object v11, v2

    move-object v2, p1

    move-object p1, v11

    :goto_0
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->x0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)Llo/f;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v9, Lao/e;

    invoke-virtual {v1}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Ljs/e;->c()I

    move-result v4

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v0, v9

    move-object v1, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v7}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v9, p1}, Lao/e;->t(Ljava/lang/String;)V

    invoke-interface {v8, v9}, Llo/f;->b(Lao/e;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
