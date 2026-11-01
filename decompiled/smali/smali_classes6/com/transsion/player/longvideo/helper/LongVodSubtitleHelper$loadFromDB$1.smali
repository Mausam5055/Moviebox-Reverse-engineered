.class final Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->Q(Lcom/transsion/baselib/db/download/DownloadBean;)V
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
    c = "com.transsion.player.longvideo.helper.LongVodSubtitleHelper$loadFromDB$1"
    f = "LongVodSubtitleHelper.kt"
    l = {
        0xba,
        0xbd,
        0xc1,
        0xc9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bean:Lcom/transsion/baselib/db/download/DownloadBean;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p2, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

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

    new-instance p1, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;

    iget-object v0, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v1

    iput v5, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->label:I

    invoke-interface {p1, v1, p0}, Lcom/transsion/subtitle/h;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v5, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    invoke-static {v5}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->C(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v5

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->label:I

    invoke-interface {v5, v1, p0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v13, v3

    move-object v3, p1

    move-object p1, v1

    move-object v1, v13

    :goto_1
    check-cast p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    move-object p1, v6

    :goto_2
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleSelectId(Ljava/lang/String;)V

    :goto_3
    move-object p1, v3

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    iget-object v5, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    invoke-static {v5}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->D(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    move-result-object v5

    iput-object p1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->label:I

    invoke-interface {v5, v1, p0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v3, p1

    move-object p1, v1

    move-object v1, v4

    :goto_4
    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_a
    move-object p1, v6

    :goto_5
    invoke-virtual {v1, p1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleSelectId(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    invoke-static {v1}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;->z(Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;)Lcom/transsion/player/longvideo/helper/x;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/transsion/player/longvideo/helper/x;->f(Ljava/lang/String;)V

    sget-object v7, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isUGCVideo()Z

    move-result v1

    iget-object v3, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleResId()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_7

    :cond_c
    move-object v8, v6

    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadFromDB ,isUGCVideo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",subtitleSelectId:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subjectId:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "LongVodPlayerView"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    new-instance v3, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;

    iget-object v4, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->this$0:Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;

    iget-object v5, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->$bean:Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1$3;-><init>(Ljava/util/List;Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)V

    iput-object v6, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$0:Ljava/lang/Object;

    iput-object v6, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper$loadFromDB$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    :cond_d
    :goto_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
