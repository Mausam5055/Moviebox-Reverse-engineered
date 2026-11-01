.class public Lcom/cloud/tmc/integration/ui/native/NativeTabView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/ui/native/NativeTabView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 %2\u00020\u0001:\u0001%B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0015J\u0018\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0017H\u0014J\u0010\u0010\u001f\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0015J\u000e\u0010 \u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020\u0017R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/ui/native/NativeTabView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attributeSet",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "backDrawable",
        "Landroid/graphics/drawable/GradientDrawable;",
        "isApiControl",
        "",
        "tabLayout",
        "Lcom/google/android/material/tabs/TabLayout;",
        "getTabLayout",
        "()Lcom/google/android/material/tabs/TabLayout;",
        "tabLayout$delegate",
        "Lkotlin/Lazy;",
        "tabList",
        "",
        "",
        "tabListener",
        "Lcom/cloud/tmc/integration/ui/native/INativeTabListener;",
        "textColor",
        "",
        "textSelectedColor",
        "addNativeTabListener",
        "",
        "listener",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "removeNativeTabListener",
        "setTabStyle",
        "data",
        "Lcom/cloud/tmc/integration/ui/data/NativeTabBean;",
        "switchTab",
        "index",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/integration/ui/native/NativeTabView$Companion;

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final ERROR_MSG_T10001:Ljava/lang/String; = "Parameter error: T10001"

.field public static final ERROR_MSG_T10002:Ljava/lang/String; = "parse Json error, please check the config: T10002"

.field public static final EVENT_SELECTED:Ljava/lang/String; = "nativeTabSelected"

.field public static final TAG:Ljava/lang/String; = "NativeTabView"


# instance fields
.field private backDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private isApiControl:Z

.field private final tabLayout$delegate:Lkotlin/Lazy;

.field private tabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tabListener:Lcom/cloud/tmc/integration/ui/native/INativeTabListener;

.field private textColor:I

.field private textSelectedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/ui/native/NativeTabView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/ui/native/NativeTabView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->Companion:Lcom/cloud/tmc/integration/ui/native/NativeTabView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/cloud/tmc/integration/ui/native/NativeTabView$tabLayout$2;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView$tabLayout$2;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabLayout$delegate:Lkotlin/Lazy;

    const/4 p2, -0x1

    iput p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textColor:I

    const/high16 p2, -0x1000000

    iput p2, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textSelectedColor:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/tmc/integration/R$layout;->mini_native_tab_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->backDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    new-instance p2, Lcom/cloud/tmc/integration/ui/native/NativeTabView$1;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView$1;-><init>(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getTabListener$p(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)Lcom/cloud/tmc/integration/ui/native/INativeTabListener;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabListener:Lcom/cloud/tmc/integration/ui/native/INativeTabListener;

    return-object p0
.end method

.method public static final synthetic access$getTextColor$p(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)I
    .locals 0

    iget p0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textColor:I

    return p0
.end method

.method public static final synthetic access$getTextSelectedColor$p(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)I
    .locals 0

    iget p0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textSelectedColor:I

    return p0
.end method

.method public static final synthetic access$isApiControl$p(Lcom/cloud/tmc/integration/ui/native/NativeTabView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->isApiControl:Z

    return p0
.end method

.method public static final synthetic access$setApiControl$p(Lcom/cloud/tmc/integration/ui/native/NativeTabView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->isApiControl:Z

    return-void
.end method

.method private final getTabLayout()Lcom/google/android/material/tabs/TabLayout;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabLayout$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-tabLayout>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    return-object v0
.end method


# virtual methods
.method public final addNativeTabListener(Lcom/cloud/tmc/integration/ui/native/INativeTabListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabListener:Lcom/cloud/tmc/integration/ui/native/INativeTabListener;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final removeNativeTabListener(Lcom/cloud/tmc/integration/ui/native/INativeTabListener;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabListener:Lcom/cloud/tmc/integration/ui/native/INativeTabListener;

    return-void
.end method

.method public final setTabStyle(Lcom/cloud/tmc/integration/ui/data/NativeTabBean;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTabStyle ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeTabView"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textColor:I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectedColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectedColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textSelectedColor:I

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->backDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectBackgroundColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getTabList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_a

    goto/16 :goto_a

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabList:Ljava/util/List;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_5
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tab list not changed list = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectedIndex()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_d

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectedIndex()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_d

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/data/NativeTabBean;->getSelectedIndex()I

    move-result p1

    goto :goto_6

    :cond_d
    move p1, v2

    :goto_6
    iput-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabList:Ljava/util/List;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_10

    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    if-ne v3, p1, :cond_e

    iget v5, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textSelectedColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_8

    :cond_e
    iget v5, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->textColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_8
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v5

    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v4

    if-ne v3, p1, :cond_f

    const/4 v6, 0x1

    goto :goto_9

    :cond_f
    move v6, v2

    :goto_9
    invoke-virtual {v5, v4, v6}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_10
    return-void

    :cond_11
    :goto_a
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tab list is invalid. count = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v0, "errMsg"

    const-string v1, "Parameter error: T10001"

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabListener:Lcom/cloud/tmc/integration/ui/native/INativeTabListener;

    if-eqz v0, :cond_13

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Lcom/cloud/tmc/integration/ui/native/INativeTabListener;->onTabEvent(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_13
    return-void
.end method

.method public final switchTab(I)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->tabList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/tmc/integration/ui/native/NativeTabView;->isApiControl:Z

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    :cond_2
    :goto_1
    return-void
.end method
