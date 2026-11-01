.class public final Lcom/transsion/usercenter/devicemanagement/adapter/d;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/devicemanagement/adapter/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0005J\'\u0010\u000e\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/usercenter/devicemanagement/adapter/d;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Ljw/e;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "<init>",
        "()V",
        "",
        "F1",
        "Landroid/widget/TextView;",
        "countView",
        "Landroid/widget/ImageView;",
        "unavailableView",
        "",
        "count",
        "C1",
        "(Landroid/widget/TextView;Landroid/widget/ImageView;I)V",
        "holder",
        "item",
        "D1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/e;)V",
        "F",
        "a",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final F:Lcom/transsion/usercenter/devicemanagement/adapter/d$a;

.field private static final G:Ljava/lang/String; = "/profile/device_management"

.field private static final H:Ljava/lang/String; = "module_name"

.field private static final I:Ljava/lang/String; = "type"

.field private static final J:Ljava/lang/String; = "link_device"

.field private static final K:Ljava/lang/String; = "button"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/usercenter/devicemanagement/adapter/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/usercenter/devicemanagement/adapter/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/usercenter/devicemanagement/adapter/d;->F:Lcom/transsion/usercenter/devicemanagement/adapter/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/usercenter/R$layout;->item_upgrade_right:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static synthetic B1(Lcom/transsion/usercenter/devicemanagement/adapter/d;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/devicemanagement/adapter/d;->E1(Lcom/transsion/usercenter/devicemanagement/adapter/d;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method private final C1(Landroid/widget/TextView;Landroid/widget/ImageView;I)V
    .locals 3

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private static final E1(Lcom/transsion/usercenter/devicemanagement/adapter/d;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/usercenter/devicemanagement/adapter/d;->F1()V

    const-string p0, "&pageFrom=/profile/device_management"

    invoke-static {p1, p0}, Lak/k;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final F1()V
    .locals 5

    sget-object v0, Lhj/i;->a:Lhj/i;

    const-string v1, "module_name"

    const-string v2, "link_device"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "button"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/transsion/base/report/athena/ClickType;->FEATURE:Lcom/transsion/base/report/athena/ClickType;

    const-string v3, "/profile/device_management"

    invoke-virtual {v0, v3, v1, v2}, Lhj/i;->q(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/base/report/athena/ClickType;)V

    return-void
.end method


# virtual methods
.method protected D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/e;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/usercenter/R$id;->featureIcon:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljw/e;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p2}, Ljw/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->transparent:I

    invoke-virtual {v1, v2}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    :goto_0
    sget v1, Lcom/transsion/usercenter/R$drawable;->ic_feature_phone:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    sget v0, Lcom/transsion/usercenter/R$id;->featureName:I

    invoke-virtual {p2}, Ljw/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    sget v0, Lcom/transsion/usercenter/R$id;->basicCount:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$id;->basicUnavailable:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljw/e;->a()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/usercenter/devicemanagement/adapter/d;->C1(Landroid/widget/TextView;Landroid/widget/ImageView;I)V

    sget v0, Lcom/transsion/usercenter/R$id;->proCount:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/usercenter/R$id;->proUnavailable:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljw/e;->e()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/usercenter/devicemanagement/adapter/d;->C1(Landroid/widget/TextView;Landroid/widget/ImageView;I)V

    sget v0, Lcom/transsion/usercenter/R$id;->featureInfo:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Ljw/e;->b()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move-object p2, v0

    :goto_2
    if-nez p2, :cond_3

    const/16 v1, 0x8

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Lcom/transsion/usercenter/devicemanagement/adapter/c;

    invoke-direct {v0, p0, p2}, Lcom/transsion/usercenter/devicemanagement/adapter/c;-><init>(Lcom/transsion/usercenter/devicemanagement/adapter/d;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljw/e;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/devicemanagement/adapter/d;->D1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/e;)V

    return-void
.end method
