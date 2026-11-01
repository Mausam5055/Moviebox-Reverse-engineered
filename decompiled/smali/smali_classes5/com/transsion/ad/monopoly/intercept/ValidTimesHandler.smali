.class public final Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler;
.super Lcom/transsion/ad/monopoly/intercept/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;

    iget v1, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;

    invoke-direct {v0, p0, p4}, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;-><init>(Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDisplayTimes()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, p4

    :goto_1
    sget-object v4, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->a:Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;

    invoke-virtual {v4, p2}, Lcom/transsion/ad/monopoly/intercept/NonAdShowedTimesManager;->b(Lcom/transsion/ad/db/plan/MbAdDbPlans;)I

    move-result v4

    if-ge v4, v2, :cond_6

    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->c()Lcom/transsion/ad/monopoly/intercept/a;

    move-result-object p4

    if-eqz p4, :cond_5

    iput v3, v0, Lcom/transsion/ad/monopoly/intercept/ValidTimesHandler$doHandle$1;->label:I

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/transsion/ad/monopoly/intercept/a;->b(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p4, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    if-nez p4, :cond_7

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/intercept/a;->e()Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    move-result-object p4

    goto :goto_3

    :cond_6
    new-instance p1, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;

    const-string p2, "\u5c55\u793a\u6b21\u6570\u5df2\u7ecf\u8fbe\u5230\u4e0a\u9650"

    invoke-direct {p1, p4, p2}, Lcom/transsion/ad/monopoly/model/AdPlansHitResponse;-><init>(ZLjava/lang/String;)V

    move-object p4, p1

    :cond_7
    :goto_3
    return-object p4
.end method
