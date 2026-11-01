.class public final Lcom/transsion/shorttv/ui/widget/ShortTvAdView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/widget/ShortTvAdView;",
        "Landroid/widget/LinearLayout;",
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
        "Lcom/transsion/shorttv/bean/ShortTVItem;",
        "item",
        "",
        "setData",
        "(Lcom/transsion/shorttv/bean/ShortTVItem;)V",
        "show",
        "()V",
        "hide",
        "",
        "a",
        "Z",
        "isNeedShowShortTvAdView",
        "Lms/p0;",
        "b",
        "Lms/p0;",
        "bind",
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


# instance fields
.field private a:Z

.field private b:Lms/p0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/shorttv/R$layout;->short_tv_view_ad_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lms/p0;->a(Landroid/view/View;)Lms/p0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;->b:Lms/p0;

    sget p1, Lcom/transsion/shorttv/R$drawable;->view_ad_short_tv_bg:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/shorttv/bean/ShortTVItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;->b(Lcom/transsion/shorttv/bean/ShortTVItem;Landroid/view/View;)V

    return-void
.end method

.method private static final b(Lcom/transsion/shorttv/bean/ShortTVItem;Landroid/view/View;)V
    .locals 2

    sget-object p1, Lhj/i;->a:Lhj/i;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "short_tv_ad_btn"

    invoke-virtual {p1, v1, v0}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv/bean/Link;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Link;->getDeeplink()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv/bean/Link;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/Link;->getUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-virtual {p1, v0, p0, v1}, Lcom/transsion/ad/strategy/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    return-void
.end method


# virtual methods
.method public final hide()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setData(Lcom/transsion/shorttv/bean/ShortTVItem;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv/bean/Link;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ShortTvAdView --> setData() --> link = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ShortTvAdView"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v4, v6}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv/bean/Link;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    if-nez v2, :cond_2

    iput-boolean v6, v0, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;->a:Z

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;->a:Z

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;->b:Lms/p0;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lms/p0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv/bean/Link;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Link;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;->b:Lms/p0;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lms/p0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv/bean/Link;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/shorttv/bean/Link;->getBtn()Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;->b:Lms/p0;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lms/p0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_7

    new-instance v3, Lcom/transsion/shorttv/ui/widget/j;

    invoke-direct {v3, v1}, Lcom/transsion/shorttv/ui/widget/j;-><init>(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v2, v0, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;->b:Lms/p0;

    if-eqz v2, :cond_a

    iget-object v5, v2, Lms/p0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v5, :cond_a

    sget-object v3, Las/b;->a:Las/b$a;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v2, "getContext(...)"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getLink()Lcom/transsion/shorttv/bean/Link;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Link;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move-object v6, v1

    goto :goto_5

    :cond_9
    :goto_4
    const-string v1, ""

    goto :goto_3

    :goto_5
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v7

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v8

    const/16 v16, 0xfe0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v3 .. v17}, Las/b$a;->n(Las/b$a;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IIZZZZZZIILjava/lang/Object;)V

    :cond_a
    return-void
.end method

.method public final show()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvAdView;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
