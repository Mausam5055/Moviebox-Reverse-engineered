.class final Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.ad.test.ad_config.TestAdPlansActivity$onCreate$4$1$1"
    f = "TestAdPlansActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $allAdPlans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ad/db/plan/MbAdDbPlans;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;Ljava/util/List;Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;",
            "Ljava/util/List<",
            "Lcom/transsion/ad/db/plan/MbAdDbPlans;",
            ">;",
            "Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->$mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;

    iput-object p2, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->$allAdPlans:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;

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

    new-instance p1, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;

    iget-object v0, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->$mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;

    iget-object v1, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->$allAdPlans:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;-><init>(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;Ljava/util/List;Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->$mAdPlanAdapter:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$AdPlansAdapter;

    iget-object v0, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->$allAdPlans:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->$allAdPlans:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ba1\u5212\u6570\u91cf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity$onCreate$4$1$1;->this$0:Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;

    invoke-static {v1}, Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;->U(Lcom/transsion/ad/test/ad_config/TestAdPlansActivity;)Lji/x;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v0, v0, Lji/x;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
