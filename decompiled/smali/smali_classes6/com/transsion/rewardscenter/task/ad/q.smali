.class public final synthetic Lcom/transsion/rewardscenter/task/ad/q;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/r;

.field public final synthetic b:Lcom/transsion/rewardscenter/task/ad/v;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/q;->a:Lcom/transsion/rewardscenter/task/ad/r;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/q;->b:Lcom/transsion/rewardscenter/task/ad/v;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/q;->a:Lcom/transsion/rewardscenter/task/ad/r;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/q;->b:Lcom/transsion/rewardscenter/task/ad/v;

    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v$c;

    invoke-static {v0, v1, p1}, Lcom/transsion/rewardscenter/task/ad/r;->y(Lcom/transsion/rewardscenter/task/ad/r;Lcom/transsion/rewardscenter/task/ad/v;Lcom/transsion/rewardscenter/task/ad/v$c;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
