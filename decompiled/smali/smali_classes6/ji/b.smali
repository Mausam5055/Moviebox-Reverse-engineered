.class public final Lji/b;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroid/widget/FrameLayout;

.field public final b:Lcom/transsion/ad/view/AdTagView;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Landroid/widget/FrameLayout;

.field public final e:Landroid/widget/LinearLayout;

.field public final f:Lcom/transsion/ad/view/AdCountdownView;

.field public final g:Lcom/transsion/ad/view/MemberTagView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/transsion/ad/view/AdTagView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/transsion/ad/view/AdCountdownView;Lcom/transsion/ad/view/MemberTagView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lji/b;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lji/b;->b:Lcom/transsion/ad/view/AdTagView;

    iput-object p3, p0, Lji/b;->c:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lji/b;->d:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lji/b;->e:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lji/b;->f:Lcom/transsion/ad/view/AdCountdownView;

    iput-object p7, p0, Lji/b;->g:Lcom/transsion/ad/view/MemberTagView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lji/b;
    .locals 10

    sget v0, Lcom/transsion/ad/R$id;->adIcon:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/transsion/ad/view/AdTagView;

    if-eqz v4, :cond_0

    move-object v5, p0

    check-cast v5, Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/ad/R$id;->flAdContainer:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->llControl:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->tvCountDown:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/transsion/ad/view/AdCountdownView;

    if-eqz v8, :cond_0

    sget v0, Lcom/transsion/ad/R$id;->viewMember:I

    invoke-static {p0, v0}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/transsion/ad/view/MemberTagView;

    if-eqz v9, :cond_0

    new-instance p0, Lji/b;

    move-object v2, p0

    move-object v3, v5

    invoke-direct/range {v2 .. v9}, Lji/b;-><init>(Landroid/widget/FrameLayout;Lcom/transsion/ad/view/AdTagView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Lcom/transsion/ad/view/AdCountdownView;Lcom/transsion/ad/view/MemberTagView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lji/b;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lji/b;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lji/b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lji/b;
    .locals 2

    sget v0, Lcom/transsion/ad/R$layout;->activity_bidding_buy_out_h5_ad_source_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lji/b;->a(Landroid/view/View;)Lji/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lji/b;->a:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lji/b;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method
