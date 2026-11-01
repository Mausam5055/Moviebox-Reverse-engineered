.class public final Lcom/transsion/publish/adapter/g;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/adapter/g$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/publish/adapter/g$a;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/widget/FrameLayout$LayoutParams;

.field private c:I

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/publish/adapter/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/publish/adapter/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/publish/adapter/g;->e:Lcom/transsion/publish/adapter/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/transsion/publish/adapter/g;->c:I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/publish/adapter/g;->c:I

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/publish/adapter/g;->b:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public static synthetic g(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/api/PhotoEntity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/g;->q(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/api/PhotoEntity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/adapter/c;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/publish/adapter/g;->p(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/adapter/c;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/adapter/g;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/g;->k(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/adapter/g;Landroid/view/View;)V

    return-void
.end method

.method private final j(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/publish/adapter/g;->getItemCount()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->i()Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v0, "0/9"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    const-string p2, "/9"

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->i()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/publish/adapter/g;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->i()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/publish/adapter/g;->getItemCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->f()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lcom/transsion/publish/adapter/f;

    invoke-direct {v0, p1, p0}, Lcom/transsion/publish/adapter/f;-><init>(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/adapter/g;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method private static final k(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/adapter/g;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/publish/adapter/c;->f()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p2, Lcom/transsion/publish/ui/SelectImageActivity;->q:Lcom/transsion/publish/ui/SelectImageActivity$a;

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v1, p1, v0}, Lcom/transsion/publish/ui/SelectImageActivity$a;->a(Landroid/content/Context;IILjava/util/List;)V

    :cond_0
    return-void
.end method

.method private final o(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/api/PhotoEntity;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->h()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$drawable;->upload_error_cover:I

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/publish/adapter/d;

    invoke-direct {v1, p0, p1, p3}, Lcom/transsion/publish/adapter/d;-><init>(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/adapter/c;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c;->g()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p3, Lcom/transsion/publish/adapter/e;

    invoke-direct {p3, p0, p2}, Lcom/transsion/publish/adapter/e;-><init>(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/api/PhotoEntity;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final p(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/adapter/c;ILandroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/publish/adapter/g;->l()Ljava/util/List;

    move-result-object v2

    sget-object p0, Lcom/transsion/publish/n;->b:Lcom/transsion/publish/n$a;

    invoke-virtual {p0}, Lcom/transsion/publish/n$a;->a()Lcom/transsion/publish/n;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/publish/n;->f(Ljava/util/List;)V

    sget-object v0, Lcom/transsion/publish/ui/GalleryActivity;->f:Lcom/transsion/publish/ui/GalleryActivity$a;

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "getContext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/16 v5, 0x9

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/publish/ui/GalleryActivity$a;->a(Landroid/content/Context;Ljava/util/List;III)V

    return-void
.end method

.method private static final q(Lcom/transsion/publish/adapter/g;Lcom/transsion/publish/api/PhotoEntity;Landroid/view/View;)V
    .locals 0

    iget-boolean p2, p0, Lcom/transsion/publish/adapter/g;->d:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/transsion/publish/adapter/g;->d:Z

    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/g;->t(Lcom/transsion/publish/api/PhotoEntity;)V

    iput-boolean p2, p0, Lcom/transsion/publish/adapter/g;->d:Z

    return-void
.end method

.method private final t(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance p1, Lfp/a;

    invoke-direct {p1}, Lfp/a;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfp/a;->o(Ljava/lang/Integer;)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfp/a;->n(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "getName(...)"

    const-class v3, Lfp/a;

    const-class v4, Lcom/transsnet/flow/event/FlowEventBus;

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {v1}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v8, 0x8

    if-ne v1, v8, :cond_3

    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {v8}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v7

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lcom/transsion/publish/api/PhotoEntity;

    invoke-direct {v0}, Lcom/transsion/publish/api/PhotoEntity;-><init>()V

    invoke-virtual {v0, v7}, Lcom/transsion/publish/api/PhotoEntity;->setAdd(Z)V

    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    invoke-virtual {v0, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    invoke-virtual {v0, v4}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v5, v6}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public final addData(Ljava/util/List;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

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

    iget-object v1, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

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

    check-cast v2, Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    return-object v0
.end method

.method public final n()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

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

    check-cast p1, Lcom/transsion/publish/adapter/c;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/g;->r(Lcom/transsion/publish/adapter/c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/g;->s(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/c;

    move-result-object p1

    return-object p1
.end method

.method public r(Lcom/transsion/publish/adapter/c;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->isAdd()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/transsion/publish/adapter/g;->j(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/api/PhotoEntity;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/publish/adapter/g;->o(Lcom/transsion/publish/adapter/c;Lcom/transsion/publish/api/PhotoEntity;I)V

    :goto_0
    return-void
.end method

.method public s(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/c;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance p1, Lcom/transsion/publish/adapter/c;

    invoke-direct {p1, v1}, Lcom/transsion/publish/adapter/c;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$layout;->item_publish_add_image:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/c;

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/c;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$layout;->item_publish_image:I

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/c;

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final u()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/g;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
