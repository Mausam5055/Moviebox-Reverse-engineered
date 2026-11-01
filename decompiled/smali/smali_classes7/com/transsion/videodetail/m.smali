.class public final synthetic Lcom/transsion/videodetail/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/videodetail/StreamDetailFragment;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/videodetail/StreamDetailFragment;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/m;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    iput-object p2, p0, Lcom/transsion/videodetail/m;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/m;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    iget-object v1, p0, Lcom/transsion/videodetail/m;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-static {v0, v1, p1}, Lcom/transsion/videodetail/StreamDetailFragment;->j0(Lcom/transsion/videodetail/StreamDetailFragment;Lcom/transsion/moviedetailapi/bean/Subject;Landroid/view/View;)V

    return-void
.end method
