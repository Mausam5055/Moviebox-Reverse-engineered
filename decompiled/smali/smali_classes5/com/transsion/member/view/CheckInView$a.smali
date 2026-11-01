.class final Lcom/transsion/member/view/CheckInView$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/member/view/CheckInView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/view/CheckInView;


# direct methods
.method public constructor <init>(Lcom/transsion/member/view/CheckInView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/member/view/CheckInView$a;->i(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;Landroid/view/View;)V

    return-void
.end method

.method private static final i(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/view/CheckInView;->access$getClickListener$p(Lcom/transsion/member/view/CheckInView;)Lkotlin/jvm/functions/Function2;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/member/view/CheckInView$b;->f()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-static {v0}, Lcom/transsion/member/view/CheckInView;->access$getMaxLength$p(Lcom/transsion/member/view/CheckInView;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-static {v0}, Lcom/transsion/member/view/CheckInView;->access$getViewBinder$p(Lcom/transsion/member/view/CheckInView;)Lcom/transsion/member/view/CheckInView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/member/view/CheckInView$d;->b(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    return p1
.end method

.method public h(Lcom/transsion/member/view/CheckInView$b;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-static {v0}, Lcom/transsion/member/view/CheckInView;->access$getViewBinder$p(Lcom/transsion/member/view/CheckInView;)Lcom/transsion/member/view/CheckInView$d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/member/view/CheckInView$d;->a(Lcom/transsion/member/view/CheckInView$b;I)V

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    new-instance v2, Lcom/transsion/member/view/b;

    invoke-direct {v2, v1, p2, p1}, Lcom/transsion/member/view/b;-><init>(Lcom/transsion/member/view/CheckInView;ILcom/transsion/member/view/CheckInView$b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lcom/transsion/member/view/CheckInView$b;
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/member/view/CheckInView$b;

    iget-object v1, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    packed-switch p2, :pswitch_data_0

    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getUnActiveItemLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    move-result v3

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getUnActiveEndLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    move-result v3

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getActiveEndLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    move-result v3

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getDoneEndLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    move-result v3

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getUnActiveItemLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    move-result v3

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getActiveItemLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    move-result v3

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/transsion/member/view/CheckInView$a;->a:Lcom/transsion/member/view/CheckInView;

    invoke-static {v3}, Lcom/transsion/member/view/CheckInView;->access$getDoneItemLayoutId$p(Lcom/transsion/member/view/CheckInView;)I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v2, "inflate(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p2}, Lcom/transsion/member/view/CheckInView$b;-><init>(Lcom/transsion/member/view/CheckInView;Landroid/view/View;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/member/view/CheckInView$b;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/view/CheckInView$a;->h(Lcom/transsion/member/view/CheckInView$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/member/view/CheckInView$a;->j(Landroid/view/ViewGroup;I)Lcom/transsion/member/view/CheckInView$b;

    move-result-object p1

    return-object p1
.end method
