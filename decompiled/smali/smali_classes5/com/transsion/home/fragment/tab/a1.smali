.class public final synthetic Lcom/transsion/home/fragment/tab/a1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/a1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/a1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    check-cast p1, Lcom/transsion/home/bean/TrendingRespData;

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/tab/TrendingFragment;->P0(Lcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/bean/TrendingRespData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
