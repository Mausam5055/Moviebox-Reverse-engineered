.class public abstract Lcom/transsion/ad/bidding/base/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/r;->a:Landroid/content/Context;

    return-void
.end method

.method private final C(Lcom/hisavana/mediation/ad/ViewBinder;)V
    .locals 3

    sget-object v0, Lti/b;->a:Lti/b;

    iget-object v1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->layout:Landroid/view/View;

    const-string v2, "layout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lcom/hisavana/mediation/ad/ViewBinder;->callToActionId:I

    invoke-virtual {v0, v1, p1}, Lti/b;->e(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic a(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/bidding/base/r;->r(Landroidx/appcompat/widget/AppCompatTextView;)V

    return-void
.end method

.method private final f(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/r;->t()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final r(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lti/b;->a:Lti/b;

    invoke-virtual {v1, v0}, Lti/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c()Ljava/lang/Integer;
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Lcom/transsion/ad/bidding/base/w;
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->t()I

    move-result v1

    iget-object v2, v0, Lcom/transsion/ad/bidding/base/r;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/transsion/ad/bidding/base/r;->f(Landroid/content/Context;)Landroid/view/View;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->v()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->z()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->s()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->l()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->m()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->c()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->h()Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->d()Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->x()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->w()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->y()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->u()Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->o()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->e()Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->b()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->n()Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->p()Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->j()Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->k()Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->i()Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/r;->A()Ljava/lang/Integer;

    move-result-object v26

    new-instance v2, Lcom/transsion/ad/bidding/base/w;

    move-object v3, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct/range {v3 .. v26}, Lcom/transsion/ad/bidding/base/w;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v2
.end method

.method public abstract h()Ljava/lang/Integer;
.end method

.method public abstract i()Ljava/lang/Integer;
.end method

.method public j()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract l()Ljava/lang/Integer;
.end method

.method public abstract m()Ljava/lang/Integer;
.end method

.method public n()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Lcom/transsion/ad/bidding/base/w;Lcom/hisavana/common/bean/TAdNativeInfo;)Lcom/hisavana/mediation/ad/ViewBinder;
    .locals 8

    const-string v0, "adLayoutProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;-><init>(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->contextMode(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->l()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->titleId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->g()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->descriptionId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->j()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->mediaId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->h()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->iconId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->f()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->callToActionId(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_4

    new-instance v3, Lcom/transsion/ad/bidding/base/q;

    invoke-direct {v3, v2}, Lcom/transsion/ad/bidding/base/q;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->a()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->adChoicesView(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->b()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->storeMarkView(I)Lcom/hisavana/mediation/ad/ViewBinder$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->c()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/ad/view/AdTagView;

    sget-object v3, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    invoke-virtual {v3}, Lcom/transsion/ad/scene/b;->n()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->e()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_10

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getImageList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_9
    move-object v4, v3

    :goto_1
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getIcon()Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_a
    move-object v5, v3

    :goto_2
    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdType()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_d

    if-eqz v5, :cond_f

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_b

    goto :goto_3

    :cond_b
    move-object v5, v3

    :goto_3
    if-nez v5, :cond_c

    goto :goto_6

    :cond_c
    :goto_4
    move-object v4, v5

    goto :goto_6

    :cond_d
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_e

    goto :goto_5

    :cond_e
    move-object v4, v3

    :goto_5
    if-nez v4, :cond_f

    goto :goto_4

    :cond_f
    :goto_6
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v4

    new-instance v5, Lwi/a;

    const/16 v6, 0x37

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7, v1}, Lwi/a;-><init>(IIZ)V

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v4, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_10
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAppInfo()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_12

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "star"

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->k()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_8

    :cond_11
    :goto_7
    const-string p2, "size"

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->d()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/w;->i()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v4, v5, v1}, Lcom/blankj/utilcode/util/i;->b(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_12
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :goto_8
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/ViewBinder$Builder;->build()Lcom/hisavana/mediation/ad/ViewBinder;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/r;->C(Lcom/hisavana/mediation/ad/ViewBinder;)V

    return-object p1
.end method

.method public abstract s()Ljava/lang/Integer;
.end method

.method public abstract t()I
.end method

.method public u()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract v()Ljava/lang/Integer;
.end method

.method public w()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract z()Ljava/lang/Integer;
.end method
