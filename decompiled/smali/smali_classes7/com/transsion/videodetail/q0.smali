.class public final synthetic Lcom/transsion/videodetail/q0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/q0;->a:Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/q0;->a:Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;

    check-cast p1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;->s0(Lcom/transsion/videodetail/VideoDetailAllEpisodesFragment;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
