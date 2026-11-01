.class public final synthetic Lcom/transsion/rewardscenter/task/ad/b0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/v$c;

.field public final synthetic b:Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/v$c;Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/b0;->a:Lcom/transsion/rewardscenter/task/ad/v$c;

    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/b0;->b:Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/b0;->a:Lcom/transsion/rewardscenter/task/ad/v$c;

    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/b0;->b:Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;

    invoke-static {v0, v1}, Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;->j(Lcom/transsion/rewardscenter/task/ad/v$c;Lcom/transsion/rewardscenter/task/ad/StageTaskAdView;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
