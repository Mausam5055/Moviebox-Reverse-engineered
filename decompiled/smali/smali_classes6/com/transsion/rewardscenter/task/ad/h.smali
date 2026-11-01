.class public final synthetic Lcom/transsion/rewardscenter/task/ad/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/h;->a:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/h;->a:Lcom/transsion/rewardscenter/task/ad/MemberTaskAdView;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/transsion/rewardscenter/task/ad/MemberTaskAdView;->i(Lcom/transsion/rewardscenter/task/ad/MemberTaskAdView;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
