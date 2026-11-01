.class public final synthetic Lcom/transsion/shorttv/ui/fragment/r;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/r;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/r;->a:Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;

    check-cast p1, Lcom/transsion/shorttv/bean/ShortTVRespData;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;->p0(Lcom/transsion/shorttv/ui/fragment/ShortTVDiscoverFragment;Lcom/transsion/shorttv/bean/ShortTVRespData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
