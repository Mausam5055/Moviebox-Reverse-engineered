.class public final synthetic Lcom/transsion/rewardscenter/task/ad/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/a0;->a:Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/a0;->a:Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;->m(Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
