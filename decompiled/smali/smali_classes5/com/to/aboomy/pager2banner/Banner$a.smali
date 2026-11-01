.class Lcom/to/aboomy/pager2banner/Banner$a;
.super Landroidx/recyclerview/widget/RecyclerView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/to/aboomy/pager2banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/to/aboomy/pager2banner/Banner;


# direct methods
.method constructor <init>(Lcom/to/aboomy/pager2banner/Banner;)V
    .locals 0

    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$a;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$a;->a:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0}, Lcom/to/aboomy/pager2banner/Banner;->getCurrentPager()I

    move-result v1

    invoke-static {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->e(Lcom/to/aboomy/pager2banner/Banner;I)V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$a;->onChanged()V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$a;->onChanged()V

    :cond_0
    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 0

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner$a;->onChanged()V

    return-void
.end method
