.class public final synthetic Lcom/transsion/moviedetail/fragment/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/r;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/r;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/r;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/r;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-static {v0, v1, p1}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->k0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;Lcom/transsion/moviedetailapi/bean/Subject;Landroid/view/View;)V

    return-void
.end method
