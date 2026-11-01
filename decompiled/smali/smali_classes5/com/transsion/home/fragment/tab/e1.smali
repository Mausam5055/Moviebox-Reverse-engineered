.class public final synthetic Lcom/transsion/home/fragment/tab/e1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/e1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/e1;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/e1;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/e1;->b:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/transsion/home/bean/MainOperateData;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/fragment/tab/TrendingFragment;->I0(Lcom/transsion/home/fragment/tab/TrendingFragment;Lkotlin/jvm/functions/Function1;Lcom/transsion/home/bean/MainOperateData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
