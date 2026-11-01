.class public final synthetic Lcom/transsion/home/fragment/rank/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/transsion/moviedetailapi/bean/Subject;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/o;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/home/fragment/rank/o;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/home/fragment/rank/o;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/o;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/home/fragment/rank/o;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/home/fragment/rank/o;->c:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-static {v0, v1, v2}, Lcom/transsion/home/fragment/rank/RankListFragment$b;->C1(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/moviedetailapi/bean/Subject;)V

    return-void
.end method
