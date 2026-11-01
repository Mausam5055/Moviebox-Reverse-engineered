.class public final Lcn/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/noober/background/view/BLLinearLayout;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final d:Lcom/tn/lib/view/MaxHeightNestedScrollView;

.field public final e:Lcom/noober/background/view/BLTextView;

.field public final f:Lcom/noober/background/view/BLTextView;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Lcom/noober/background/view/BLLinearLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/tn/lib/view/MaxHeightNestedScrollView;Lcom/noober/background/view/BLTextView;Lcom/noober/background/view/BLTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/d;->a:Lcom/noober/background/view/BLLinearLayout;

    iput-object p2, p0, Lcn/d;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcn/d;->c:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p4, p0, Lcn/d;->d:Lcom/tn/lib/view/MaxHeightNestedScrollView;

    iput-object p5, p0, Lcn/d;->e:Lcom/noober/background/view/BLTextView;

    iput-object p6, p0, Lcn/d;->f:Lcom/noober/background/view/BLTextView;

    iput-object p7, p0, Lcn/d;->g:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p8, p0, Lcn/d;->h:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcn/d;
    .locals 11

    sget v0, Lcom/transsion/moviedetail/R$id;->iv_select:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->ll_select:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->ns_tips:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/tn/lib/view/MaxHeightNestedScrollView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tv_back:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/noober/background/view/BLTextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tv_confirm:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/noober/background/view/BLTextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tv_tips:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tv_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v10, :cond_0

    new-instance v0, Lcn/d;

    move-object v3, p0

    check-cast v3, Lcom/noober/background/view/BLLinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcn/d;-><init>(Lcom/noober/background/view/BLLinearLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/tn/lib/view/MaxHeightNestedScrollView;Lcom/noober/background/view/BLTextView;Lcom/noober/background/view/BLTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

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


# virtual methods
.method public b()Lcom/noober/background/view/BLLinearLayout;
    .locals 1

    iget-object v0, p0, Lcn/d;->a:Lcom/noober/background/view/BLLinearLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcn/d;->b()Lcom/noober/background/view/BLLinearLayout;

    move-result-object v0

    return-object v0
.end method
