.class public final Lrq/e;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Landroid/widget/EditText;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/widget/ProgressBar;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroidx/recyclerview/widget/RecyclerView;

.field public final i:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrq/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lrq/e;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lrq/e;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lrq/e;->d:Landroid/widget/ImageView;

    iput-object p5, p0, Lrq/e;->e:Landroid/view/View;

    iput-object p6, p0, Lrq/e;->f:Landroid/widget/ProgressBar;

    iput-object p7, p0, Lrq/e;->g:Landroid/widget/TextView;

    iput-object p8, p0, Lrq/e;->h:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p9, p0, Lrq/e;->i:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lrq/e;
    .locals 12

    sget v0, Lcom/transsion/search/R$id;->clearIV:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/search/R$id;->inputET:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/search/R$id;->iv_cancel:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/search/R$id;->line:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/search/R$id;->loadView:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/search/R$id;->recentTV:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/search/R$id;->rv:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/search/R$id;->searchTV:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    new-instance v0, Lrq/e;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lrq/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/EditText;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lrq/e;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lrq/e;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lrq/e;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lrq/e;
    .locals 2

    sget v0, Lcom/transsion/search/R$layout;->fragment_publish_work:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lrq/e;->a(Landroid/view/View;)Lrq/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lrq/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lrq/e;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
