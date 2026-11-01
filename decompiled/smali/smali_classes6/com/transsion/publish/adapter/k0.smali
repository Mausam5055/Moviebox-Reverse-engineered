.class public final Lcom/transsion/publish/adapter/k0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private b:Ljava/util/List;

.field private c:Landroid/widget/FrameLayout$LayoutParams;

.field private d:Ljava/util/List;

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "selectItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/k0;->a:Lkotlin/jvm/functions/Function1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/publish/adapter/k0;->e:I

    const/high16 p1, 0x3200000

    iput p1, p0, Lcom/transsion/publish/adapter/k0;->f:I

    const p1, 0x124f80

    iput p1, p0, Lcom/transsion/publish/adapter/k0;->g:I

    const/16 p1, 0xbb8

    iput p1, p0, Lcom/transsion/publish/adapter/k0;->h:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->b()I

    move-result p1

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x4

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/publish/adapter/k0;->c:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public static synthetic g(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/publish/adapter/k0;->q(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/publish/api/VsMediaInfo;Lcom/transsion/publish/adapter/k0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/k0;->t(Lcom/transsion/publish/api/VsMediaInfo;Lcom/transsion/publish/adapter/k0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/publish/adapter/k0;->r(Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/publish/adapter/k0;->s(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final k(Lcom/transsion/publish/adapter/m0;Lkotlin/jvm/functions/Function0;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/transsion/publish/adapter/k0;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/m0;->g()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$string;->add_video_max_tips:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    iget p2, p0, Lcom/transsion/publish/adapter/k0;->e:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    invoke-virtual {p2, p1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final l(Lcom/transsion/publish/api/VsMediaInfo;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v2, Lcom/transsion/publish/api/VsMediaInfo;

    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const-string p1, "-1"

    return-object p1
.end method

.method private final n()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/publish/adapter/k0;->e:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final q(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    const-string p1, "Exceeded video length, 20 mins Max"

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Luh/b;->a:Luh/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$string;->add_media_max_size_tips:I

    const/16 p3, 0x32

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p3, p4, p5

    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    sget-object p0, Luh/b;->a:Luh/b$a;

    const-string p1, "video requires at least 3s"

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Lcom/transsion/publish/adapter/j0;

    invoke-direct {p0, p4, p5}, Lcom/transsion/publish/adapter/j0;-><init>(Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)V

    invoke-direct {p3, p4, p0}, Lcom/transsion/publish/adapter/k0;->k(Lcom/transsion/publish/adapter/m0;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final r(Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)Lkotlin/Unit;
    .locals 2

    sget-object v0, Lcom/transsion/publish/ui/VideoPreviewActivity;->f:Lcom/transsion/publish/ui/VideoPreviewActivity$a;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Lcom/transsion/publish/ui/VideoPreviewActivity$a;->a(Landroid/content/Context;Lcom/transsion/publish/api/VsMediaInfo;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final s(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    const-string p1, "Exceeded video length, 20 mins Max"

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Luh/b;->a:Luh/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$string;->add_media_max_size_tips:I

    const/16 p3, 0x32

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p3, p4, p5

    invoke-virtual {p1, p2, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    sget-object p0, Luh/b;->a:Luh/b$a;

    const-string p1, "video requires at least 3s"

    invoke-virtual {p0, p1}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Lcom/transsion/publish/adapter/i0;

    invoke-direct {p0, p5, p3}, Lcom/transsion/publish/adapter/i0;-><init>(Lcom/transsion/publish/api/VsMediaInfo;Lcom/transsion/publish/adapter/k0;)V

    invoke-direct {p3, p4, p0}, Lcom/transsion/publish/adapter/k0;->k(Lcom/transsion/publish/adapter/m0;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final t(Lcom/transsion/publish/api/VsMediaInfo;Lcom/transsion/publish/adapter/k0;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1, p0}, Lcom/transsion/publish/adapter/k0;->z(Lcom/transsion/publish/api/VsMediaInfo;)V

    goto :goto_0

    :cond_0
    invoke-direct {p1, p0}, Lcom/transsion/publish/adapter/k0;->y(Lcom/transsion/publish/api/VsMediaInfo;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final v(Landroid/widget/TextView;J)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-wide/16 v3, 0x7d1

    cmp-long v3, v3, p2

    const-string v4, "%02d:%02d"

    const-string v5, "format(...)"

    if-gtz v3, :cond_1

    const-wide/16 v6, 0xbb8

    cmp-long v3, p2, v6

    if-gez v3, :cond_1

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v0

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-wide/16 v6, 0xfa1

    cmp-long v3, v6, p2

    if-gtz v3, :cond_2

    const-wide/16 v6, 0x1388

    cmp-long v3, p2, v6

    if-gez v3, :cond_2

    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v0

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    long-to-float p2, p2

    const/16 p3, 0x3e8

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p2}, Lkotlin/math/MathKt;->d(F)I

    move-result p2

    div-int/lit8 p3, p2, 0x3c

    rem-int/lit8 p2, p2, 0x3c

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p3, v3, v1

    aput-object p2, v3, v0

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final w(Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/publish/api/VsMediaInfo;

    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private final y(Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/k0;->w(Lcom/transsion/publish/api/VsMediaInfo;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/publish/api/VsMediaInfo;->setEnableSelect(Z)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/transsion/publish/adapter/k0;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private final z(Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/publish/adapter/k0;->n()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/transsion/publish/adapter/k0;->w(Lcom/transsion/publish/api/VsMediaInfo;)V

    iget-object v1, p0, Lcom/transsion/publish/adapter/k0;->a:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/transsion/publish/api/VsMediaInfo;->setEnableSelect(Z)V

    iget-object v1, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final addData(Ljava/util/List;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->d:Ljava/util/List;

    return-object v0
.end method

.method public o(Lcom/transsion/publish/adapter/m0;I)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "holder"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    move/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/transsion/publish/api/VsMediaInfo;

    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object v1, v7, Lcom/transsion/publish/adapter/k0;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoDuration()J

    move-result-wide v1

    invoke-direct {v7, v0, v1, v2}, Lcom/transsion/publish/adapter/k0;->v(Landroid/widget/TextView;J)V

    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "getContext(...)"

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->f()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    sget v1, Lcom/transsion/baseui/R$mipmap;->home_ic_default_res:I

    invoke-virtual {v0, v1}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->f()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lej/f;->a:Lej/f$a;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->f()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v0

    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    sget v1, Lcom/transsion/baseui/R$mipmap;->home_ic_default_res:I

    invoke-virtual {v0, v1}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->f()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_2
    :goto_1
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoSize()J

    move-result-wide v0

    iget v2, v7, Lcom/transsion/publish/adapter/k0;->f:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    move v10, v1

    goto :goto_2

    :cond_3
    move v10, v2

    :goto_2
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoDuration()J

    move-result-wide v3

    iget v0, v7, Lcom/transsion/publish/adapter/k0;->g:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4

    move v11, v1

    goto :goto_3

    :cond_4
    move v11, v2

    :goto_3
    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoDuration()J

    move-result-wide v3

    iget v0, v7, Lcom/transsion/publish/adapter/k0;->h:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    move v12, v1

    goto :goto_4

    :cond_5
    move v12, v2

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/transsion/publish/adapter/k0;->n()Z

    move-result v0

    const-string v1, ""

    const/16 v3, 0x8

    if-eqz v0, :cond_7

    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {v7, v9}, Lcom/transsion/publish/adapter/k0;->l(Lcom/transsion/publish/api/VsMediaInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {v7, v9}, Lcom/transsion/publish/adapter/k0;->l(Lcom/transsion/publish/api/VsMediaInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_5
    if-nez v10, :cond_9

    if-nez v11, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v13, v8, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v16, Lcom/transsion/publish/adapter/g0;

    move-object/from16 v0, v16

    move v1, v11

    move v2, v10

    move v3, v12

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/transsion/publish/adapter/g0;-><init>(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)V

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v13 .. v18}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/publish/adapter/m0;->h()Landroid/view/View;

    move-result-object v13

    new-instance v14, Lcom/transsion/publish/adapter/h0;

    move-object v0, v14

    invoke-direct/range {v0 .. v6}, Lcom/transsion/publish/adapter/h0;-><init>(ZZZLcom/transsion/publish/adapter/k0;Lcom/transsion/publish/adapter/m0;Lcom/transsion/publish/api/VsMediaInfo;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, v13

    move-object v3, v14

    invoke-static/range {v0 .. v5}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/publish/adapter/m0;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/k0;->o(Lcom/transsion/publish/adapter/m0;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/transsion/publish/adapter/m0;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/publish/adapter/k0;->p(Lcom/transsion/publish/adapter/m0;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/adapter/k0;->u(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/m0;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/transsion/publish/adapter/m0;ILjava/util/List;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object p3, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/publish/api/VsMediaInfo;

    invoke-virtual {p2}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0, p2}, Lcom/transsion/publish/adapter/k0;->l(Lcom/transsion/publish/api/VsMediaInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$drawable;->bg_linear_r16:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/publish/adapter/m0;->j()Landroid/widget/TextView;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$drawable;->ic_select_number_bro:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public u(Landroid/view/ViewGroup;I)Lcom/transsion/publish/adapter/m0;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$layout;->upload_select_video_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/publish/adapter/m0;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/publish/adapter/m0;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final x(Lcom/transsion/publish/api/VsMediaInfo;)V
    .locals 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/publish/api/VsMediaInfo;

    invoke-virtual {v2}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/publish/api/VsMediaInfo;->setEnableSelect(Z)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/publish/api/VsMediaInfo;->getEnableSelect()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcom/transsion/publish/adapter/k0;->y(Lcom/transsion/publish/api/VsMediaInfo;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/transsion/publish/adapter/k0;->z(Lcom/transsion/publish/api/VsMediaInfo;)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/publish/adapter/k0;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method
