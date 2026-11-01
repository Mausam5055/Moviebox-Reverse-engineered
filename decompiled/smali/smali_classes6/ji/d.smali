.class public final Lji/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/transsion/ad/view/AdCountdownView;

.field public final c:Lcom/transsion/ad/view/AdTagView;

.field public final d:Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Landroid/widget/FrameLayout;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final i:Lcom/transsion/ad/view/MemberTagView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ad/view/AdCountdownView;Lcom/transsion/ad/view/AdTagView;Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ad/view/MemberTagView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lji/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lji/d;->b:Lcom/transsion/ad/view/AdCountdownView;

    iput-object p3, p0, Lji/d;->c:Lcom/transsion/ad/view/AdTagView;

    iput-object p4, p0, Lji/d;->d:Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;

    iput-object p5, p0, Lji/d;->e:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lji/d;->f:Landroid/widget/FrameLayout;

    iput-object p7, p0, Lji/d;->g:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lji/d;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p9, p0, Lji/d;->i:Lcom/transsion/ad/view/MemberTagView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lji/d;
    .locals 12

    sget v0, Lcom/transsion/ad/R$id;->adCountdownView:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/ad/view/AdCountdownView;

    if-eqz v4, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->adIcon:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/ad/view/AdTagView;

    if-eqz v5, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->arcEdgeLayout:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->container:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->flVolumeContainer:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->llControl:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    move-object v10, p0

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v0, Lcom/transsion/ad/R$id;->viewMember:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/transsion/ad/view/MemberTagView;

    if-eqz v11, :cond_0

    new-instance p0, Lji/d;

    move-object v2, p0

    move-object v3, v10

    invoke-direct/range {v2 .. v11}, Lji/d;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ad/view/AdCountdownView;Lcom/transsion/ad/view/AdTagView;Lcom/transsion/ad/view/SwipeUpOrTapForDetailsView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ad/view/MemberTagView;)V

    return-object p0

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

.method public static c(Landroid/view/LayoutInflater;)Lji/d;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lji/d;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lji/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lji/d;
    .locals 2

    sget v0, Lcom/transsion/ad/R$layout;->activity_bidding_buy_out_interstitial_full_screen_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lji/d;->a(Landroid/view/View;)Lji/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lji/d;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lji/d;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
