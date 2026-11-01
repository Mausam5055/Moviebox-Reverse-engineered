.class public final Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/manager/OooO00o;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public OooO00o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

.field public OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)V
    .locals 1

    const-string v0, "$tmcFragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p0, Lcom/cloud/tmc/miniapp/action/RefreshAction;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/cloud/tmc/miniapp/action/RefreshAction;

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/RefreshAction;->onRefreshEvent()V

    :cond_0
    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;)V
    .locals 1

    const-string v0, "$tmcFragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p0, Lcom/cloud/tmc/miniapp/action/RefreshAction;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/cloud/tmc/miniapp/action/RefreshAction;

    invoke-interface {p0}, Lcom/cloud/tmc/miniapp/action/RefreshAction;->onLoadMoreEvent()V

    :cond_0
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Landroid/view/View;)Landroid/view/View;
    .locals 4

    const-string v0, "tmcFragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO00o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO00o()V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;-><init>(II)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo00;

    :cond_1
    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-direct {v0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;-><init>(Landroid/view/View;)V

    iput-object v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    iget-boolean p2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o000OOo:Z

    if-eqz p2, :cond_2

    iget p2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOOoo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOo00:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0O:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO0o;

    iget-boolean v2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooO0:Z

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;

    iget-object v3, v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;

    iput-boolean v2, v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO0o;->OooO0OO:Z

    iget-object v2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0ooOoO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    invoke-virtual {v1, v2, p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/impl/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;Landroid/view/View;Landroid/view/View;)V

    :cond_2
    iget-object p2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object p2

    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0O0:Z

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->oo000o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_3
    iget-object p2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getSpinnerStyle()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    move-result-object p2

    iget-boolean p2, p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0O0:Z

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00oO0o:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;

    invoke-interface {p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_4
    return-object p1
.end method

.method public final OooO00o()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO00o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tmcFragment.requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "close egg"

    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    invoke-direct {v2, v1, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v5, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    if-eqz v5, :cond_0

    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v5, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_0
    iget-object v5, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    iput-boolean v6, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    if-eqz v5, :cond_1

    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v5, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_1
    sget v5, Lcom/cloud/tmc/miniapp/R$anim;->layout_refresh_loading:I

    iput-object v3, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    iget-object v8, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    if-eqz v5, :cond_2

    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v5, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_2
    sget v5, Lcom/cloud/tmc/miniapp/R$color;->mini_color_element_03:I

    invoke-static {v1, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    sget v5, Lcom/cloud/tmc/miniapp/R$color;->mini_color_bg_02:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v4, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;

    new-instance v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;

    invoke-direct {v2, v1, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v5, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    iput-boolean v6, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    if-eqz v5, :cond_3

    check-cast v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v5, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_3
    sget v5, Lcom/cloud/tmc/miniapp/R$anim;->layout_refresh_loading:I

    iput-object v3, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    iget-object v3, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    if-eqz v3, :cond_4

    check-cast v3, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v3, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_4
    sget v3, Lcom/cloud/tmc/miniapp/R$color;->mini_color_element_03:I

    invoke-static {v1, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_bg_02:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v1, 0x64

    iput v1, v2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    invoke-virtual {v4, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    iput-boolean v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    iput-boolean v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    iput-boolean v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0oO:Z

    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o00o0O:F

    iput-boolean v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo0o0:Z

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/j;

    invoke-direct {v2, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/j;-><init>(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    iput-object v2, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOoo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0OO;

    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/k;

    invoke-direct {v2, v0}, Lcom/cloud/tmc/miniapp/defaultimpl/k;-><init>(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    iput-object v2, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Ooooo00:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/listener/OooO0O0;

    iget-boolean v0, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    if-nez v0, :cond_5

    iget-boolean v0, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    if-nez v0, :cond_6

    :cond_5
    move v6, v1

    :cond_6
    iput-boolean v6, v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    :cond_7
    return-void
.end method

.method public OooO00o(F)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->getRefreshHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result p1

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOooO:I

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result p1

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0oO:I

    :cond_2
    :goto_1
    return-void
.end method

.method public OooO00o(I)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->getRefreshFooter()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    :cond_1
    return-void
.end method

.method public OooO00o(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    :cond_0
    return-void
.end method

.method public OooO00o(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->getRefreshHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    iput-object p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooOO0:Ljava/io/File;

    iput-object p2, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooOO0O:Ljava/io/File;

    iput-object p3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooOO0o:Ljava/io/File;

    iput-object p4, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooOOO0:Ljava/io/File;

    :cond_1
    return-void
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 3

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO00o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "custom"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    invoke-direct {p1, v0, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o0:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    iget-object v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    if-eqz v1, :cond_2

    check-cast v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0O;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO0;

    :cond_2
    sget v1, Lcom/cloud/tmc/miniapp/R$color;->mini_color_element_03:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o0:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    const v2, 0xffffff

    and-int/2addr v0, v2

    const/high16 v2, -0x34000000    # -3.3554432E7f

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    sget v0, Lcom/cloud/tmc/miniapp/R$color;->mini_color_bg_02:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v0, 0x578

    iput v0, p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0oo:I

    move-object v1, p1

    :cond_4
    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;

    :cond_5
    :goto_1
    return-void
.end method

.method public OooO00o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    iput-boolean p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->Oooo00o:Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOo0:Z

    :cond_0
    return-void
.end method

.method public OooO0O0(F)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result p1

    iput p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->ooOO:I

    :cond_0
    return-void
.end method

.method public OooO0O0(I)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->getRefreshHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public OooO0O0(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, p2, v1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZLjava/lang/Boolean;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    :cond_0
    return-void
.end method

.method public OooO0O0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->getRefreshHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o0:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisibleOrGone(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public OooO0OO(I)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->getRefreshFooter()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public OooO0OO(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    iput-boolean p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooO:Z

    :cond_0
    return-void
.end method

.method public OooO0Oo(I)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->getRefreshHeader()Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;

    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0OO;->OooO0o0:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v1, 0xffffff

    and-int/2addr p1, v1

    const/high16 v1, -0x34000000    # -3.3554432E7f

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public OooO0Oo(Z)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OoooOOo:Z

    iput-boolean p1, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooOooo:Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO00o:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    return-void
.end method

.method public startRefresh()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public stopLoadMore()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZZ)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO0o;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->o0OO00O:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x12c

    rsub-int v1, v1, 0x12c

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;->OooO00o(IZLjava/lang/Boolean;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/OooO00o;

    :cond_0
    return-void
.end method
