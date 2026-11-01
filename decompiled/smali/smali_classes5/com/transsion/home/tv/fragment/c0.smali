.class public final synthetic Lcom/transsion/home/tv/fragment/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/tv/fragment/c0;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/fragment/c0;->a:Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;

    check-cast p1, Lcom/transsion/home/tv/bean/TvChannelItem;

    invoke-static {v0, p1}, Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;->A0(Lcom/transsion/home/tv/fragment/TvLiveDetailFragment;Lcom/transsion/home/tv/bean/TvChannelItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
