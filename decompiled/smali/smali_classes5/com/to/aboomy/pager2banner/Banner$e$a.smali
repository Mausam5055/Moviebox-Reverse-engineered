.class Lcom/to/aboomy/pager2banner/Banner$e$a;
.super Landroidx/recyclerview/widget/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/to/aboomy/pager2banner/Banner$e;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic q:Lcom/to/aboomy/pager2banner/Banner$e;


# direct methods
.method constructor <init>(Lcom/to/aboomy/pager2banner/Banner$e;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$e$a;->q:Lcom/to/aboomy/pager2banner/Banner$e;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected w(I)I
    .locals 4

    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$e$a;->q:Lcom/to/aboomy/pager2banner/Banner$e;

    iget-object p1, p1, Lcom/to/aboomy/pager2banner/Banner$e;->b:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {p1}, Lcom/to/aboomy/pager2banner/Banner;->f(Lcom/to/aboomy/pager2banner/Banner;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3fe542c3c9eecbfbL    # 0.6644

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method
