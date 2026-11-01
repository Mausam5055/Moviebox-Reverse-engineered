.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->b1(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;J)V
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
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$saveHistory$1"
    f = "ShortTvViewModel.kt"
    l = {
        0x2e5,
        0x2e6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $progress:J

.field final synthetic $shortTVItem:Lcom/transsion/shorttv/bean/ShortTVItem;

.field final synthetic $subject:Lcom/transsion/shorttv/bean/Subject;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
            "Lcom/transsion/shorttv/bean/Subject;",
            "Lcom/transsion/shorttv/bean/ShortTVItem;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    iput-object p3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$shortTVItem:Lcom/transsion/shorttv/bean/ShortTVItem;

    iput-wide p4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$progress:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;

    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    iget-object v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$shortTVItem:Lcom/transsion/shorttv/bean/ShortTVItem;

    iget-wide v4, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$progress:J

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;-><init>(Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->A0()Lqs/h;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    iget-object v6, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$shortTVItem:Lcom/transsion/shorttv/bean/ShortTVItem;

    iget-wide v7, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$progress:J

    iput v3, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->label:I

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Lqs/h;->a(Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->this$0:Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lqs/d;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$subject:Lcom/transsion/shorttv/bean/Subject;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    move-object v4, p1

    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$shortTVItem:Lcom/transsion/shorttv/bean/ShortTVItem;

    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    move-result v5

    iget-wide v6, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->$progress:J

    iput v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$saveHistory$1;->label:I

    move-object v8, p0

    invoke-interface/range {v3 .. v8}, Lqs/d;->d(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
