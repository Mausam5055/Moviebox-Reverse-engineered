.class public final Ljx/e;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/transsion/videodetail/music/widget/MusicLikedListEmptyView;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Landroidx/recyclerview/widget/RecyclerView;

.field public final e:Lcom/transsion/videodetail/music/widget/MusicLikedListLoadingView;

.field public final f:Landroidx/appcompat/widget/AppCompatTextView;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/videodetail/music/widget/MusicLikedListEmptyView;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/videodetail/music/widget/MusicLikedListLoadingView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljx/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Ljx/e;->b:Lcom/transsion/videodetail/music/widget/MusicLikedListEmptyView;

    iput-object p3, p0, Ljx/e;->c:Landroid/widget/FrameLayout;

    iput-object p4, p0, Ljx/e;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Ljx/e;->e:Lcom/transsion/videodetail/music/widget/MusicLikedListLoadingView;

    iput-object p6, p0, Ljx/e;->f:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p7, p0, Ljx/e;->g:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p8, p0, Ljx/e;->h:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Ljx/e;
    .locals 11

    sget v0, Lcom/transsion/videodetail/R$id;->emptyView:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/videodetail/music/widget/MusicLikedListEmptyView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/videodetail/R$id;->flPlayer:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/videodetail/R$id;->likedRv:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/videodetail/R$id;->loadingView:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/transsion/videodetail/music/widget/MusicLikedListLoadingView;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/videodetail/R$id;->tvPlayAll:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/videodetail/R$id;->tvVideosCount:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    sget v0, Lcom/transsion/videodetail/R$id;->viewTopPlaceholder:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v0, Ljx/e;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ljx/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/videodetail/music/widget/MusicLikedListEmptyView;Landroid/widget/FrameLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/videodetail/music/widget/MusicLikedListLoadingView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/View;)V

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

.method public static c(Landroid/view/LayoutInflater;)Ljx/e;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ljx/e;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljx/e;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljx/e;
    .locals 2

    sget v0, Lcom/transsion/videodetail/R$layout;->fragment_liked_music_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Ljx/e;->a(Landroid/view/View;)Ljx/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Ljx/e;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Ljx/e;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
