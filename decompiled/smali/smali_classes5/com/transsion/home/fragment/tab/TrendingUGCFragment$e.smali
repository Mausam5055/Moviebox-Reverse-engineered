.class public final Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;->e:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    iput p2, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;->f:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;->e:Lcom/transsion/home/fragment/tab/TrendingUGCFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/TrendingUGCFragment;->K0(Lcom/transsion/home/fragment/tab/TrendingUGCFragment;)Lcom/transsion/home/adapter/operateUGC/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mainAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p1}, Lcom/transsion/home/bean/OperateItem;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;->f:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->TRENDING_FEES_GRID:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostItemType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/transsion/home/fragment/tab/TrendingUGCFragment$e;->f:I

    :goto_0
    return p1
.end method
