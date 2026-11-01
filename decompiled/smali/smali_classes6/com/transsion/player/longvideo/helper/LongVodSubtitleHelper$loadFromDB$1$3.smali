.class final Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.player.longvideo.helper.LongVodSubtitleHelper$loadFromDB$1$3"
    f = "LongVodSubtitleHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/a;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leu/a;",
            ">;",
            "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$list:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    iput-object p3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

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

    new-instance p1, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$list:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    iget-object v2, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;-><init>(Ljava/util/List;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$list:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    invoke-static {p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->B(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    invoke-static {p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->B(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$list:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    invoke-static {p1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->A(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/subtitle/VideoSubtitleControl;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$list:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/transsion/subtitle/VideoSubtitleControl;->h0(Ljava/util/List;)V

    :cond_1
    :goto_0
    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {p1, v0}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->y(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
