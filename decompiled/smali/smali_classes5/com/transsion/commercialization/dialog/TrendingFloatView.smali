.class public final Lcom/transsion/commercialization/dialog/TrendingFloatView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/commercialization/dialog/TrendingFloatView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001aB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u000f2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/commercialization/dialog/TrendingFloatView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "getClassTag",
        "()Ljava/lang/String;",
        "",
        "f",
        "()V",
        "",
        "isClose",
        "d",
        "(Z)V",
        "Lcom/transsion/bean/HomePopupEntity;",
        "homePopup",
        "showData",
        "(Lcom/transsion/bean/HomePopupEntity;)V",
        "a",
        "Lcom/transsion/bean/HomePopupEntity;",
        "mHomePopup",
        "Companion",
        "Commercialization_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/commercialization/dialog/TrendingFloatView$a;


# instance fields
.field private a:Lcom/transsion/bean/HomePopupEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/commercialization/dialog/TrendingFloatView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/commercialization/dialog/TrendingFloatView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->Companion:Lcom/transsion/commercialization/dialog/TrendingFloatView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/transsion/commercialization/R$layout;->widget_float_view_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/commercialization/R$layout;->widget_float_view_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/commercialization/R$layout;->widget_float_view_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->g(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V

    return-void
.end method

.method public static final synthetic access$getClassTag(Lcom/transsion/commercialization/dialog/TrendingFloatView;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->getClassTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$reportShow(Lcom/transsion/commercialization/dialog/TrendingFloatView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/commercialization/dialog/TrendingFloatView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->i(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/commercialization/dialog/TrendingFloatView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->h(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;Landroid/view/View;)V

    return-void
.end method

.method private final d(Z)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "widget_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "widget_type"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "widget_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    const-string p1, "widget_close"

    const-string v1, "close"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object p1, Lhj/i;->a:Lhj/i;

    const-string v1, "home_common_widget"

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic e(Lcom/transsion/commercialization/dialog/TrendingFloatView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->d(Z)V

    return-void
.end method

.method private final f()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "widget_id"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "widget_type"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "widget_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "home_common_widget"

    invoke-virtual {v1, v2, v0}, Lhj/i;->D(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static final g(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V
    .locals 2

    sget v0, Lcom/transsion/commercialization/R$id;->ivClose:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Llk/j;

    invoke-direct {v1, p0, p1}, Llk/j;-><init>(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/commercialization/dialog/TrendingFloatView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final h(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;Landroid/view/View;)V
    .locals 1

    const/16 p2, 0x8

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-class v0, Lcom/transsion/commercializationapi/ICommonDialogApi;

    invoke-static {v0, p2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/commercializationapi/ICommonDialogApi;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/transsion/commercializationapi/ICommonDialogApi;->a(Lcom/transsion/bean/HomePopupEntity;)V

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->d(Z)V

    return-void
.end method

.method private static final i(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/commercialization/dialog/TrendingFloatView;Landroid/view/View;)V
    .locals 14

    sget-object v0, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    const-string v1, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->getExternalUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->getInnerUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "oneroom://com.community.oneroom?type="

    const/4 v4, 0x2

    invoke-static {v2, v3, v7, v4, v6}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getExternalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->getInnerUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/ad/strategy/b;->b(Lcom/transsion/ad/strategy/b;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-object v8, Lzj/b;->a:Lzj/b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v0, "getContext(...)"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/bean/HomePopupInfo;->getInnerUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v10, v0

    goto :goto_1

    :cond_4
    :goto_0
    move-object v10, v1

    :goto_1
    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lzj/b;->d(Lzj/b;Landroid/content/Context;Ljava/lang/String;Lzj/c;ILjava/lang/Object;)V

    :goto_2
    const/4 v0, 0x1

    move-object v1, p1

    invoke-static {p1, v7, v0, v6}, Lcom/transsion/commercialization/dialog/TrendingFloatView;->e(Lcom/transsion/commercialization/dialog/TrendingFloatView;ZILjava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final showData(Lcom/transsion/bean/HomePopupEntity;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getImg()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/bean/HomePopupInfo;->getImg()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->getImg()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    :goto_2
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iput-object p1, p0, Lcom/transsion/commercialization/dialog/TrendingFloatView;->a:Lcom/transsion/bean/HomePopupEntity;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/bean/HomePopupInfo;->getImg()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/transsion/commercialization/dialog/TrendingFloatView$b;

    invoke-direct {v1, p0}, Lcom/transsion/commercialization/dialog/TrendingFloatView$b;-><init>(Lcom/transsion/commercialization/dialog/TrendingFloatView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    sget v1, Lcom/transsion/commercialization/R$id;->iv:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/bean/HomePopupEntity;->getWidget()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/bean/HomePopupInfo;->getCloseDelay()I

    move-result v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    new-instance v2, Llk/h;

    invoke-direct {v2, p0, p1}, Llk/h;-><init>(Lcom/transsion/commercialization/dialog/TrendingFloatView;Lcom/transsion/bean/HomePopupEntity;)V

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Llk/i;

    invoke-direct {v0, p1, p0}, Llk/i;-><init>(Lcom/transsion/bean/HomePopupEntity;Lcom/transsion/commercialization/dialog/TrendingFloatView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
