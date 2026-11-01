.class public final Lcom/transsion/publish/adapter/v;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/adapter/v$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/publish/adapter/v$a;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/widget/FrameLayout$LayoutParams;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/publish/adapter/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/publish/adapter/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/publish/adapter/v;->e:Lcom/transsion/publish/adapter/v$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/transsion/publish/adapter/v;->c:I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/publish/adapter/v;->c:I

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/publish/adapter/v;->b:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public static synthetic g(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/v;->p(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/publish/adapter/v;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/v;->q(Lcom/transsion/publish/adapter/v;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/publish/adapter/l0;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/v;->k(Lcom/transsion/publish/adapter/l0;Landroid/view/View;)V

    return-void
.end method

.method private final j(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/l0;->i()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/l0;->f()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/transsion/publish/adapter/u;

    invoke-direct {v0, p1}, Lcom/transsion/publish/adapter/u;-><init>(Lcom/transsion/publish/adapter/l0;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final k(Lcom/transsion/publish/adapter/l0;Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/transsion/publish/ui/SelectVideoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final o(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;I)V
    .locals 3

    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/publish/adapter/s;

    invoke-direct {v0, p1, p2}, Lcom/transsion/publish/adapter/s;-><init>(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/l0;->g()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance v0, Lcom/transsion/publish/adapter/t;

    invoke-direct {v0, p0}, Lcom/transsion/publish/adapter/t;-><init>(Lcom/transsion/publish/adapter/v;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x4

    const-string v1, "getContext(...)"

    if-eqz p3, :cond_1

    new-instance p3, Ljava/io/File;

    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/l0;->h()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object v2, Lej/f;->a:Lej/f$a;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p1

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    sget p3, Lcom/transsion/publish/R$drawable;->upload_error_cover:I

    invoke-virtual {p1, p3}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lej/f$b;->j(I)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/l0;->h()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_2

    sget-object v2, Lej/f;->a:Lej/f$a;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$drawable;->upload_error_cover:I

    invoke-virtual {p1, p2}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lej/f$b;->j(I)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final p(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)V
    .locals 1

    sget-object p2, Lcom/transsion/publish/ui/VideoPreviewActivity;->f:Lcom/transsion/publish/ui/VideoPreviewActivity$a;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, p0, p1, v0}, Lcom/transsion/publish/ui/VideoPreviewActivity$a;->a(Landroid/content/Context;Lcom/transsion/publish/api/VsMediaInfo;I)V

    return-void
.end method

.method private static final q(Lcom/transsion/publish/adapter/v;Landroid/view/View;)V
    .locals 5

    iget-boolean p1, p0, Lcom/transsion/publish/adapter/v;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/publish/adapter/v;->d:Z

    new-instance v0, Lfp/a;

    invoke-direct {v0}, Lfp/a;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfp/a;->o(Ljava/lang/Integer;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfp/a;->n(Ljava/lang/Integer;)V

    sget-object v1, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v1, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v1

    check-cast v1, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v2, Lfp/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iput-boolean p1, p0, Lcom/transsion/publish/adapter/v;->d:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/api/VsMediaInfo;

    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->isAdd()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final l()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/publish/api/VsMediaInfo;

    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->isAdd()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    return-object v0
.end method

.method public final n()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/publish/adapter/l0;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/v;->r(Lcom/transsion/publish/adapter/l0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/v;->s(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/l0;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/transsion/publish/adapter/l0;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/publish/api/VsMediaInfo;

    invoke-virtual {v0}, Lcom/transsion/publish/api/VsMediaInfo;->isAdd()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/adapter/v;->j(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/publish/adapter/v;->o(Lcom/transsion/publish/adapter/l0;Lcom/transsion/publish/api/VsMediaInfo;I)V

    :goto_0
    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/l0;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance p1, Lcom/transsion/publish/adapter/l0;

    invoke-direct {p1, v1}, Lcom/transsion/publish/adapter/l0;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$layout;->item_publish_add_video:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/l0;

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/l0;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$layout;->item_publish_video:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/l0;

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/l0;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/v;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
