.class public final Lsr/r$a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsr/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsr/r$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:Lkotlin/jvm/functions/Function1;

.field final synthetic d:Lsr/r;


# direct methods
.method public constructor <init>(Lsr/r;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lsr/r$a;->d:Lsr/r;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lsr/r$a;->a:Ljava/util/List;

    iput-object p3, p0, Lsr/r$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lsr/r$a;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic g(Lsr/r$a;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lsr/r$a;->i(Lsr/r$a;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;Landroid/view/View;)V

    return-void
.end method

.method private static final i(Lsr/r$a;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lsr/r$a;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lsr/r$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Lsr/r$a$a;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lsr/r$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    invoke-virtual {p1}, Lsr/r$a$a;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsr/r$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsr/r$a$a;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lsr/r$a$a;->f()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lsr/r$a$a;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lsr/r$a$a;->f()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lsr/q;

    invoke-direct {v0, p0, p2}, Lsr/q;-><init>(Lsr/r$a;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lsr/r$a$a;
    .locals 5

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    const/high16 v3, 0x42140000    # 37.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const v0, 0x800013

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Lsr/r$a$a;

    invoke-direct {p1, p0, p2}, Lsr/r$a$a;-><init>(Lsr/r$a;Landroid/view/View;)V

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lsr/r$a$a;

    invoke-virtual {p0, p1, p2}, Lsr/r$a;->h(Lsr/r$a$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lsr/r$a;->j(Landroid/view/ViewGroup;I)Lsr/r$a$a;

    move-result-object p1

    return-object p1
.end method
