.class public final Lcom/transsion/postdetail/ui/adapter/h;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ui/adapter/h$a;,
        Lcom/transsion/postdetail/ui/adapter/h$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/postdetail/ui/adapter/h$a;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Ljava/lang/Integer;

.field private c:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/ui/adapter/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ui/adapter/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/ui/adapter/h;->d:Lcom/transsion/postdetail/ui/adapter/h$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "reasons"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/h;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic g(Lcom/transsion/postdetail/ui/adapter/h;ILso/x;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/adapter/h;->k(Lcom/transsion/postdetail/ui/adapter/h;ILso/x;Landroid/view/View;)V

    return-void
.end method

.method private static final k(Lcom/transsion/postdetail/ui/adapter/h;ILso/x;Landroid/view/View;)V
    .locals 2

    iget-object p3, p0, Lcom/transsion/postdetail/ui/adapter/h;->b:Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/transsion/postdetail/ui/adapter/h;->b:Ljava/lang/Integer;

    iget-object p2, p2, Lso/x;->b:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-eq p2, p1, :cond_4

    const-string p1, "selection_changed"

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/postdetail/ui/adapter/h;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/transsion/postdetail/ui/adapter/h;->b:Ljava/lang/Integer;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/transsion/postdetail/ui/adapter/h;->a:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/transsion/postdetail/bean/ReportReason;

    :cond_5
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/h;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public i(Lcom/transsion/postdetail/ui/adapter/h$b;I)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/h;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/postdetail/bean/ReportReason;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/adapter/h;->b:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/adapter/h$b;->f()Lso/x;

    move-result-object p1

    iget-object v3, p1, Lso/x;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/transsion/postdetail/bean/ReportReason;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lso/x;->b:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Lso/x;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/transsion/baseui/R$drawable;->bg_radius_bottom_6_color_white_6p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lso/x;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/transsion/baseui/R$drawable;->bg_radius_top_6_color_white_6p:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lso/x;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->white_6:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    invoke-virtual {p1}, Lso/x;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcom/transsion/postdetail/ui/adapter/g;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/postdetail/ui/adapter/g;-><init>(Lcom/transsion/postdetail/ui/adapter/h;ILso/x;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j(Lcom/transsion/postdetail/ui/adapter/h$b;ILjava/util/List;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/adapter/h$b;->f()Lso/x;

    move-result-object p1

    iget-object p1, p1, Lso/x;->b:Landroidx/appcompat/widget/AppCompatCheckBox;

    iget-object p3, p0, Lcom/transsion/postdetail/ui/adapter/h;->b:Ljava/lang/Integer;

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :goto_2
    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/transsion/postdetail/ui/adapter/h$b;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lso/x;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lso/x;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/transsion/postdetail/ui/adapter/h$b;

    invoke-direct {p2, p0, p1}, Lcom/transsion/postdetail/ui/adapter/h$b;-><init>(Lcom/transsion/postdetail/ui/adapter/h;Lso/x;)V

    return-object p2
.end method

.method public final m(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/h;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/postdetail/ui/adapter/h$b;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/adapter/h;->i(Lcom/transsion/postdetail/ui/adapter/h$b;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/transsion/postdetail/ui/adapter/h$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/postdetail/ui/adapter/h;->j(Lcom/transsion/postdetail/ui/adapter/h$b;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/adapter/h;->l(Landroid/view/ViewGroup;I)Lcom/transsion/postdetail/ui/adapter/h$b;

    move-result-object p1

    return-object p1
.end method
