.class public Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;
.super Landroid/widget/LinearLayout;


# instance fields
.field private Dq:Z

.field private EjP:Landroid/content/Context;

.field private HiB:I

.field private Jcg:I

.field private Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:I

.field private sP:I

.field private uA:I

.field private vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x10000

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP:I

    const v0, -0xffff01

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->TKC:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->HiB:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->vS:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Jcg:I

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->EjP:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj()V

    return-void
.end method

.method private sP(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method public Sj()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->EjP:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public Sj(I)V
    .locals 6

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->vS:I

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Jcg:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->HiB:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->vS:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Jcg:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->HiB:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Dq:Z

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->uA:I

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/bytedance/adsdk/ugeno/vS/EjP;->Sj(ZII)I

    move-result v2

    iget-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Dq:Z

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, p1, v4}, Lcom/bytedance/adsdk/ugeno/vS/EjP;->Sj(ZII)I

    move-result v3

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/bytedance/adsdk/ugeno/vS/EjP;->Sj(ILjava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/bytedance/adsdk/ugeno/vS/EjP;->Sj(ILjava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->TKC:I

    invoke-direct {p0, v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP:I

    invoke-direct {p0, v2}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->uA:I

    :cond_1
    return-void
.end method

.method public Sj(II)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->TKC:I

    invoke-direct {p0, v2}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP:I

    invoke-direct {p0, v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput p2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->uA:I

    :cond_2
    return-void
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public sP()V
    .locals 4

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->vS:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Jcg:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->HiB:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->TKC:I

    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Dq:Z

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP:I

    return-void
.end method

.method public setUnSelectedColor(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->TKC:I

    return-void
.end method
