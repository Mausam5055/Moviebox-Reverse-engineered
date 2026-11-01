.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetailapi/bean/Subject;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/q;

.field public final synthetic c:Lcom/transsion/home/bean/RankingListItem;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/adapter/q;Lcom/transsion/home/bean/RankingListItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/o;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/o;->b:Lcom/transsion/home/adapter/suboperate/adapter/q;

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/o;->c:Lcom/transsion/home/bean/RankingListItem;

    iput p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/o;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/o;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/o;->b:Lcom/transsion/home/adapter/suboperate/adapter/q;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/o;->c:Lcom/transsion/home/bean/RankingListItem;

    iget v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/o;->d:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/home/adapter/suboperate/adapter/q;->B1(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/home/adapter/suboperate/adapter/q;Lcom/transsion/home/bean/RankingListItem;ILandroid/view/View;)V

    return-void
.end method
