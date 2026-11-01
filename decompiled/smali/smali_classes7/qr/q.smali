.class public final synthetic Lqr/q;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqr/q;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqr/q;->a:Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;

    check-cast p1, Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;->h0(Lcom/transsion/shorttv/_channel/ui/fragment/ShortTvPlayListFragment;Lcom/transsnet/flow/event/sync/event/AddToDownloadEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
