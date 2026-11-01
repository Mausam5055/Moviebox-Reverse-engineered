.class public final Lms/o0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/transsion/shorttv/base/widget/TnTextView;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Lcom/transsion/shorttv/base/widget/TnTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/shorttv/base/widget/TnTextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/shorttv/base/widget/TnTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/o0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lms/o0;->b:Lcom/transsion/shorttv/base/widget/TnTextView;

    iput-object p3, p0, Lms/o0;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lms/o0;->d:Lcom/transsion/shorttv/base/widget/TnTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lms/o0;
    .locals 4

    sget v0, Lcom/transsion/shorttv/R$id;->main_operation_movie_more_text:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/base/widget/TnTextView;

    if-eqz v1, :cond_0

    sget v0, Lcom/transsion/shorttv/R$id;->main_operation_movie_rank_recycler:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    sget v0, Lcom/transsion/shorttv/R$id;->main_operation_movie_rank_title:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/shorttv/base/widget/TnTextView;

    if-eqz v3, :cond_0

    new-instance v0, Lms/o0;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lms/o0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/shorttv/base/widget/TnTextView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/shorttv/base/widget/TnTextView;)V

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

    iget-object v0, p0, Lms/o0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lms/o0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
