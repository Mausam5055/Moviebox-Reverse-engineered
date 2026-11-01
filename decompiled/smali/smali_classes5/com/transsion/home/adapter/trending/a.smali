.class public final synthetic Lcom/transsion/home/adapter/trending/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field public final synthetic b:Lcom/transsion/home/preload/b;

.field public final synthetic c:Lcom/transsion/home/adapter/trending/b;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lcom/transsion/home/viewmodel/TrendingViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/preload/b;Lcom/transsion/home/adapter/trending/b;Lkotlin/jvm/functions/Function1;Lcom/transsion/home/viewmodel/TrendingViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/a;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/a;->b:Lcom/transsion/home/preload/b;

    iput-object p3, p0, Lcom/transsion/home/adapter/trending/a;->c:Lcom/transsion/home/adapter/trending/b;

    iput-object p4, p0, Lcom/transsion/home/adapter/trending/a;->d:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/transsion/home/adapter/trending/a;->e:Lcom/transsion/home/viewmodel/TrendingViewModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/a;->a:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/a;->b:Lcom/transsion/home/preload/b;

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/a;->c:Lcom/transsion/home/adapter/trending/b;

    iget-object v3, p0, Lcom/transsion/home/adapter/trending/a;->d:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/transsion/home/adapter/trending/a;->e:Lcom/transsion/home/viewmodel/TrendingViewModel;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/home/adapter/trending/b;->Q1(Lcom/transsion/home/fragment/tab/TrendingFragment;Lcom/transsion/home/preload/b;Lcom/transsion/home/adapter/trending/b;Lkotlin/jvm/functions/Function1;Lcom/transsion/home/viewmodel/TrendingViewModel;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
