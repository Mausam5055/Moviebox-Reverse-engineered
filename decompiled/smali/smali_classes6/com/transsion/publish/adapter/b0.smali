.class public final Lcom/transsion/publish/adapter/b0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/widget/FrameLayout$LayoutParams;

.field private c:Lcom/transsion/publish/adapter/x;

.field private d:I

.field private e:Lcom/transsion/publish/api/AudioEntity;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/publish/adapter/b0;->a:Ljava/util/List;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/transsion/publish/adapter/b0;->d:I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/transsion/publish/adapter/b0;->d:I

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/publish/adapter/b0;->b:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public static synthetic g(Lcom/transsion/publish/adapter/b0;Lcom/transsion/publish/api/AudioEntity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/publish/adapter/b0;->m(Lcom/transsion/publish/adapter/b0;Lcom/transsion/publish/api/AudioEntity;Landroid/view/View;)V

    return-void
.end method

.method private static final m(Lcom/transsion/publish/adapter/b0;Lcom/transsion/publish/api/AudioEntity;Landroid/view/View;)V
    .locals 3

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/transsion/publish/api/AudioEntity;->getSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/publish/adapter/b0;->k(J)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/publish/R$string;->add_media_max_size_tips:I

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, p2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/publish/api/AudioEntity;->getEnableSelect()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/transsion/publish/adapter/b0;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/publish/api/AudioEntity;

    invoke-virtual {v1, p2}, Lcom/transsion/publish/api/AudioEntity;->setEnableSelect(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/transsion/publish/api/AudioEntity;->setPlay(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/publish/adapter/b0;->e:Lcom/transsion/publish/api/AudioEntity;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/publish/adapter/b0;->a:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/publish/api/AudioEntity;

    invoke-virtual {v2, p2}, Lcom/transsion/publish/api/AudioEntity;->setEnableSelect(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/AudioEntity;->setPlay(Z)V

    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/AudioEntity;->setEnableSelect(Z)V

    iput-object p1, p0, Lcom/transsion/publish/adapter/b0;->e:Lcom/transsion/publish/api/AudioEntity;

    iget-object p2, p0, Lcom/transsion/publish/adapter/b0;->c:Lcom/transsion/publish/adapter/x;

    if-eqz p2, :cond_4

    invoke-interface {p2, p1}, Lcom/transsion/publish/adapter/x;->a(Lcom/transsion/publish/api/AudioEntity;)V

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final addData(Ljava/util/List;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/b0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/publish/adapter/b0;->a:Ljava/util/List;

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

    iget-object v0, p0, Lcom/transsion/publish/adapter/b0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/b0;->a:Ljava/util/List;

    return-object v0
.end method

.method public final i()Lcom/transsion/publish/api/AudioEntity;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/b0;->e:Lcom/transsion/publish/api/AudioEntity;

    return-object v0
.end method

.method public final j(J)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    const-string p2, "1024"

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "KB"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v2, p1, p2, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final k(J)Z
    .locals 4

    const/16 v0, 0x400

    int-to-long v0, v0

    div-long/2addr p1, v0

    const-wide/16 v2, 0x400

    cmp-long v2, p1, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    :cond_0
    div-long/2addr p1, v0

    const-wide/16 v0, 0x32

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3
.end method

.method public l(Lcom/transsion/publish/adapter/c0;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/b0;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/publish/api/AudioEntity;

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c0;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/publish/api/AudioEntity;->getImageTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c0;->g()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/publish/api/AudioEntity;->getSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/publish/adapter/b0;->j(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/publish/api/AudioEntity;->getDuration()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->o(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/publish/adapter/a0;

    invoke-direct {v1, p0, p2}, Lcom/transsion/publish/adapter/a0;-><init>(Lcom/transsion/publish/adapter/b0;Lcom/transsion/publish/api/AudioEntity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/transsion/publish/api/AudioEntity;->getEnableSelect()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c0;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c0;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/publish/api/AudioEntity;->getPlay()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c0;->f()Landroid/widget/ImageView;

    move-result-object v0

    sget v3, Lcom/transsion/publish/R$drawable;->ic_audio_pause:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c0;->f()Landroid/widget/ImageView;

    move-result-object v0

    sget v3, Lcom/transsion/publish/R$drawable;->ic_audio_play:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/publish/api/AudioEntity;->getSize()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/transsion/publish/adapter/b0;->k(J)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c0;->j()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/16 v0, 0xb2

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c0;->j()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/c0;->j()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/c0;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/publish/R$layout;->item_select_music:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/c0;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/c0;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/publish/adapter/b0;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/publish/api/AudioEntity;

    invoke-virtual {v1}, Lcom/transsion/publish/api/AudioEntity;->getPlay()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/publish/api/AudioEntity;->setPlay(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/publish/adapter/c0;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/b0;->l(Lcom/transsion/publish/adapter/c0;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/b0;->n(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/c0;

    move-result-object p1

    return-object p1
.end method

.method public final p(Lcom/transsion/publish/adapter/x;)V
    .locals 1

    const-string v0, "selectItemClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/adapter/b0;->c:Lcom/transsion/publish/adapter/x;

    return-void
.end method
