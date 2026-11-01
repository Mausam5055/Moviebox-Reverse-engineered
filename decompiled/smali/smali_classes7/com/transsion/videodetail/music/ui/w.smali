.class public final synthetic Lcom/transsion/videodetail/music/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

.field public final synthetic b:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/w;->a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

    iput-object p2, p0, Lcom/transsion/videodetail/music/ui/w;->b:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/w;->a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

    iget-object v1, p0, Lcom/transsion/videodetail/music/ui/w;->b:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->u0(Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;Lcom/transsion/videodetail/music/ui/MusicDetailFragment;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
