.class public final Lcom/transsion/publish/adapter/e0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/FrameLayout$LayoutParams;

.field private d:I

.field private e:Ljava/util/List;

.field private f:I

.field private g:I

.field private h:Landroid/app/Activity;

.field private i:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "selectItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/e0;->a:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/e0;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    const/16 p1, 0x9

    iput p1, p0, Lcom/transsion/publish/adapter/e0;->f:I

    const/16 p1, 0x2800

    iput p1, p0, Lcom/transsion/publish/adapter/e0;->i:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/transsion/publish/adapter/e0;->d:I

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/transsion/publish/adapter/e0;->d:I

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/publish/adapter/e0;->c:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public static synthetic g(Lcom/transsion/publish/adapter/f0;Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/publish/adapter/e0;->v(Lcom/transsion/publish/adapter/f0;Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;ILandroid/view/View;)V

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/publish/adapter/e0;->m(Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;)V

    return-void
.end method

.method public static final synthetic i(Lcom/transsion/publish/adapter/e0;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/publish/adapter/e0;->h:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/publish/adapter/e0;)I
    .locals 0

    iget p0, p0, Lcom/transsion/publish/adapter/e0;->g:I

    return p0
.end method

.method public static final synthetic k(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/publish/adapter/e0;->s(Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;Z)V

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/publish/adapter/e0;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/publish/adapter/e0;->t()Z

    move-result p0

    return p0
.end method

.method private final m(Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/e0;->o(Lcom/transsion/publish/api/PhotoEntity;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/PhotoEntity;->setEnableSelect(Z)V

    invoke-virtual {p2}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/e0;->p(Lcom/transsion/publish/api/PhotoEntity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/transsion/publish/adapter/e0;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private final o(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private final p(Lcom/transsion/publish/api/PhotoEntity;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v2, Lcom/transsion/publish/api/PhotoEntity;

    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const-string p1, "-1"

    return-object p1
.end method

.method private final s(Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/e0;->o(Lcom/transsion/publish/api/PhotoEntity;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/PhotoEntity;->setEnableSelect(Z)V

    invoke-virtual {p2}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private final t()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/publish/adapter/e0;->f:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final v(Lcom/transsion/publish/adapter/f0;Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;ILandroid/view/View;)V
    .locals 7

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/transsion/publish/adapter/f0;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p1, Lcom/transsion/publish/adapter/e0;->h:Landroid/app/Activity;

    if-eqz p0, :cond_0

    sget p2, Lcom/transsion/publish/R$string;->add_img_max_tips:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    iget p1, p1, Lcom/transsion/publish/adapter/e0;->f:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, p4

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    invoke-virtual {p1, p0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget v1, p1, Lcom/transsion/publish/adapter/e0;->g:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/transsion/publish/n;->b:Lcom/transsion/publish/n$a;

    invoke-virtual {p2}, Lcom/transsion/publish/n$a;->a()Lcom/transsion/publish/n;

    move-result-object p2

    iget-object p4, p1, Lcom/transsion/publish/adapter/e0;->b:Ljava/util/List;

    invoke-virtual {p2, p4}, Lcom/transsion/publish/n;->f(Ljava/util/List;)V

    sget-object v0, Lcom/transsion/publish/ui/GalleryActivity;->f:Lcom/transsion/publish/ui/GalleryActivity$a;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p0, "getContext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    const/4 v4, 0x1

    iget v5, p1, Lcom/transsion/publish/adapter/e0;->f:I

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/publish/ui/GalleryActivity$a;->a(Landroid/content/Context;Ljava/util/List;III)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/publish/api/PhotoEntity;->getImageSize()J

    move-result-wide v1

    iget p0, p1, Lcom/transsion/publish/adapter/e0;->i:I

    int-to-long v3, p0

    cmp-long p0, v1, v3

    if-lez p0, :cond_5

    sget-object p0, Luh/b;->a:Luh/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$string;->add_media_max_size_tips:I

    const/16 p3, 0xa

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, p4

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v1, p1, Lcom/transsion/publish/adapter/e0;->h:Landroid/app/Activity;

    if-eqz v1, :cond_6

    sget-object v0, Lcom/transsion/publish/ui/ClippingImageActivity;->j:Lcom/transsion/publish/ui/ClippingImageActivity$a;

    iget v3, p1, Lcom/transsion/publish/adapter/e0;->g:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/transsion/publish/ui/ClippingImageActivity$a;->b(Lcom/transsion/publish/ui/ClippingImageActivity$a;Landroid/app/Activity;Ljava/lang/String;ILandroidx/activity/result/b;ILjava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public final A(Lcom/transsion/publish/api/PhotoEntity;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final addData(Ljava/util/List;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/publish/adapter/e0;->b:Ljava/util/List;

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

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/publish/adapter/f0;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/e0;->u(Lcom/transsion/publish/adapter/f0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/e0;->w(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/f0;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->b:Ljava/util/List;

    return-object v0
.end method

.method public final r()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->e:Ljava/util/List;

    return-object v0
.end method

.method public u(Lcom/transsion/publish/adapter/f0;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/publish/api/PhotoEntity;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/publish/adapter/e0;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->getThumbPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "getContext(...)"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Lej/f;->a:Lej/f$a;

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->f()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v2, Lcom/transsion/baseui/R$mipmap;->home_ic_default_res:I

    invoke-virtual {v1, v2}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lej/f$b;->j(I)Lej/f$b;

    move-result-object v1

    iget v2, p0, Lcom/transsion/publish/adapter/e0;->d:I

    invoke-virtual {v1, v2}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v1

    iget v2, p0, Lcom/transsion/publish/adapter/e0;->d:I

    invoke-virtual {v1, v2}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->f()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->getThumbPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Lej/f;->a:Lej/f$a;

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->f()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v2, Lcom/transsion/baseui/R$mipmap;->home_ic_default_res:I

    invoke-virtual {v1, v2}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lej/f$b;->j(I)Lej/f$b;

    move-result-object v1

    iget v2, p0, Lcom/transsion/publish/adapter/e0;->d:I

    invoke-virtual {v1, v2}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v1

    iget v2, p0, Lcom/transsion/publish/adapter/e0;->d:I

    invoke-virtual {v1, v2}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->f()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_1
    :goto_0
    iget v1, p0, Lcom/transsion/publish/adapter/e0;->g:I

    const/16 v2, 0x8

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/transsion/publish/adapter/e0;->t()Z

    move-result v1

    const-string v4, ""

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/transsion/publish/adapter/e0;->p(Lcom/transsion/publish/api/PhotoEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->getEnableSelect()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/transsion/publish/adapter/e0;->p(Lcom/transsion/publish/api/PhotoEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->i()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->h()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/publish/adapter/d0;

    invoke-direct {v2, p1, p0, v0, p2}, Lcom/transsion/publish/adapter/d0;-><init>(Lcom/transsion/publish/adapter/f0;Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/f0;->g()Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/transsion/publish/adapter/e0$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/transsion/publish/adapter/e0$a;-><init>(Lcom/transsion/publish/adapter/e0;Lcom/transsion/publish/api/PhotoEntity;Lcom/transsion/publish/adapter/f0;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public w(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/f0;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$layout;->item_select_image:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/f0;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/f0;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/publish/adapter/e0;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/publish/api/PhotoEntity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/publish/api/PhotoEntity;->setEnableSelect(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final y(ILandroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/transsion/publish/adapter/e0;->g:I

    iput-object p2, p0, Lcom/transsion/publish/adapter/e0;->h:Landroid/app/Activity;

    return-void
.end method

.method public final z(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/adapter/e0;->f:I

    return-void
.end method
