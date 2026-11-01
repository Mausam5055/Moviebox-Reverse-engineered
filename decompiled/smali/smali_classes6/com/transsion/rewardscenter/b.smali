.class public final synthetic Lcom/transsion/rewardscenter/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/g0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/b;->a:Lcom/transsion/rewardscenter/task/ad/g0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/b;->a:Lcom/transsion/rewardscenter/task/ad/g0;

    invoke-static {v0}, Lcom/transsion/rewardscenter/RewardsCenterProvider;->f(Lcom/transsion/rewardscenter/task/ad/g0;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
