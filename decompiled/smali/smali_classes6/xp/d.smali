.class public final synthetic Lxp/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxp/d;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxp/d;->a:Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;

    invoke-static {v0}, Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;->h(Lcom/transsion/rewardscenter/view/RewardsCenterTaskView;)V

    return-void
.end method
