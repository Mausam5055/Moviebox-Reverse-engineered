.class public final synthetic Lcom/transsion/rewardscenter/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/ui/ClaimRewardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/ui/ClaimRewardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/ui/f;->a:Lcom/transsion/rewardscenter/ui/ClaimRewardFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/ui/f;->a:Lcom/transsion/rewardscenter/ui/ClaimRewardFragment;

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {v0, p1, p2, p3, p4}, Lcom/transsion/rewardscenter/ui/ClaimRewardFragment;->v0(Lcom/transsion/rewardscenter/ui/ClaimRewardFragment;Ljava/lang/CharSequence;III)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
