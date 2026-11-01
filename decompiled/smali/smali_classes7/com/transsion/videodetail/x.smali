.class public final synthetic Lcom/transsion/videodetail/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/StreamDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/StreamDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/x;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/x;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    check-cast p1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/StreamDetailFragment;->q0(Lcom/transsion/videodetail/StreamDetailFragment;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
