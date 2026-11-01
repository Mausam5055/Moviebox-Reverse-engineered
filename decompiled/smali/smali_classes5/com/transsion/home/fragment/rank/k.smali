.class public final synthetic Lcom/transsion/home/fragment/rank/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/rank/RankListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/rank/RankListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/k;->a:Lcom/transsion/home/fragment/rank/RankListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/k;->a:Lcom/transsion/home/fragment/rank/RankListFragment;

    check-cast p1, Lcom/transsion/home/bean/RankAllData;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/rank/RankListFragment;->a0(Lcom/transsion/home/fragment/rank/RankListFragment;Lcom/transsion/home/bean/RankAllData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
