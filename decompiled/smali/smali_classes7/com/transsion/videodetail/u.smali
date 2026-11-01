.class public final synthetic Lcom/transsion/videodetail/u;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

.field public final synthetic b:Lcom/transsion/videodetail/StreamDetailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;Lcom/transsion/videodetail/StreamDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/u;->a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

    iput-object p2, p0, Lcom/transsion/videodetail/u;->b:Lcom/transsion/videodetail/StreamDetailFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/u;->a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

    iget-object v1, p0, Lcom/transsion/videodetail/u;->b:Lcom/transsion/videodetail/StreamDetailFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/videodetail/StreamDetailFragment;->I0(Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;Lcom/transsion/videodetail/StreamDetailFragment;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
