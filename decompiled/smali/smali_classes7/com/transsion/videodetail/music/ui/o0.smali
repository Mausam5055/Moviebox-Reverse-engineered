.class public final synthetic Lcom/transsion/videodetail/music/ui/o0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;

.field public final synthetic b:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/o0;->a:Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;

    iput-object p2, p0, Lcom/transsion/videodetail/music/ui/o0;->b:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/o0;->a:Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;

    iget-object v1, p0, Lcom/transsion/videodetail/music/ui/o0;->b:Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    check-cast p1, Lkotlin/Pair;

    invoke-static {v0, v1, p1}, Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;->h0(Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
