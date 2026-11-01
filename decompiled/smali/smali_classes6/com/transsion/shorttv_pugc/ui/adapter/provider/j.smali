.class public final Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# instance fields
.field private final e:Landroidx/fragment/app/Fragment;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private final h:Z

.field private final i:I

.field private j:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;

.field private final k:Lkotlin/Lazy;

.field private l:I

.field private m:J


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->f:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->g:Z

    iput-boolean p4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->h:Z

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result p1

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->i:I

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/adapter/provider/g;

    invoke-direct {p1, p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/g;-><init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->k:Lkotlin/Lazy;

    const/4 p1, -0x1

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->l:I

    return-void
.end method

.method public static synthetic A(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->K(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic B(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)I
    .locals 0

    iget p0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->l:I

    return p0
.end method

.method public static final synthetic C(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->e:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->M()V

    return-void
.end method

.method public static final synthetic E(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->O(Landroid/view/View;IIF)V

    return-void
.end method

.method public static final synthetic F(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->m:J

    return-void
.end method

.method public static final synthetic G(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->l:I

    return-void
.end method

.method private static final H(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)Lcom/transsion/shorttv_pugc/utils/a;
    .locals 1

    new-instance v0, Lcom/transsion/shorttv_pugc/utils/a;

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->f:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/utils/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final J(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;ILcom/transsion/shorttv_pugc/bean/BannerData;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->N(ILcom/transsion/shorttv_pugc/bean/BannerData;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final K(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->O(Landroid/view/View;IIF)V

    return-void
.end method

.method private final L()Lcom/transsion/shorttv_pugc/utils/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/utils/a;

    return-object v0
.end method

.method private final M()V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->l:I

    if-ltz v1, :cond_4

    iget-object v2, v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->j:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    goto :goto_5

    :cond_1
    iget-wide v1, v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->m:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    :goto_1
    move-wide/from16 v16, v3

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->m:J

    sub-long v3, v1, v3

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->j:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v2, v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->l:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv_pugc/bean/BannerData;

    if-eqz v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->L()Lcom/transsion/shorttv_pugc/utils/a;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->f:Ljava/lang/String;

    sget-object v2, Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;->BANNER:Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getHasResource()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getDeepLink()Ljava/lang/String;

    move-result-object v13

    iget v2, v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getImage()Lcom/transsion/shorttv_pugc/bean/Image;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v15, v2

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :goto_4
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getBuiltIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v20, 0x1030

    const/16 v21, 0x0

    const-string v7, "opt"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    invoke-static/range {v5 .. v21}, Lcom/transsion/shorttv_pugc/utils/a;->b(Lcom/transsion/shorttv_pugc/utils/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/lang/Boolean;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_4
    :goto_5
    return-void
.end method

.method private final N(ILcom/transsion/shorttv_pugc/bean/BannerData;)V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->L()Lcom/transsion/shorttv_pugc/utils/a;

    move-result-object v0

    move-object/from16 v15, p0

    iget-object v1, v15, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->f:Ljava/lang/String;

    sget-object v16, Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;->BANNER:Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getHasResource()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getDeepLink()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getImage()Lcom/transsion/shorttv_pugc/bean/Image;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getBuiltIn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/16 v14, 0x10b0

    const/16 v17, 0x0

    const-string v2, "opt"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object/from16 v15, v17

    invoke-static/range {v0 .. v15}, Lcom/transsion/shorttv_pugc/utils/a;->d(Lcom/transsion/shorttv_pugc/utils/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getDeepLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ldt/a;->a:Ldt/a;

    invoke-virtual/range {v16 .. v16}, Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;->getValue()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ops="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldt/a;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lds/c;->j(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method private final O(Landroid/view/View;IIF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->j:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/bean/BannerData;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->j:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->getData()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv_pugc/bean/BannerData;

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getImage()Lcom/transsion/shorttv_pugc/bean/Image;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/Image;->getAverageHueDark()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getImage()Lcom/transsion/shorttv_pugc/bean/Image;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/Image;->getAverageHueDark()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    if-ne p2, p3, :cond_2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p4, p2, p3}, Li00/a;->a(FII)I

    move-result p2

    :goto_1
    const/4 p3, 0x0

    filled-new-array {p2, p3}, [I

    move-result-object p2

    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    sget-object p4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p3, p4, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public static synthetic y(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)Lcom/transsion/shorttv_pugc/utils/a;
    .locals 0

    invoke-static {p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->H(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)Lcom/transsion/shorttv_pugc/utils/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;ILcom/transsion/shorttv_pugc/bean/BannerData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->J(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;ILcom/transsion/shorttv_pugc/bean/BannerData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/OperateItem;)V
    .locals 5

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/OperateItem;->getBanner()Lcom/transsion/shorttv_pugc/bean/BannerBean;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    sget v0, Lcom/transsion/shorttv/R$id;->v_banner_bg:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$id;->v_top_space:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    sget v1, Lcom/transsion/shorttv/R$id;->v_bar_space:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->i:I

    iget-boolean v4, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->h:Z

    if-eqz v4, :cond_1

    const/16 v4, 0x32

    :goto_0
    invoke-static {v4}, Lct/a;->a(I)I

    move-result v4

    goto :goto_1

    :cond_1
    const/16 v4, 0xa

    goto :goto_0

    :goto_1
    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/transsion/shorttv/R$id;->banner:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;

    new-instance v1, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;

    invoke-direct {v1}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;-><init>()V

    new-instance v2, Lcom/transsion/shorttv_pugc/ui/adapter/provider/h;

    invoke-direct {v2, p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/h;-><init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)V

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->k(Lkotlin/jvm/functions/Function3;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {p1, v2, v3}, Lcom/to/aboomy/pager2banner/Banner;->setAutoTurningTime(J)Lcom/to/aboomy/pager2banner/Banner;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v2, v3}, Lcom/to/aboomy/pager2banner/Banner;->setPagerScrollDuration(J)Lcom/to/aboomy/pager2banner/Banner;

    iget-boolean v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->g:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    int-to-float v2, v2

    const/high16 v3, 0x42300000    # 44.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/to/aboomy/pager2banner/Banner;->setPageMargin(II)Lcom/to/aboomy/pager2banner/Banner;

    new-instance v2, Lcom/to/aboomy/pager2banner/b;

    invoke-direct {v2}, Lcom/to/aboomy/pager2banner/b;-><init>()V

    invoke-virtual {p1, v2}, Lcom/to/aboomy/pager2banner/Banner;->addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/to/aboomy/pager2banner/Banner;

    new-instance v2, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;

    invoke-direct {v2, p0, v0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;-><init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;)V

    invoke-virtual {p1, v2}, Lcom/to/aboomy/pager2banner/Banner;->setOuterPageChangeListener(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {p1, v1}, Lcom/to/aboomy/pager2banner/Banner;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->setData(Ljava/util/List;)V

    new-instance p2, Lcom/transsion/shorttv_pugc/ui/adapter/provider/i;

    invoke-direct {p2, p0, v0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/i;-><init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv_pugc/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;->BANNER:Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_view_banner:I

    return v0
.end method
