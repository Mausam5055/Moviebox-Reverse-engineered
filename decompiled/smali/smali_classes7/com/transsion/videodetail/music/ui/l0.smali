.class public final synthetic Lcom/transsion/videodetail/music/ui/l0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/l0;->a:Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;

    iput-object p2, p0, Lcom/transsion/videodetail/music/ui/l0;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/l0;->a:Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;

    iget-object v1, p0, Lcom/transsion/videodetail/music/ui/l0;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;->M0(Lcom/transsion/videodetail/music/ui/MusicTabLikedFragment;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
