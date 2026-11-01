.class public final synthetic Lcom/transsion/home/fragment/rank/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/rank/RankAllFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/rank/RankAllFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/b;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/b;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    check-cast p1, Lcom/transsion/home/bean/RankAllData;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/rank/RankAllFragment;->d0(Lcom/transsion/home/fragment/rank/RankAllFragment;Lcom/transsion/home/bean/RankAllData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
