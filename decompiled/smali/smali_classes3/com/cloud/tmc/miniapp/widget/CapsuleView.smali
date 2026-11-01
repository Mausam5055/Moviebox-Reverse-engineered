.class public final Lcom/cloud/tmc/miniapp/widget/CapsuleView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO:Lkotlin/Lazy;

.field public final OooO00o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final OooO0O0:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final OooO0OO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o0:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0oO:Lkotlin/Lazy;

.field public final OooO0oo:Lkotlin/Lazy;

.field public final OooOO0:Lkotlin/Lazy;

.field public OooOO0O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/cloud/tmc/miniapp/R$id;->iv_left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_more_white_mode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    sget v3, Lcom/cloud/tmc/miniapp/R$id;->iv_right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_close_white_mode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Lkotlin/Pair;

    aput-object v2, v5, v0

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-static {v5}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v6, Lcom/cloud/tmc/miniapp/R$id;->iv_left:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_more_black_mode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    sget v7, Lcom/cloud/tmc/miniapp/R$id;->iv_right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_close_black_mode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-array v8, v4, [Lkotlin/Pair;

    aput-object v6, v8, v0

    aput-object v7, v8, v2

    invoke-static {v8}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-array v7, v4, [Lkotlin/Pair;

    aput-object v3, v7, v0

    aput-object v6, v7, v2

    invoke-static {v7}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO00o:Ljava/util/HashMap;

    sget v6, Lcom/cloud/tmc/miniapp/R$id;->iv_left:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_back_white_mode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    sget v7, Lcom/cloud/tmc/miniapp/R$id;->iv_right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_title_home_white_mode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-array v8, v4, [Lkotlin/Pair;

    aput-object v6, v8, v0

    aput-object v7, v8, v2

    invoke-static {v8}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    sget v7, Lcom/cloud/tmc/miniapp/R$id;->iv_left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_immersive_title_bar_back_black_mode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    sget v8, Lcom/cloud/tmc/miniapp/R$id;->iv_right:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget v9, Lcom/cloud/tmc/miniapp/R$drawable;->mini_ic_immersive_title_bar_home_black_mode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-array v9, v4, [Lkotlin/Pair;

    aput-object v7, v9, v0

    aput-object v8, v9, v2

    invoke-static {v9}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-array v8, v4, [Lkotlin/Pair;

    aput-object v6, v8, v0

    aput-object v7, v8, v2

    invoke-static {v8}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0O0:Ljava/util/HashMap;

    sget v7, Lcom/cloud/tmc/miniapp/R$color;->mini_color_capsule_line_white_mode_bg:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    sget v8, Lcom/cloud/tmc/miniapp/R$color;->mini_color_border_capsule:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-array v9, v4, [Lkotlin/Pair;

    aput-object v7, v9, v0

    aput-object v8, v9, v2

    invoke-static {v9}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v7

    iput-object v7, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0OO:Ljava/util/HashMap;

    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->shape_bg_capsule_white_mode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->shape_bg_capsule_black_mode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-array v7, v4, [Lkotlin/Pair;

    aput-object v1, v7, v0

    aput-object v5, v7, v2

    invoke-static {v7}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0Oo:Ljava/util/HashMap;

    new-instance v1, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0OO;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0oO:Lkotlin/Lazy;

    new-instance v1, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0oo:Lkotlin/Lazy;

    new-instance v1, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0o;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0o;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO:Lkotlin/Lazy;

    new-instance v1, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooOO0;

    invoke-direct {v1, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0:Lkotlin/Lazy;

    sget-object v1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_CapsuleView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v1, "context.obtainStyledAttr\u2026yleable.Mini_CapsuleView)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/cloud/tmc/miniapp/R$styleable;->Mini_CapsuleView_capsule_style:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eq v0, v2, :cond_1

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v6

    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0O:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/cloud/tmc/miniapp/R$layout;->layout_mini_capsule:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setRotationY(F)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v3

    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setRotationY(F)V

    :cond_4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p2

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/a;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/a;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p2

    new-instance v0, Lcom/cloud/tmc/miniapp/widget/b;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/widget/b;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/cloud/tmc/miniutils/util/SystemUtils;->darkThemeIsEnabled(Landroid/content/Context;)Z

    move-result p2

    xor-int/2addr p2, v2

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->shape_fg_capsule_left_click:I

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v9

    new-instance v10, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO00o;

    invoke-direct {v10, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    const/4 v8, 0x0

    move-object v5, v0

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;IILandroid/widget/ImageView;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;)V

    sget v7, Lcom/cloud/tmc/miniapp/R$drawable;->shape_fg_capsule_right_click:I

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v9

    new-instance v10, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0O0;

    invoke-direct {v10, p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)V

    const/4 v8, 0x0

    move-object v5, v0

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;IILandroid/widget/ImageView;Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    const/4 p1, 0x0

    invoke-static {p0, p2, p1, v4}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;ILjava/util/HashMap;I)V

    return-void
.end method

.method public static final synthetic OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method public static OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;ILjava/util/HashMap;I)V
    .locals 5

    const-string p2, ""

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0O:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "style"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTitleBarNodeMode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/integration/utils/MiniAppConfigUtils;->getTitleBarNodeMode()Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getCapsuleLayout()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0Oo:Ljava/util/HashMap;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    :try_start_0
    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p3, :cond_3

    :try_start_1
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_left:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_3
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v4

    invoke-interface {v0, v3, v1, v1, v4}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;IILandroid/widget/ImageView;)V

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_2
    invoke-static {p2, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_5
    if-eqz p3, :cond_6

    :try_start_3
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->iv_right:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_7

    goto :goto_6

    :catchall_1
    move-exception p3

    goto :goto_7

    :cond_6
    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v2

    invoke-interface {v0, v1, p3, p3, v2}, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;->loadImg(Landroid/content/Context;IILandroid/widget/ImageView;)V

    goto :goto_8

    :cond_8
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    :goto_7
    :try_start_4
    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception p3

    invoke-static {p2, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8
    :try_start_5
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getCenterLineView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0OO:Ljava/util/HashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_9

    :catchall_3
    move-exception p0

    goto :goto_a

    :cond_9
    sget p0, Lcom/cloud/tmc/miniapp/R$color;->mini_color_border_capsule:I

    :goto_9
    invoke-static {v0, p0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_b

    :goto_a
    invoke-static {p2, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/widget/CapsuleView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0o0:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static final synthetic OooO0O0(Lcom/cloud/tmc/miniapp/widget/CapsuleView;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->getIvRight()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/widget/CapsuleView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0o:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final getCapsuleLayout()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-capsuleLayout>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object v0
.end method

.method private final getCenterLineView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-centerLineView>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private final getIvLeft()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivLeft>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method private final getIvRight()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-ivRight>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method


# virtual methods
.method public final getBackAndHome()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0O0:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getCapsuleStyle()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0O:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getMoreAndClose()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO00o:Ljava/util/HashMap;

    return-object v0
.end method

.method public final setCapsuleStyle(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooOO0O:Ljava/util/HashMap;

    return-void
.end method

.method public final setOnLeftClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0o0:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnRightClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/CapsuleView;->OooO0o:Lkotlin/jvm/functions/Function0;

    return-void
.end method
