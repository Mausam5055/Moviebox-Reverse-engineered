.class public final Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO:Lkotlin/Lazy;

.field public OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

.field public OooO0O0:Landroid/widget/TextView;

.field public OooO0OO:Landroid/widget/TextView;

.field public OooO0Oo:Landroid/widget/TextView;

.field public OooO0o:Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;

.field public OooO0o0:Landroid/widget/TextView;

.field public final OooO0oO:Lkotlin/Lazy;

.field public final OooO0oo:Lkotlin/Lazy;

.field public final OooOO0:Lkotlin/Lazy;

.field public final OooOO0O:Lkotlin/Lazy;

.field public final OooOO0o:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooO0OO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0oO:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooOO0O;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooOO0O;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0oo:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooOO0;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooO0o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooOO0:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooO;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooOO0O:Lkotlin/Lazy;

    new-instance p1, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooO00o;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooOO0o:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0o:Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;->onRetry(Lcom/cloud/tmc/miniapp/widget/StatusLayout;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final OooO00o(Ljava/lang/Integer;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->widget_mini_no_network_layout_normal_mode:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->widget_mini_no_network_layout:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_1
    sget p1, Lcom/cloud/tmc/miniapp/R$id;->iv_error_logo:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.iv_error_logo)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    sget p1, Lcom/cloud/tmc/miniapp/R$id;->tv_error_name:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.tv_error_name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0O0:Landroid/widget/TextView;

    sget p1, Lcom/cloud/tmc/miniapp/R$id;->tv_error_app_intro:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.tv_error_app_intro)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0OO:Landroid/widget/TextView;

    sget p1, Lcom/cloud/tmc/miniapp/R$id;->tv_no_network_retry:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.tv_no_network_retry)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0Oo:Landroid/widget/TextView;

    sget p1, Lcom/cloud/tmc/miniapp/R$id;->tv_no_network_info:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.tv_no_network_info)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0o0:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0Oo:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const-string p1, "mTvNoNetworkRetry"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    new-instance v1, Lcom/cloud/tmc/miniapp/widget/h;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/h;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0o0:Landroid/widget/TextView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "mTvNoNetworkInfo"

    if-nez p1, :cond_3

    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_2
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget v3, Lcom/cloud/tmc/miniapp/R$string;->mini_no_network_info:I

    invoke-static {v3}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$string;->mini_network_go_setting:I

    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$color;->mini_color_primary:I

    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/ColorUtils;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooO0O0;

    invoke-direct {v5, p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;)V

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6, v5}, Lcom/cloud/tmc/integration/utils/ext/SpannableExtKt;->appendClickable(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Ljava/lang/Integer;ZLkotlin/jvm/functions/Function1;)Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0o0:Landroid/widget/TextView;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v0

    :cond_4
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0o0:Landroid/widget/TextView;

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v0, v3

    :goto_3
    invoke-static {v0}, Lcom/cloud/tmc/integration/utils/ext/TextViewExtKt;->transparentHighlightColor(Landroid/widget/TextView;)V

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    const-string v0, "MiniNoNetworkView"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method public final OooO00o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0O0:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mTvErrorName"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0OO:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string p1, "mTvErrorAppIntro"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/cloud/tmc/integration/utils/RegexUtils;->isURL(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-class p1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;

    const-string p3, "1000886706715795456"

    invoke-interface {p1, p3}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getVhost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/cloud/tmc/kernel/resource/IPackageResourceManager;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-class p1, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    move-object v4, p2

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO00o:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p1, :cond_4

    const-string p1, "mIvErrorLogo"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_0

    :cond_4
    move-object v5, p1

    :goto_0
    const/high16 p1, 0x41600000    # 14.0f

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result v6

    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    sget v8, Lcom/cloud/tmc/miniapp/R$drawable;->drawable_app_icon_place_holder:I

    invoke-interface/range {v2 .. v8}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImgRoundCorners(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;III)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->getIvOfflineAppsMore()Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 p3, 0x43340000    # 180.0f

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, p3

    goto :goto_1

    :cond_6
    move v0, p2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    :goto_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->getIvOfflineAppsIcon()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_8

    move p2, p3

    :cond_8
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->getLlOfflineAppsMore()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->getLlOfflineApps()Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->getClOfflineAppsContainer()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/cloud/tmc/miniapp/ui/extension/OfflineAppExtensionKt;->offlineAppUpdate(Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final getClOfflineAppsContainer()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooOO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public final getIvOfflineAppsIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getIvOfflineAppsMore()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooOO0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getLlOfflineApps()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooOO0O:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getLlOfflineAppsMore()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getTvOfflineAppsDes()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final setOnPinForLaterListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO00o;)V
    .locals 0

    return-void
.end method

.method public final setOnRetryListener(Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/MiniNoNetworkView;->OooO0o:Lcom/cloud/tmc/miniapp/widget/StatusLayout$OooO0O0;

    return-void
.end method
