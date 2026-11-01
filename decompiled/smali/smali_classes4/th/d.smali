.class public final Lth/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Lcom/tn/lib/widget/TnTextView;

.field public final d:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final e:Lcom/tn/lib/view/TitleLayout;

.field public final f:Lcom/tn/lib/widget/TnTextView;

.field public final g:Lcom/tn/lib/widget/TnTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/widget/TnTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/tn/lib/view/TitleLayout;Lcom/tn/lib/widget/TnTextView;Lcom/tn/lib/widget/TnTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lth/d;->a:Landroid/view/View;

    iput-object p2, p0, Lth/d;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p3, p0, Lth/d;->c:Lcom/tn/lib/widget/TnTextView;

    iput-object p4, p0, Lth/d;->d:Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p5, p0, Lth/d;->e:Lcom/tn/lib/view/TitleLayout;

    iput-object p6, p0, Lth/d;->f:Lcom/tn/lib/widget/TnTextView;

    iput-object p7, p0, Lth/d;->g:Lcom/tn/lib/widget/TnTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lth/d;
    .locals 10

    sget v0, Lcom/tn/lib/widget/R$id;->bg_no_connection:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v4, :cond_0

    sget v0, Lcom/tn/lib/widget/R$id;->go_to_setting:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/tn/lib/widget/TnTextView;

    if-eqz v5, :cond_0

    sget v0, Lcom/tn/lib/widget/R$id;->ll_no_connection_tip:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz v6, :cond_0

    sget v0, Lcom/tn/lib/widget/R$id;->ll_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/tn/lib/view/TitleLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/tn/lib/widget/R$id;->no_connection_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/tn/lib/widget/TnTextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/tn/lib/widget/R$id;->retry:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/tn/lib/widget/TnTextView;

    if-eqz v9, :cond_0

    new-instance v0, Lth/d;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lth/d;-><init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/widget/TnTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/tn/lib/view/TitleLayout;Lcom/tn/lib/widget/TnTextView;Lcom/tn/lib/widget/TnTextView;)V

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

.method public static b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lth/d;
    .locals 1

    if-eqz p1, :cond_0

    sget v0, Lcom/tn/lib/widget/R$layout;->view_no_connection:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lth/d;->a(Landroid/view/View;)Lth/d;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lth/d;->a:Landroid/view/View;

    return-object v0
.end method
