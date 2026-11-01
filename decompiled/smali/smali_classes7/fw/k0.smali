.class public final Lfw/k0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Lcom/noober/background/view/BLConstraintLayout;

.field public final g:Landroidx/appcompat/widget/AppCompatImageView;

.field public final h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final i:Landroidx/appcompat/widget/AppCompatImageView;

.field public final j:Lcom/tn/lib/widget/TnTextView;

.field public final k:Landroidx/appcompat/widget/AppCompatImageView;

.field public final l:Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;

.field public final m:Lcom/tn/lib/widget/TnTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/noober/background/view/BLConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/widget/TnTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;Lcom/tn/lib/widget/TnTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw/k0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lfw/k0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lfw/k0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p4, p0, Lfw/k0;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p5, p0, Lfw/k0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p6, p0, Lfw/k0;->f:Lcom/noober/background/view/BLConstraintLayout;

    iput-object p7, p0, Lfw/k0;->g:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p8, p0, Lfw/k0;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p9, p0, Lfw/k0;->i:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p10, p0, Lfw/k0;->j:Lcom/tn/lib/widget/TnTextView;

    iput-object p11, p0, Lfw/k0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p12, p0, Lfw/k0;->l:Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;

    iput-object p13, p0, Lfw/k0;->m:Lcom/tn/lib/widget/TnTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfw/k0;
    .locals 17

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/usercenter/R$id;->contentList:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->iv_qr_code:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v6, :cond_0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/transsion/usercenter/R$id;->loginPremiumTipArrow:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->loginPremiumTipBody:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/noober/background/view/BLConstraintLayout;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->loginPremiumTipClose:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->loginPremiumTipContainer:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->loginPremiumTipIcon:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->loginPremiumTipText:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/tn/lib/widget/TnTextView;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->myActivityTipClose:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->myActivityTipContainer:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->myActivityTipText:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/tn/lib/widget/TnTextView;

    if-eqz v16, :cond_0

    new-instance v0, Lfw/k0;

    move-object v3, v0

    move-object v4, v7

    invoke-direct/range {v3 .. v16}, Lfw/k0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/noober/background/view/BLConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/widget/TnTextView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/lib/view/bubbleview/BubbleFrameLayout;Lcom/tn/lib/widget/TnTextView;)V

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Lfw/k0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lfw/k0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/k0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/k0;
    .locals 2

    sget v0, Lcom/transsion/usercenter/R$layout;->fragment_me:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lfw/k0;->a(Landroid/view/View;)Lfw/k0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lfw/k0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfw/k0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
