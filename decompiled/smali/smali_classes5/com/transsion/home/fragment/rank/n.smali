.class public final synthetic Lcom/transsion/home/fragment/rank/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/rank/RankListFragment$a;

.field public final synthetic b:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/rank/RankListFragment$a;Lcom/transsion/moviedetailapi/bean/Subject;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/n;->a:Lcom/transsion/home/fragment/rank/RankListFragment$a;

    iput-object p2, p0, Lcom/transsion/home/fragment/rank/n;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    iput p3, p0, Lcom/transsion/home/fragment/rank/n;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/n;->a:Lcom/transsion/home/fragment/rank/RankListFragment$a;

    iget-object v1, p0, Lcom/transsion/home/fragment/rank/n;->b:Lcom/transsion/moviedetailapi/bean/Subject;

    iget v2, p0, Lcom/transsion/home/fragment/rank/n;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/fragment/rank/RankListFragment$a;->B1(Lcom/transsion/home/fragment/rank/RankListFragment$a;Lcom/transsion/moviedetailapi/bean/Subject;ILandroid/view/View;)V

    return-void
.end method
