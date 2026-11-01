.class public final synthetic Lll/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lll/b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lll/b;->a:Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;

    check-cast p1, Lcom/transsion/home/bean/UGCRankAllData;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;->c0(Lcom/transsion/home/fragment/ranking/UGCRankAllFragment;Lcom/transsion/home/bean/UGCRankAllData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
