.class final Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.shorttv.subtitle.ShortTVSubtitleControlImp$checkSubtitle$1$1"
    f = "ShortTVSubtitleControlImp.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $history:Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lts/b;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lts/b;",
            ">;",
            "Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;",
            "Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->$list:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    iput-object p3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->$history:Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

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

    new-instance p1, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;

    iget-object v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->$list:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    iget-object v2, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->$history:Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;-><init>(Ljava/util/List;Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->$list:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {p1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->v(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Lws/a;

    move-result-object p1

    invoke-virtual {p1}, Lws/a;->d()Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->$list:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSubtitle setList, size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v3}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->v(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Lws/a;

    move-result-object v3

    invoke-virtual {v3}, Lws/a;->d()Landroidx/lifecycle/b0;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    iget-object v4, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->$history:Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/ShortTvInnerPlayBean;->getSubtitleSelectId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    invoke-static {v3, p1, v4}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->w(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;Ljava/util/List;Ljava/lang/String;)V

    :cond_3
    :goto_1
    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lts/a;

    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v3}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->q(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljs/e;

    move-result-object v3

    invoke-virtual {v3}, Ljs/e;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v3}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->q(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljs/e;

    move-result-object v3

    invoke-virtual {v3}, Ljs/e;->e()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v5}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->q(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljs/e;

    move-result-object v5

    invoke-virtual {v5}, Ljs/e;->c()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "short"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v3}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->q(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljs/e;

    move-result-object v3

    invoke-virtual {v3}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_2

    :cond_4
    move-object v8, v2

    :goto_2
    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v3}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->q(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljs/e;

    move-result-object v3

    invoke-virtual {v3}, Ljs/e;->c()I

    move-result v9

    iget-object v3, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v3}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->q(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljs/e;

    move-result-object v3

    invoke-virtual {v3}, Ljs/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->getSe()I

    move-result v1

    :cond_5
    move v10, v1

    iget-object v1, p0, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp$checkSubtitle$1$1;->this$0:Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;

    invoke-static {v1}, Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;->s(Lcom/transsion/shorttv/subtitle/ShortTVSubtitleControlImp;)Ljava/lang/String;

    move-result-object v11

    const-string v6, ""

    const-string v7, ""

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lts/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    sget-object v1, Lcom/transsion/shorttv/subtitle/manager/b;->a:Lcom/transsion/shorttv/subtitle/manager/b$a;

    invoke-virtual {v1}, Lcom/transsion/shorttv/subtitle/manager/b$a;->b()Lcom/transsion/shorttv/subtitle/manager/b;

    move-result-object v1

    invoke-static {v1, p1, v2, v0, v2}, Lcom/transsion/shorttv/subtitle/manager/b$b;->a(Lcom/transsion/shorttv/subtitle/manager/b;Lts/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
