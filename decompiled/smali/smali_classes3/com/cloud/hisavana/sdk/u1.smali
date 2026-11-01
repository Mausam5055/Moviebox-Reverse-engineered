.class public final Lcom/cloud/hisavana/sdk/u1;
.super Lcom/cloud/hisavana/sdk/o0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/g4;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/o0;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/cloud/hisavana/sdk/g4;)V

    return-void
.end method

.method public static synthetic m(Lcom/cloud/hisavana/sdk/u1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/u1;->p(Lcom/cloud/hisavana/sdk/u1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/cloud/hisavana/sdk/u1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/u1;->o(Lcom/cloud/hisavana/sdk/u1;Landroid/view/View;)V

    return-void
.end method

.method private static final o(Lcom/cloud/hisavana/sdk/u1;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->f()Lcom/cloud/hisavana/sdk/g4;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/cloud/hisavana/sdk/g4;->a(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->f()Lcom/cloud/hisavana/sdk/g4;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/cloud/hisavana/sdk/g4;->b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private static final p(Lcom/cloud/hisavana/sdk/u1;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->f()Lcom/cloud/hisavana/sdk/g4;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/cloud/hisavana/sdk/g4;->b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Landroid/widget/ImageView;F)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpg-float p2, v0, p2

    if-nez p2, :cond_0

    sget p2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_close:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/cloud/hisavana/sdk/R$drawable;->hisavana_volume_open:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/common/util/HSChronometer;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$string;->reward_before_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->setTickStringFormat(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$string;->reward_after_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/util/HSChronometer;->setFinishedString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 6

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->g()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ad_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->g()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->source_size:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/util/r;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->f()Lcom/cloud/hisavana/sdk/g4;

    move-result-object v3

    invoke-interface {v3}, Lcom/cloud/hisavana/sdk/g4;->c()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const-string v5, "9:16"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v4

    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->g()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ad_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_4

    :cond_9
    const/16 p1, 0x8

    :goto_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    if-eqz v0, :cond_a

    new-instance p1, Lcom/cloud/hisavana/sdk/s1;

    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/s1;-><init>(Lcom/cloud/hisavana/sdk/u1;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->g()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_float_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Lcom/cloud/hisavana/sdk/t1;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/t1;-><init>(Lcom/cloud/hisavana/sdk/u1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public e(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->f()Lcom/cloud/hisavana/sdk/g4;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Lcom/cloud/hisavana/sdk/g4;->a(I)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->f()Lcom/cloud/hisavana/sdk/g4;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/cloud/hisavana/sdk/g4;->b(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 5

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->f()Lcom/cloud/hisavana/sdk/g4;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/g4;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->a()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->f()Lcom/cloud/hisavana/sdk/g4;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/g4;->f()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getLogoUrl(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getTitleTxt(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getDescriptionTxt(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getButtonTxt(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6

    :goto_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScale()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9:16"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->f()Lcom/cloud/hisavana/sdk/g4;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/g4;->a(Z)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->a()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01_916:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->a()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->a()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01_expose:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    return-void

    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->a()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    return-void

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/o0;->a()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->activity_rewarded_r01:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    :cond_9
    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method
