.class public final Lgw/f;
.super Lcom/transsion/baseui/adapter/BaseItemBindingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgw/f$a;
    }
.end annotation


# static fields
.field public static final h:Lgw/f$a;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgw/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgw/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgw/f;->h:Lgw/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lgw/f;->g:I

    return-void
.end method

.method public static synthetic A(Lgw/f;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lgw/f;->C(Lgw/f;Landroid/view/View;)V

    return-void
.end method

.method private static final C(Lgw/f;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lgw/f;->E()V

    const-string p1, "/profile/qr_code"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final E()V
    .locals 5

    sget-object v0, Lhj/i;->a:Lhj/i;

    const-string v1, "module_name"

    const-string v2, "link_device"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "pro"

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
.method public B(Lfw/w0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/a;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "item"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Ljw/a$d;->a:Ljw/a$d;

    if-eq p3, p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lgw/e;

    invoke-direct {p2, p0}, Lgw/e;-><init>(Lgw/f;)V

    iget-object p3, p1, Lfw/w0;->b:Lcom/noober/background/view/BLView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lfw/w0;->c:Lcom/transsion/baseui/widget/GradientBorderView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public D(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/w0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lfw/w0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/w0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lgw/f;->g:I

    return v0
.end method

.method public bridge synthetic y(Lg4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lfw/w0;

    check-cast p3, Ljw/a;

    invoke-virtual {p0, p1, p2, p3}, Lgw/f;->B(Lfw/w0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/a;)V

    return-void
.end method

.method public bridge synthetic z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgw/f;->D(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/w0;

    move-result-object p1

    return-object p1
.end method
