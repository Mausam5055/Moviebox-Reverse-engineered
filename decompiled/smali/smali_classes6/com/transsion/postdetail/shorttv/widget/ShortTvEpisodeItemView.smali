.class public final Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bB+\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0017\u0010\u0015R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
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
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "ep",
        "",
        "showIndex",
        "(I)V",
        "",
        "show",
        "showPlayingImg",
        "(Z)V",
        "showLockImg",
        "showDownloadStatus",
        "Landroid/widget/TextView;",
        "a",
        "Landroid/widget/TextView;",
        "textView",
        "Landroid/widget/ImageView;",
        "b",
        "Landroid/widget/ImageView;",
        "lockImg",
        "c",
        "playingImg",
        "PostDetail_psRelease"
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


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_episode_bg:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const-string v3, "h,1:1"

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/transsion/postdetail/R$color;->post_detail_short_tv_episode_tv_color:I

    invoke-static {v3, v5}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v3, 0x11

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    sget p1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_lock:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v3, -0x2

    invoke-direct {p1, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iput v4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    iput v4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v0

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/tn/lib/widget/R$color;->color_07B84E:I

    invoke-static {p1, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, v0, 0x2

    invoke-virtual {p0, v0, v4, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_episode_bg:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const-string v2, "h,1:1"

    iput-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/transsion/postdetail/R$color;->post_detail_short_tv_episode_tv_color:I

    invoke-static {v2, v4}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x11

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    sget p1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_lock:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p2

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v1, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/tn/lib/widget/R$color;->color_07B84E:I

    invoke-static {p1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, p2, 0x2

    invoke-virtual {p0, p2, v3, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_episode_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const-string v1, "h,1:1"

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/transsion/postdetail/R$color;->post_detail_short_tv_episode_tv_color:I

    invoke-static {v1, v3}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget p1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_lock:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p2

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/tn/lib/widget/R$color;->color_07B84E:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, p2, 0x2

    invoke-virtual {p0, p2, v2, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    sget p4, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_episode_bg:I

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p4, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    const-string v0, "h,1:1"

    iput-object v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    iput v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    invoke-virtual {p0, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p4, 0x41800000    # 16.0f

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/postdetail/R$color;->post_detail_short_tv_episode_tv_color:I

    invoke-static {v0, v2}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    sget p1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_lock:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p4}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p2

    new-instance p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {p4, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    iput v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    iput v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    invoke-virtual {p4, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/tn/lib/widget/R$color;->color_07B84E:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, p2, 0x2

    invoke-virtual {p0, p2, v1, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final showDownloadStatus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/postdetail/R$mipmap;->post_detail_short_tv_downloaded:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showIndex(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/postdetail/R$string;->short_tv_trailer:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final showLockImg(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_lock:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showPlayingImg(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    const-string v1, "playing"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    sget v1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_playing:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
