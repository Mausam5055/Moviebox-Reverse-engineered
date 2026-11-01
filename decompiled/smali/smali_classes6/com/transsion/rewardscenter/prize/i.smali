.class public final synthetic Lcom/transsion/rewardscenter/prize/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/prize/PrizeListView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/prize/PrizeListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/prize/i;->a:Lcom/transsion/rewardscenter/prize/PrizeListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenter/prize/i;->a:Lcom/transsion/rewardscenter/prize/PrizeListView;

    invoke-static {v0}, Lcom/transsion/rewardscenter/prize/PrizeListView;->h(Lcom/transsion/rewardscenter/prize/PrizeListView;)V

    return-void
.end method
