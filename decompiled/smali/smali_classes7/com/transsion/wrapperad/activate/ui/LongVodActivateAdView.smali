.class public final Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "destroy",
        "()V",
        "Lcom/transsion/ad/ps/activate/PsActivateBean;",
        "activateAd",
        "Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;",
        "longVodActivateDialog",
        "Lzx/e;",
        "listener",
        "showAd",
        "(Lcom/transsion/ad/ps/activate/PsActivateBean;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lzx/e;)V",
        "a",
        "Lzx/e;",
        "",
        "b",
        "Ljava/util/List;",
        "activateList",
        "c",
        "Lcom/transsion/ad/ps/activate/PsActivateBean;",
        "clickActivateBean",
        "wrapperad_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lzx/e;

.field private final b:Ljava/util/List;

.field private c:Lcom/transsion/ad/ps/activate/PsActivateBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lzx/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->d(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lzx/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/TextView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lzx/e;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->c(Landroid/widget/TextView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lzx/e;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private static final c(Landroid/widget/TextView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lzx/e;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    sget-object p5, Lcom/transsion/ad/ps/activate/PSActivateManager;->a:Lcom/transsion/ad/ps/activate/PSActivateManager;

    invoke-virtual {p5}, Lcom/transsion/ad/ps/activate/PSActivateManager;->b()Lcom/transsion/ad/ps/activate/PsActivateBean;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5, p2, p3}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->showAd(Lcom/transsion/ad/ps/activate/PsActivateBean;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lzx/e;)V

    goto :goto_0

    :cond_0
    sget-object p1, Llg/a;->a:Llg/a$a;

    const/4 p2, 0x2

    const/4 p3, 0x0

    const-string p5, "LongVodActivateAdView --> showAd() --> \u6ca1\u6709\u5e7f\u544a\u4e86"

    const/4 v0, 0x0

    invoke-static {p1, p5, v0, p2, p3}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    const/16 p1, 0x8

    if-eqz p4, :cond_1

    sget p2, Lcom/transsion/wrapperad/R$id;->ivRefresh:I

    invoke-virtual {p4, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static final d(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lzx/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Landroid/view/View;)V
    .locals 1

    sget-object p5, Lti/e;->a:Lti/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, p0, v0}, Lti/e;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-interface {p2, p0}, Lzx/e;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lzx/e;->a(Z)V

    :goto_0
    iput-object p1, p3, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->c:Lcom/transsion/ad/ps/activate/PsActivateBean;

    if-eqz p4, :cond_1

    const-string p0, "open"

    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;->q0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final showAd(Lcom/transsion/ad/ps/activate/PsActivateBean;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lzx/e;)V
    .locals 9

    const-string v0, "activateAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->a:Lzx/e;

    iget-object v0, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LongVodActivateAdView --> showAd() --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getShowContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/wrapperad/R$layout;->long_vod_activate_ad_view_style_1_layout:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/wrapperad/R$layout;->long_vod_activate_ad_view_style_2_layout:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget v1, Lcom/transsion/wrapperad/R$id;->activateAdImage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "getContext(...)"

    if-eqz v1, :cond_1

    sget-object v3, Lej/f;->a:Lej/f$a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getShowContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_1
    sget v1, Lcom/transsion/wrapperad/R$id;->activateAdIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v1, :cond_2

    sget-object v3, Lej/f;->a:Lej/f$a;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_2
    sget v1, Lcom/transsion/wrapperad/R$id;->activateAdTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    sget v1, Lcom/transsion/wrapperad/R$id;->activateAdDescription:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getSimpleDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    sget v1, Lcom/transsion/wrapperad/R$id;->tvTryMore:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_5

    new-instance v8, Lzx/a;

    move-object v1, v8

    move-object v2, v7

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lzx/a;-><init>(Landroid/widget/TextView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Lzx/e;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    sget v1, Lcom/transsion/wrapperad/R$id;->activateAdBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/transsion/ad/ps/activate/PsActivateBean;->getButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Lzx/b;

    move-object v1, v7

    move-object v2, v0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lzx/b;-><init>(Landroid/widget/TextView;Lcom/transsion/ad/ps/activate/PsActivateBean;Lzx/e;Lcom/transsion/wrapperad/activate/ui/LongVodActivateAdView;Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method
