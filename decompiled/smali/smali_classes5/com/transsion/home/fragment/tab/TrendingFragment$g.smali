.class public final Lcom/transsion/home/fragment/tab/TrendingFragment$g;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/TrendingFragment;->M1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/fragment/tab/TrendingFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/TrendingFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->e:Lcom/transsion/home/fragment/tab/TrendingFragment;

    iput p2, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->f:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->e:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/TrendingFragment;->V0(Lcom/transsion/home/fragment/tab/TrendingFragment;)Lcom/transsion/home/adapter/trending/b;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mAdapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/home/adapter/trending/b;->T1()Z

    move-result v0

    if-nez v0, :cond_1

    iget p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->f:I

    return p1

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->e:Lcom/transsion/home/fragment/tab/TrendingFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/TrendingFragment;->V0(Lcom/transsion/home/fragment/tab/TrendingFragment;)Lcom/transsion/home/adapter/trending/b;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->SUBJECT:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/transsion/home/fragment/tab/TrendingFragment$g;->f:I

    :goto_1
    return p1
.end method
