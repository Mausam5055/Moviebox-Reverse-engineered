.class public final synthetic Lcom/transsion/home/fragment/tab/j2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/j2;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/j2;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    check-cast p1, Lcom/transsion/home/bean/TrendingRespData;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->D0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;Lcom/transsion/home/bean/TrendingRespData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
