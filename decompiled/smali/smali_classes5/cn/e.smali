.class public final Lcn/e;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/constraintlayout/helper/widget/Flow;

.field public final c:Lcom/transsion/moviedetail/view/InfoExtendView;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Landroid/widget/LinearLayout;

.field public final f:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final g:Landroidx/appcompat/widget/AppCompatImageView;

.field public final h:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final i:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final j:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final k:Landroidx/appcompat/widget/AppCompatTextView;

.field public final l:Lcom/transsion/moviedetail/view/CustomTextViewGroup;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/helper/widget/Flow;Lcom/transsion/moviedetail/view/InfoExtendView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcn/e;->b:Landroidx/constraintlayout/helper/widget/Flow;

    iput-object p3, p0, Lcn/e;->c:Lcom/transsion/moviedetail/view/InfoExtendView;

    iput-object p4, p0, Lcn/e;->d:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p5, p0, Lcn/e;->e:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcn/e;->f:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    iput-object p7, p0, Lcn/e;->g:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p8, p0, Lcn/e;->h:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    iput-object p9, p0, Lcn/e;->i:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    iput-object p10, p0, Lcn/e;->j:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p11, p0, Lcn/e;->k:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p12, p0, Lcn/e;->l:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    return-void
.end method

.method public static a(Landroid/view/View;)Lcn/e;
    .locals 15

    sget v0, Lcom/transsion/moviedetail/R$id;->flow:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/helper/widget/Flow;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->infoExtendView:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/moviedetail/view/InfoExtendView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->ivMovieContent:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->ll_score:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tv_category:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tv_close:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tv_duration:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tv_genre:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tv_header_toolbar:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v12, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tvMovieTitle:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v13, :cond_0

    sget v0, Lcom/transsion/moviedetail/R$id;->tv_students:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    if-eqz v14, :cond_0

    new-instance v0, Lcn/e;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcn/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/helper/widget/Flow;Lcom/transsion/moviedetail/view/InfoExtendView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lcn/e;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/e;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/e;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/e;
    .locals 2

    sget v0, Lcom/transsion/moviedetail/R$layout;->fragment_edu_info_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcn/e;->a(Landroid/view/View;)Lcn/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lcn/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcn/e;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
