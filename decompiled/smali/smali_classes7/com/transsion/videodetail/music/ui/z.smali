.class public final synthetic Lcom/transsion/videodetail/music/ui/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/z;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/z;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    check-cast p1, Lcom/transsion/videodetail/bean/VideoDetailStreamList;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->C0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;Lcom/transsion/videodetail/bean/VideoDetailStreamList;)V

    return-void
.end method
