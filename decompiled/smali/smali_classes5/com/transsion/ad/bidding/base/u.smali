.class public abstract Lcom/transsion/ad/bidding/base/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/u;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;
.end method

.method public abstract b()Lcom/cloud/hisavana/sdk/api/view/AdCloseView;
.end method

.method public abstract c()Landroid/widget/TextView;
.end method

.method public final d(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Ljava/util/List;
    .locals 3

    const-string v0, "nativeView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->g()Lcom/cloud/hisavana/sdk/api/view/MediaView;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setMediaView(Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/ImageView$ScaleType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->f()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setIconView(Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->a()Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdChoiceView(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->b()Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdCloseView(Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->h()Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setPsMarkView(Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->j()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->e()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->c()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getCtatext()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->i()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public abstract e()Landroid/widget/TextView;
.end method

.method public abstract f()Landroid/widget/ImageView;
.end method

.method public abstract g()Lcom/cloud/hisavana/sdk/api/view/MediaView;
.end method

.method public abstract h()Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;
.end method

.method public abstract i()Landroid/view/View;
.end method

.method public abstract j()Landroid/widget/TextView;
.end method
