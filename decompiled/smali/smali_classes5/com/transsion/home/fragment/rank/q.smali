.class public final synthetic Lcom/transsion/home/fragment/rank/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/rank/RankListFragment$b;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/q;->a:Lcom/transsion/home/fragment/rank/RankListFragment$b;

    iput-object p2, p0, Lcom/transsion/home/fragment/rank/q;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    iput p3, p0, Lcom/transsion/home/fragment/rank/q;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/q;->a:Lcom/transsion/home/fragment/rank/RankListFragment$b;

    iget-object v1, p0, Lcom/transsion/home/fragment/rank/q;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    iget v2, p0, Lcom/transsion/home/fragment/rank/q;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->D1(Lcom/transsion/home/fragment/rank/RankListFragment$b;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V

    return-void
.end method
