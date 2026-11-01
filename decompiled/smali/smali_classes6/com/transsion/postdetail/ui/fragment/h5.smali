.class public final synthetic Lcom/transsion/postdetail/ui/fragment/h5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/h5;->a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/h5;->a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ShortTVRespData;

    invoke-static {v0, p1}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;->b0(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;Lcom/transsion/moviedetailapi/bean/ShortTVRespData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
