.class public Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a:Z

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private a()Landroid/view/View;
    .locals 3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mbridge_order_layout_item"

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;-><init>()V

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v2, "mbridge_lv_iv"

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeImageView;

    iput-object v2, v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->c:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeImageView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v2, "mbridge_lv_iv_burl"

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->k:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v2, "mbridge_lv_icon_iv"

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/videocommon/view/RoundImageView;

    iput-object v2, v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->d:Lcom/mbridge/msdk/videocommon/view/RoundImageView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v2, "mbridge_lv_sv_starlevel"

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;

    iput-object v2, v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->i:Lcom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v2, "mbridge_lv_ration"

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBRotationView;

    iput-object v2, v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBRotationView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(ILjava/util/List;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    new-instance v1, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;

    invoke-direct {v1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$Builder;->campaignEx(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->fileDirs(Ljava/util/List;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p2

    sget-object v1, Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;->REWARD:Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;

    invoke-interface {p2, v1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->dyAdType(Lcom/mbridge/msdk/dycreator/wrapper/DyAdType;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->orientation(I)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->adChoiceLink(Ljava/lang/String;)Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption$IViewOptionBuilder;->build()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewCreator;->getInstance()Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewCreator;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/dycreator/wrapper/DynamicViewCreator;->createDynamicView(Lcom/mbridge/msdk/dycreator/wrapper/DyOption;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a:Z

    new-instance p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    invoke-direct {p2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v0, "mbridge_lv_iv"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;

    iput-object v0, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->l:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v0, "mbridge_lv_iv_burl"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->k:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v0, "mbridge_lv_icon_iv"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;

    iput-object v0, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->m:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v0, "mbridge_lv_sv_starlevel"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/MBStarLevelLayoutView;

    iput-object v0, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->n:Lcom/mbridge/msdk/dycreator/baseview/MBStarLevelLayoutView;

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v0, "mbridge_lv_ration"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/dycreator/baseview/MBFrameLayout;

    iput-object v0, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->p:Lcom/mbridge/msdk/dycreator/baseview/MBFrameLayout;

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method private a(I)V
    .locals 8

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v1, v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getAppDesc()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v1, v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getAdCall()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v1, v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->g:Landroid/widget/TextView;

    instance-of v1, v1, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/mbridge/msdk/video/dynview/ui/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/ui/b;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v2, v2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/dynview/ui/b;->a(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v2, v2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->g:Landroid/widget/TextView;

    check-cast v2, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeTextView;->setObjectAnimator(Landroid/animation/ObjectAnimator;)V

    :cond_2
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v1, v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->j:Landroid/widget/ImageView;

    const-string v1, "OrderCampAdapter"

    if-eqz v0, :cond_6

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "drawable"

    if-nez v3, :cond_4

    :try_start_1
    const-string v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->j:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "mbridge_reward_flag_cn"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->j:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v5, "mbridge_reward_flag_en"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v3, p1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->j:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x2

    invoke-static/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(ILandroid/widget/ImageView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;ZLcom/mbridge/msdk/foundation/feedback/a;)V

    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p1, p1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "mbridge_reward_viewed_text_str"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p1, p1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)V
    .locals 7

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p2, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->c:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeImageView;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_2
    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p2, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->k:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_3
    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p2, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->d:Lcom/mbridge/msdk/videocommon/view/RoundImageView;

    if-eqz p2, :cond_4

    const/16 v1, 0x19

    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/videocommon/view/RoundImageView;->setBorderRadius(I)V

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p2, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->d:Lcom/mbridge/msdk/videocommon/view/RoundImageView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p2, v1, v2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_4
    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getRating()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double p2, v1, v3

    if-gtz p2, :cond_5

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    :cond_5
    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p2, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->i:Lcom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;

    if-eqz p2, :cond_6

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getNumberRating()I

    move-result p1

    invoke-virtual {p2, v1, v2, p1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;->setRatingAndUser(DI)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p1, p1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->i:Lcom/mbridge/msdk/video/dynview/widget/MBridgeLevelLayoutView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p1, p1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBRotationView;

    if-eqz p1, :cond_7

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBRotationView;->setWidthRatio(F)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p1, p1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBRotationView;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBRotationView;->setHeightRatio(F)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p1, p1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBRotationView;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBRotationView;->setAutoscroll(Z)V

    :cond_7
    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, p1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->c:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeImageView;

    if-eqz v0, :cond_8

    const/16 v5, 0xa

    const/high16 v6, -0x67000000

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    invoke-virtual/range {v0 .. v6}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeImageView;->setCustomBorder(IIIIII)V

    :cond_8
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v1, "mbridge_lv_item_rl"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->a:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v1, "mbridge_lv_title_tv"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v1, "mbridge_lv_tv_install"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v1, "mbridge_lv_sv_heat_level"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/dycreator/baseview/MBHeatLevelLayoutView;

    iput-object v1, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->o:Lcom/mbridge/msdk/dycreator/baseview/MBHeatLevelLayoutView;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v1, "mbridge_lv_desc_tv"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v1, "mbridge_iv_flag"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    const-string v1, "mbridge_order_viewed_tv"

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->h:Landroid/widget/TextView;

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$a;-><init>(Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;Landroid/widget/ImageView;Z)V

    invoke-virtual {v0, p2, v1}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private b(I)Landroid/view/View;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const-string v0, "501"

    :goto_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v1}, Lcom/mbridge/msdk/foundation/tools/x;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "template_config.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "template_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_item"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/m0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(ILjava/util/List;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a()Landroid/view/View;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OrderCampAdapter"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_3
    iget-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a:Z

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a()Landroid/view/View;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method private b(ILandroid/view/ViewGroup;)V
    .locals 7

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->l:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;

    const/4 p2, 0x0

    if-eqz v0, :cond_2

    const/16 v5, 0xa

    const/high16 v6, -0x67000000

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    invoke-virtual/range {v0 .. v6}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->setCustomBorder(IIIIII)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->l:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->m:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;

    if-eqz v0, :cond_4

    const/16 v1, 0x14

    const/4 v2, -0x1

    const/16 v3, 0x32

    invoke-virtual {v0, v3, v1, v2}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;->setBorder(III)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->m:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBCusRoundImageView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getRating()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_5

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    :cond_5
    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v2, v2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->n:Lcom/mbridge/msdk/dycreator/baseview/MBStarLevelLayoutView;

    if-eqz v2, :cond_6

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/dycreator/baseview/MBStarLevelLayoutView;->setRating(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->n:Lcom/mbridge/msdk/dycreator/baseview/MBStarLevelLayoutView;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_6
    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iget-object p2, p2, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;->o:Lcom/mbridge/msdk/dycreator/baseview/MBHeatLevelLayoutView;

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getNumberRating()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/dycreator/baseview/MBHeatLevelLayoutView;->setHeatCount(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public d(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b(I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b:Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a$b;

    :goto_0
    invoke-direct {p0, p2}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->b(ILandroid/view/ViewGroup;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(ILandroid/view/ViewGroup;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/dynview/ordercamp/adapter/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "OrderCampAdapter"

    invoke-static {p3, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object p2
.end method
