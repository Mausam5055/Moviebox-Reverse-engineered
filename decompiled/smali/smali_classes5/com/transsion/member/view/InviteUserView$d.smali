.class final Lcom/transsion/member/view/InviteUserView$d;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/view/InviteUserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/transsion/member/view/InviteUserView;


# direct methods
.method public constructor <init>(Lcom/transsion/member/view/InviteUserView;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput p2, p0, Lcom/transsion/member/view/InviteUserView$d;->a:I

    return-void
.end method

.method public static synthetic g(Lcom/transsion/member/view/InviteUserView;ILcom/transsion/member/view/InviteUserView$e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/member/view/InviteUserView$d;->j(Lcom/transsion/member/view/InviteUserView;ILcom/transsion/member/view/InviteUserView$e;Landroid/view/View;)V

    return-void
.end method

.method private final h(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getLoadMoreEnable$p(Lcom/transsion/member/view/InviteUserView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getLoadMoreItemLayoutId$p(Lcom/transsion/member/view/InviteUserView;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Landroid/widget/ProgressBar;

    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    const v2, 0x1010077

    invoke-direct {p1, p2, v0, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_4

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p2, v0}, Lcom/transsion/member/view/InviteUserView;->access$dpToPx(Lcom/transsion/member/view/InviteUserView;F)I

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/member/view/d;->a(Landroid/widget/ProgressBar;I)V

    invoke-static {p2, v0}, Lcom/transsion/member/view/InviteUserView;->access$dpToPx(Lcom/transsion/member/view/InviteUserView;F)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/member/view/e;->a(Landroid/widget/ProgressBar;I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p1}, Lcom/transsion/member/view/InviteUserView;->access$getLoadMoreItemLayoutId$p(Lcom/transsion/member/view/InviteUserView;)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p1}, Lcom/transsion/member/view/InviteUserView;->access$getUnActiveItemLayoutId$p(Lcom/transsion/member/view/InviteUserView;)I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p1}, Lcom/transsion/member/view/InviteUserView;->access$getActiveItemLayoutId$p(Lcom/transsion/member/view/InviteUserView;)I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p1}, Lcom/transsion/member/view/InviteUserView;->access$getDoneItemLayoutId$p(Lcom/transsion/member/view/InviteUserView;)I

    move-result p1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object p1
.end method

.method private static final j(Lcom/transsion/member/view/InviteUserView;ILcom/transsion/member/view/InviteUserView$e;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/view/InviteUserView;->access$getClickListener$p(Lcom/transsion/member/view/InviteUserView;)Lkotlin/jvm/functions/Function2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/member/view/InviteUserView$e;->f()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getList$p(Lcom/transsion/member/view/InviteUserView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v1}, Lcom/transsion/member/view/InviteUserView;->access$getLoadMoreEnable$p(Lcom/transsion/member/view/InviteUserView;)Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getList$p(Lcom/transsion/member/view/InviteUserView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getViewBinder$p(Lcom/transsion/member/view/InviteUserView;)Lcom/transsion/member/view/InviteUserView$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v1}, Lcom/transsion/member/view/InviteUserView;->access$getList$p(Lcom/transsion/member/view/InviteUserView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/transsion/member/view/InviteUserView$c;->b(ILjava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public i(Lcom/transsion/member/view/InviteUserView$e;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/transsion/member/view/InviteUserView$d;->a:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/transsion/member/view/InviteUserView$e;->f()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v0}, Lcom/transsion/member/view/InviteUserView;->access$getViewBinder$p(Lcom/transsion/member/view/InviteUserView;)Lcom/transsion/member/view/InviteUserView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {v1}, Lcom/transsion/member/view/InviteUserView;->access$getList$p(Lcom/transsion/member/view/InviteUserView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/member/view/InviteUserView$c;->c(Lcom/transsion/member/view/InviteUserView$e;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    new-instance v2, Lcom/transsion/member/view/f;

    invoke-direct {v2, v1, p2, p1}, Lcom/transsion/member/view/f;-><init>(Lcom/transsion/member/view/InviteUserView;ILcom/transsion/member/view/InviteUserView$e;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p2}, Lcom/transsion/member/view/InviteUserView;->access$isLoadMoreLoading$p(Lcom/transsion/member/view/InviteUserView;)Z

    move-result p2

    const-string v0, "itemView"

    if-eqz p2, :cond_2

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    :cond_2
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p2, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-static {p2}, Lcom/transsion/member/view/InviteUserView;->access$getNeedShowLoadMoreDismissAnimation$p(Lcom/transsion/member/view/InviteUserView;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/transsion/member/view/InviteUserView$d$a;

    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-direct {v0, p1, v1}, Lcom/transsion/member/view/InviteUserView$d$a;-><init>(Lcom/transsion/member/view/InviteUserView$e;Lcom/transsion/member/view/InviteUserView;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public k(Landroid/view/ViewGroup;I)Lcom/transsion/member/view/InviteUserView$e;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/member/view/InviteUserView$e;

    iget-object v1, p0, Lcom/transsion/member/view/InviteUserView$d;->b:Lcom/transsion/member/view/InviteUserView;

    invoke-direct {p0, p2, p1}, Lcom/transsion/member/view/InviteUserView$d;->h(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/transsion/member/view/InviteUserView$e;-><init>(Lcom/transsion/member/view/InviteUserView;Landroid/view/View;I)V

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/member/view/InviteUserView$e;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/view/InviteUserView$d;->i(Lcom/transsion/member/view/InviteUserView$e;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/view/InviteUserView$d;->k(Landroid/view/ViewGroup;I)Lcom/transsion/member/view/InviteUserView$e;

    move-result-object p1

    return-object p1
.end method
