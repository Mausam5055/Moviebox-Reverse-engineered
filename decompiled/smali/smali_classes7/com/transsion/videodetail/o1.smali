.class public final synthetic Lcom/transsion/videodetail/o1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/VideoEpisodeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/VideoEpisodeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/o1;->a:Lcom/transsion/videodetail/VideoEpisodeFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/o1;->a:Lcom/transsion/videodetail/VideoEpisodeFragment;

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/VideoEpisodeFragment;->d0(Lcom/transsion/videodetail/VideoEpisodeFragment;Lcom/transsion/moviedetailapi/bean/ResourcesSeasonList;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
