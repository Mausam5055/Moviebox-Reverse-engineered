.class public final Lgl/n0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Landroid/view/ViewStub;

.field public final e:Landroid/view/ViewStub;

.field public final f:Landroid/view/ViewStub;

.field public final g:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewStub;Landroid/view/ViewStub;Landroid/view/ViewStub;Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl/n0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lgl/n0;->b:Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;

    iput-object p3, p0, Lgl/n0;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p4, p0, Lgl/n0;->d:Landroid/view/ViewStub;

    iput-object p5, p0, Lgl/n0;->e:Landroid/view/ViewStub;

    iput-object p6, p0, Lgl/n0;->f:Landroid/view/ViewStub;

    iput-object p7, p0, Lgl/n0;->g:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Lgl/n0;
    .locals 10

    sget v0, Lcom/transsion/home/R$id;->filterExpand:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/home/R$id;->ll_tab_movie:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/home/R$id;->loading_stub:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/view/ViewStub;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/home/R$id;->no_network_stub:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/ViewStub;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/home/R$id;->no_result_stub:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/view/ViewStub;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/home/R$id;->tab_movie:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v9, :cond_0

    new-instance v0, Lgl/n0;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lgl/n0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/home/view/filter/expand/UGCFilterExpandView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewStub;Landroid/view/ViewStub;Landroid/view/ViewStub;Lcom/google/android/material/tabs/TabLayout;)V

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
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lgl/n0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lgl/n0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
