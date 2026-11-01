.class public final synthetic Lcom/transsion/home/fragment/tab/k2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/k2;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/k2;->a:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->s0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    move-result-object v0

    return-object v0
.end method
