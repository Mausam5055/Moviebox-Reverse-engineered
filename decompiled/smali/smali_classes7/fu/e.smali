.class public final Lfu/e;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/core/widget/NestedScrollView;

.field public final b:Lcom/transsion/subtitle/view/SubtitleOptionsView;


# direct methods
.method private constructor <init>(Landroidx/core/widget/NestedScrollView;Lcom/transsion/subtitle/view/SubtitleOptionsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfu/e;->a:Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lfu/e;->b:Lcom/transsion/subtitle/view/SubtitleOptionsView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfu/e;
    .locals 2

    sget v0, Lcom/transsion/subtitle/R$id;->v_options:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/subtitle/view/SubtitleOptionsView;

    if-eqz v1, :cond_0

    new-instance v0, Lfu/e;

    check-cast p0, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v0, p0, v1}, Lfu/e;-><init>(Landroidx/core/widget/NestedScrollView;Lcom/transsion/subtitle/view/SubtitleOptionsView;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lfu/e;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lfu/e;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfu/e;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfu/e;
    .locals 2

    sget v0, Lcom/transsion/subtitle/R$layout;->fragment_subtitle_options:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lfu/e;->a(Landroid/view/View;)Lfu/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/core/widget/NestedScrollView;
    .locals 1

    iget-object v0, p0, Lfu/e;->a:Landroidx/core/widget/NestedScrollView;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfu/e;->b()Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    return-object v0
.end method
