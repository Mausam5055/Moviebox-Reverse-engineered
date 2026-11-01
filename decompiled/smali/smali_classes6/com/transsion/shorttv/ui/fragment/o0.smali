.class public final synthetic Lcom/transsion/shorttv/ui/fragment/o0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/o0;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/o0;->a:Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;

    check-cast p1, Lcom/transsion/shorttv/bean/ShortTVItem;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;->n0(Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Lcom/transsion/shorttv/bean/ShortTVItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
