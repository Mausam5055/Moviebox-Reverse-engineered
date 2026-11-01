.class public final Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00132\u00020\u0001:\u0001\u0010B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;",
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "g",
        "()V",
        "Lms/g0;",
        "a",
        "Lms/g0;",
        "viewBinding",
        "Companion",
        "shortTvLib_release"
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
.field public static final Companion:Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView$a;


# instance fields
.field private final a:Lms/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;->Companion:Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget p2, Lcom/transsion/shorttv/R$layout;->short_tv_layout_category:I

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p0}, Lms/g0;->a(Landroid/view/View;)Lms/g0;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;->a:Lms/g0;

    invoke-direct {p0}, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;->g()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;->i(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;->j(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;->h(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;Landroid/view/View;)V

    return-void
.end method

.method private final g()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;->a:Lms/g0;

    iget-object v0, v0, Lms/g0;->d:Lcom/transsion/shorttv/base/widget/TnTextView;

    new-instance v1, Lcom/transsion/shorttv/ui/widget/k;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/k;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;->a:Lms/g0;

    iget-object v0, v0, Lms/g0;->c:Lcom/transsion/shorttv/base/widget/TnTextView;

    new-instance v1, Lcom/transsion/shorttv/ui/widget/l;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/l;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;->a:Lms/g0;

    iget-object v0, v0, Lms/g0;->b:Lcom/transsion/shorttv/base/widget/TnTextView;

    new-instance v1, Lcom/transsion/shorttv/ui/widget/m;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/widget/m;-><init>(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final h(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTVDiscoverCategoryView"

    const-string v2, "click Latest"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string p1, "/home/playlist"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "label"

    const-string v1, "fresh-releases-list"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "category"

    const-string v1, "TVSHOW"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "recType"

    const-string v1, "OPT"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "topIds"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p1, p0, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private static final i(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTVDiscoverCategoryView"

    const-string v2, "click Hottest"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string p1, "/home/playlist"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "label"

    const-string v1, "must-watch-list"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "category"

    const-string v1, "TVSHOW"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "recType"

    const-string v1, "OPT"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "topIds"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p1, p0, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private static final j(Lcom/transsion/shorttv/ui/widget/ShortTvCategoryView;Landroid/view/View;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTVDiscoverCategoryView"

    const-string v2, "click All"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string p1, "/home/movieFilter"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "tabId"

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "tabCode"

    const-string v1, "ShortTV"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "showViewPager"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->z(Ljava/lang/String;Z)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method
