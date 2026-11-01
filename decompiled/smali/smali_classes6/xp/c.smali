.class public final synthetic Lxp/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/view/PrizeFlowView;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/view/PrizeFlowView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxp/c;->a:Lcom/transsion/rewardscenter/view/PrizeFlowView;

    iput p2, p0, Lxp/c;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lxp/c;->a:Lcom/transsion/rewardscenter/view/PrizeFlowView;

    iget v1, p0, Lxp/c;->b:F

    invoke-static {v0, v1}, Lcom/transsion/rewardscenter/view/PrizeFlowView;->a(Lcom/transsion/rewardscenter/view/PrizeFlowView;F)V

    return-void
.end method
