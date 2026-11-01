.class public final synthetic Lcom/transsion/home/fragment/rank/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/rank/RankListFragment;

.field public final synthetic b:Lcom/transsion/home/bean/RankAllData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/l;->a:Lcom/transsion/home/fragment/rank/RankListFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/rank/l;->b:Lcom/transsion/home/bean/RankAllData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/l;->a:Lcom/transsion/home/fragment/rank/RankListFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/rank/l;->b:Lcom/transsion/home/bean/RankAllData;

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/rank/RankListFragment;->d0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)V

    return-void
.end method
