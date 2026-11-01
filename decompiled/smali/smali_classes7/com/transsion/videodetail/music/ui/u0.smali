.class public final synthetic Lcom/transsion/videodetail/music/ui/u0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/u0;->a:Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/u0;->a:Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;->c0(Lcom/transsion/videodetail/music/ui/SubjectMusicHeaderFragment;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
