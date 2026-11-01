.class public final Lfw/j0;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/noober/background/view/BLLinearLayout;

.field public final c:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final g:Landroid/widget/LinearLayout;

.field public final h:Landroid/widget/LinearLayout;

.field public final i:Landroid/widget/LinearLayout;

.field public final j:Landroid/widget/LinearLayout;

.field public final k:Lcom/tn/lib/widget/TnTextView;

.field public final l:Lcom/tn/lib/widget/TnTextView;

.field public final m:Lcom/noober/background/view/BLView;

.field public final n:Lcom/noober/background/view/BLView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/noober/background/view/BLLinearLayout;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/tn/lib/widget/TnTextView;Lcom/tn/lib/widget/TnTextView;Lcom/noober/background/view/BLView;Lcom/noober/background/view/BLView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfw/j0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lfw/j0;->b:Lcom/noober/background/view/BLLinearLayout;

    iput-object p3, p0, Lfw/j0;->c:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p4, p0, Lfw/j0;->d:Landroid/widget/ImageView;

    iput-object p5, p0, Lfw/j0;->e:Landroid/widget/ImageView;

    iput-object p6, p0, Lfw/j0;->f:Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p7, p0, Lfw/j0;->g:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lfw/j0;->h:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lfw/j0;->i:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lfw/j0;->j:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lfw/j0;->k:Lcom/tn/lib/widget/TnTextView;

    iput-object p12, p0, Lfw/j0;->l:Lcom/tn/lib/widget/TnTextView;

    iput-object p13, p0, Lfw/j0;->m:Lcom/noober/background/view/BLView;

    iput-object p14, p0, Lfw/j0;->n:Lcom/noober/background/view/BLView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lfw/j0;
    .locals 18

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/usercenter/R$id;->ivAddKids:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/noober/background/view/BLLinearLayout;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->ivAdultAvatar:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->ivAdultEditIcon:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->ivEditIcon:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->ivKidsAvatar:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->layoutAccountsRow:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->layoutAddKids:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->layoutAdultProfile:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->layoutKidsProfile:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->tvAdultName:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/tn/lib/widget/TnTextView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->tvKidsName:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/tn/lib/widget/TnTextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->viewAdultAvatarOverlay:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/noober/background/view/BLView;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/usercenter/R$id;->viewKidsAvatarOverlay:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/noober/background/view/BLView;

    if-eqz v17, :cond_0

    new-instance v1, Lfw/j0;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lfw/j0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/noober/background/view/BLLinearLayout;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/tn/lib/widget/TnTextView;Lcom/tn/lib/widget/TnTextView;Lcom/noober/background/view/BLView;Lcom/noober/background/view/BLView;)V

    return-object v1

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

.method public static c(Landroid/view/LayoutInflater;)Lfw/j0;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lfw/j0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/j0;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/j0;
    .locals 2

    sget v0, Lcom/transsion/usercenter/R$layout;->fragment_manage_profiles:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lfw/j0;->a(Landroid/view/View;)Lfw/j0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lfw/j0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lfw/j0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
