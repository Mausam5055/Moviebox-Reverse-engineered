.class public final Lms/e;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/appcompat/widget/AppCompatTextView;

.field public final d:Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/e;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lms/e;->b:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lms/e;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p4, p0, Lms/e;->d:Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lms/e;
    .locals 4

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/shorttv/R$id;->tvName:I

    invoke-static {p0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_0

    sget v1, Lcom/transsion/shorttv/R$id;->tvNameSelected:I

    invoke-static {p0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;

    if-eqz v3, :cond_0

    new-instance p0, Lms/e;

    invoke-direct {p0, v0, v0, v2, v3}, Lms/e;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lms/e;
    .locals 2

    sget v0, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_item_language_select:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lms/e;->a(Landroid/view/View;)Lms/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lms/e;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lms/e;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
