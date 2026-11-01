.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOO0;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/dialog/OooOOO0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO00o:Lkotlin/Lazy;

.field public final OooO0O0:Lkotlin/Lazy;

.field public final OooO0OO:Lkotlin/Lazy;

.field public final OooO0Oo:Lkotlin/Lazy;

.field public final OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

.field public final OooO0o0:Lkotlin/Lazy;

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:Lcom/cloud/tmc/miniapp/base/BaseAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO00o:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOOO;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOOO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0O0:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOOO0;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0OO:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0Oo:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0O;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o0:Lkotlin/Lazy;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    const-string v1, ""

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0oO:Ljava/lang/String;

    new-instance v1, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0o;

    invoke-direct {v1, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0o;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO:Landroid/util/ArrayMap;

    sget v1, Lcom/cloud/tmc/miniapp/R$layout;->mini_layout_bottom_dialog:I

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setBackgroundDimEnabled(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->fl_container:I

    new-instance v2, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO00o;

    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter;->setOnChildClickListener(ILcom/cloud/tmc/miniapp/base/BaseAdapter$OnChildClickListener;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0O0()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO00o()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x43340000    # 180.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    :goto_2
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnCancelListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0OO;

    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOO0$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooOOO0;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    return-void
.end method


# virtual methods
.method public final OooO00o()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-eq v1, v3, :cond_3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o:Lcom/cloud/tmc/miniapp/dialog/OooOOO;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final OooO0O0()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final OooO0OO()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOO0;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
