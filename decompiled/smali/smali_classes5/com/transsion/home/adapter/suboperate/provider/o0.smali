.class public final synthetic Lcom/transsion/home/adapter/suboperate/provider/o0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;

.field public final synthetic b:Lcom/transsion/home/bean/OperateItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/transsion/home/bean/OperateItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/o0;->a:Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/o0;->b:Lcom/transsion/home/bean/OperateItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/o0;->a:Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/o0;->b:Lcom/transsion/home/bean/OperateItem;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;->z(Lcom/transsion/home/adapter/suboperate/provider/SubRankingProvider;Lcom/transsion/home/bean/OperateItem;ILcom/transsion/moviedetailapi/bean/Subject;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
