.class public final Lgl/i;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Lcom/noober/background/view/BLConstraintLayout;

.field public final b:Landroid/widget/EditText;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroidx/recyclerview/widget/RecyclerView;

.field public final h:Lcom/noober/background/view/BLConstraintLayout;

.field public final i:Landroid/view/View;

.field public final j:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/noober/background/view/BLConstraintLayout;Landroid/widget/EditText;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lcom/noober/background/view/BLConstraintLayout;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl/i;->a:Lcom/noober/background/view/BLConstraintLayout;

    iput-object p2, p0, Lgl/i;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lgl/i;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lgl/i;->d:Landroid/widget/ImageView;

    iput-object p5, p0, Lgl/i;->e:Landroid/widget/ImageView;

    iput-object p6, p0, Lgl/i;->f:Landroid/widget/ImageView;

    iput-object p7, p0, Lgl/i;->g:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p8, p0, Lgl/i;->h:Lcom/noober/background/view/BLConstraintLayout;

    iput-object p9, p0, Lgl/i;->i:Landroid/view/View;

    iput-object p10, p0, Lgl/i;->j:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lgl/i;
    .locals 13

    sget v0, Lcom/transsion/home/R$id;->etSearch:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/home/R$id;->header:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/home/R$id;->ivClear:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/home/R$id;->ivClose:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/home/R$id;->ivSearch:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/home/R$id;->rvCountries:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/home/R$id;->searchBar:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/noober/background/view/BLConstraintLayout;

    if-eqz v10, :cond_0

    sget v0, Lcom/transsion/home/R$id;->topBorder:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    sget v0, Lcom/transsion/home/R$id;->tvTitle:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    new-instance v0, Lgl/i;

    move-object v3, p0

    check-cast v3, Lcom/noober/background/view/BLConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lgl/i;-><init>(Lcom/noober/background/view/BLConstraintLayout;Landroid/widget/EditText;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lcom/noober/background/view/BLConstraintLayout;Landroid/view/View;Landroid/widget/TextView;)V

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

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgl/i;
    .locals 2

    sget v0, Lcom/transsion/home/R$layout;->dialog_tv_country_select:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lgl/i;->a(Landroid/view/View;)Lgl/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/noober/background/view/BLConstraintLayout;
    .locals 1

    iget-object v0, p0, Lgl/i;->a:Lcom/noober/background/view/BLConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lgl/i;->b()Lcom/noober/background/view/BLConstraintLayout;

    move-result-object v0

    return-object v0
.end method
