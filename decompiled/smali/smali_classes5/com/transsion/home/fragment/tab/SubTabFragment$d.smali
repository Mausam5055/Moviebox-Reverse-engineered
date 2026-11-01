.class public final Lcom/transsion/home/fragment/tab/SubTabFragment$d;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/SubTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/SubTabFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/SubTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$d;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$d;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-static {p2}, Lcom/transsion/home/fragment/tab/SubTabFragment;->P0(Lcom/transsion/home/fragment/tab/SubTabFragment;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$d;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    int-to-float p1, p1

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p1, p3

    invoke-static {p2}, Lcom/transsion/home/fragment/tab/SubTabFragment;->Q0(Lcom/transsion/home/fragment/tab/SubTabFragment;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1, p3}, Lkotlin/ranges/RangesKt;->h(FF)F

    move-result p1

    invoke-static {p2, p1}, Lcom/transsion/home/fragment/tab/SubTabFragment;->T0(Lcom/transsion/home/fragment/tab/SubTabFragment;F)V

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$d;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-virtual {p1}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->k0()Z

    move-result p1

    const p2, 0x3f333333    # 0.7f

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$d;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/SubTabFragment;->O0(Lcom/transsion/home/fragment/tab/SubTabFragment;)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$d;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->b0(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$d;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-virtual {p1}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->k0()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$d;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/SubTabFragment;->O0(Lcom/transsion/home/fragment/tab/SubTabFragment;)F

    move-result p1

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/SubTabFragment$d;->a:Lcom/transsion/home/fragment/tab/SubTabFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->b0(Z)V

    :cond_2
    :goto_0
    return-void
.end method
