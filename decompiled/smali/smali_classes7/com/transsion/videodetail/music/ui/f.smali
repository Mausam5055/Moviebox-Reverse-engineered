.class public final synthetic Lcom/transsion/videodetail/music/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/f;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/f;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->r0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
