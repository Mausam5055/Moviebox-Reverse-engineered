.class public abstract Lcom/cloud/tmc/miniapp/base/BaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/ResourcesAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;,
        Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;,
        Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildLongClickListener;,
        Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;,
        Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/cloud/tmc/miniapp/base/BaseAdapter<",
        "TVH;>.BaseViewHolder;>",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/cloud/tmc/miniapp/action/ResourcesAction;"
    }
.end annotation


# instance fields
.field private final childClickListeners$delegate:Lkotlin/Lazy;

.field private final childLongClickListeners$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;

.field private itemClickListener:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

.field private itemLongClickListener:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;

.field private positionOffset:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->context:Landroid/content/Context;

    sget-object p1, Lcom/cloud/tmc/miniapp/base/BaseAdapter$childClickListeners$2;->INSTANCE:Lcom/cloud/tmc/miniapp/base/BaseAdapter$childClickListeners$2;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->childClickListeners$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/cloud/tmc/miniapp/base/BaseAdapter$childLongClickListeners$2;->INSTANCE:Lcom/cloud/tmc/miniapp/base/BaseAdapter$childLongClickListeners$2;

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->childLongClickListeners$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getChildClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getChildClickListeners()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getChildLongClickListeners(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroid/util/SparseArray;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getChildLongClickListeners()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getItemClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->itemClickListener:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

    return-object p0
.end method

.method public static final synthetic access$getItemLongClickListener$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->itemLongClickListener:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;

    return-object p0
.end method

.method public static final synthetic access$getPositionOffset$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)I
    .locals 0

    iget p0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->positionOffset:I

    return p0
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/cloud/tmc/miniapp/base/BaseAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private final checkRecyclerViewState()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "are you ok?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getChildClickListeners()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->childClickListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method private final getChildLongClickListeners()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildLongClickListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->childLongClickListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public generateDefaultLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$m;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getColor(I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getColor(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)I

    move-result p1

    return p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getDrawable(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getResources(Lcom/cloud/tmc/miniapp/action/ResourcesAction;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getSystemService(Lcom/cloud/tmc/miniapp/action/ResourcesAction;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->generateDefaultLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->onBindViewHolder(Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getAdapterPosition()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->positionOffset:I

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;->onBindView(I)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setOnChildClickListener(ILcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->checkRecyclerViewState()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getChildClickListeners()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setOnChildLongClickListener(ILcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildLongClickListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->checkRecyclerViewState()V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->getChildLongClickListeners()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->checkRecyclerViewState()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->itemClickListener:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->checkRecyclerViewState()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->itemLongClickListener:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemLongClickListener;

    return-void
.end method
