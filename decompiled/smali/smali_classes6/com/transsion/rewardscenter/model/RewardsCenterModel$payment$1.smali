.class public final Lcom/transsion/rewardscenter/model/RewardsCenterModel$payment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/payment/lib/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/rewardscenter/model/RewardsCenterModel;->y(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/rewardscenter/model/RewardsCenterModel;


# direct methods
.method constructor <init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$payment$1;->a:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Payment failed "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "RewardsCenter"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez p2, :cond_0

    const-string p2, "top-up failed, Please try again."

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1, p2}, Lcom/transsion/rewardscenter/utils/p;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "RewardsCenter"

    const-string v2, "onPendingTransition()"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string p1, "balance"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$payment$1;->a:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p3, p2, v0, v1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel;->h(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$payment$1;->a:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    invoke-static {p1}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/rewardscenter/model/RewardsCenterModel$payment$1$success$1;

    iget-object p1, p0, Lcom/transsion/rewardscenter/model/RewardsCenterModel$payment$1;->a:Lcom/transsion/rewardscenter/model/RewardsCenterModel;

    invoke-direct {v5, p1, v1}, Lcom/transsion/rewardscenter/model/RewardsCenterModel$payment$1$success$1;-><init>(Lcom/transsion/rewardscenter/model/RewardsCenterModel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
