.class public final Lwm/o;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/view/View;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Landroidx/appcompat/widget/AppCompatTextView;

.field public final g:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final h:Landroidx/appcompat/widget/AppCompatTextView;

.field public final i:Lcom/transsion/member/view/PremiumContentView;

.field public final j:Landroid/widget/LinearLayout;

.field public final k:Landroidx/core/widget/NestedScrollView;

.field public final l:Landroidx/appcompat/widget/AppCompatTextView;

.field public final m:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/member/view/PremiumContentView;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwm/o;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lwm/o;->b:Landroid/view/View;

    iput-object p3, p0, Lwm/o;->c:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p4, p0, Lwm/o;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p5, p0, Lwm/o;->e:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p6, p0, Lwm/o;->f:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p7, p0, Lwm/o;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p8, p0, Lwm/o;->h:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p9, p0, Lwm/o;->i:Lcom/transsion/member/view/PremiumContentView;

    iput-object p10, p0, Lwm/o;->j:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lwm/o;->k:Landroidx/core/widget/NestedScrollView;

    iput-object p12, p0, Lwm/o;->l:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p13, p0, Lwm/o;->m:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Lwm/o;
    .locals 15

    sget v0, Lcom/transsion/member/R$id;->avatar_bg:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    sget v0, Lcom/transsion/member/R$id;->icon_user_premium_type:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/member/R$id;->iv_avatar_premium:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/member/R$id;->iv_back:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/member/R$id;->iv_free_plan:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/member/R$id;->iv_info:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/member/R$id;->iv_name:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/member/R$id;->layout_content:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/transsion/member/view/PremiumContentView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/member/R$id;->member_top_container:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/member/R$id;->scroller_member:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/core/widget/NestedScrollView;

    if-eqz v12, :cond_0

    sget v0, Lcom/transsion/member/R$id;->tv_member_date:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v13, :cond_0

    sget v0, Lcom/transsion/member/R$id;->view_top:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    new-instance v0, Lwm/o;

    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lwm/o;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/member/view/PremiumContentView;Landroid/widget/LinearLayout;Landroidx/core/widget/NestedScrollView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lwm/o;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lwm/o;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lwm/o;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lwm/o;
    .locals 2

    sget v0, Lcom/transsion/member/R$layout;->fragment_member_layout_premium:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lwm/o;->a(Landroid/view/View;)Lwm/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lwm/o;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lwm/o;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
