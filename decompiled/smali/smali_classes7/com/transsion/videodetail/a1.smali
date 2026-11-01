.class public final synthetic Lcom/transsion/videodetail/a1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/a1;->a:Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/a1;->a:Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;

    check-cast p1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->a0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
