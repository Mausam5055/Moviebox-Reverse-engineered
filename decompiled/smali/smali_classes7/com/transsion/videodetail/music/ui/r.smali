.class public final synthetic Lcom/transsion/videodetail/music/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/r;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    iput-object p2, p0, Lcom/transsion/videodetail/music/ui/r;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/r;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    iget-object v1, p0, Lcom/transsion/videodetail/music/ui/r;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-static {v0, v1, p1}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->I0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;Lcom/transsion/moviedetailapi/bean/Subject;Landroid/view/View;)V

    return-void
.end method
