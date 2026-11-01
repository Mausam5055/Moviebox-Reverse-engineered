.class public final synthetic Lcom/transsion/rewardscenter/prize/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/rewardscenter/prize/k;

.field public final synthetic d:Lcom/transsion/rewardscenterapi/DrawResult;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/prize/PrizeButtonState;Landroid/content/Context;Lcom/transsion/rewardscenter/prize/k;Lcom/transsion/rewardscenterapi/DrawResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenter/prize/j;->a:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    iput-object p2, p0, Lcom/transsion/rewardscenter/prize/j;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsion/rewardscenter/prize/j;->c:Lcom/transsion/rewardscenter/prize/k;

    iput-object p4, p0, Lcom/transsion/rewardscenter/prize/j;->d:Lcom/transsion/rewardscenterapi/DrawResult;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/rewardscenter/prize/j;->a:Lcom/transsion/rewardscenter/prize/PrizeButtonState;

    iget-object v1, p0, Lcom/transsion/rewardscenter/prize/j;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/rewardscenter/prize/j;->c:Lcom/transsion/rewardscenter/prize/k;

    iget-object v3, p0, Lcom/transsion/rewardscenter/prize/j;->d:Lcom/transsion/rewardscenterapi/DrawResult;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/rewardscenter/prize/k;->y(Lcom/transsion/rewardscenter/prize/PrizeButtonState;Landroid/content/Context;Lcom/transsion/rewardscenter/prize/k;Lcom/transsion/rewardscenterapi/DrawResult;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
