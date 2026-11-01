.class public final Lgv/d;
.super Ljava/lang/Object;

# interfaces
.implements Lg4/a;


# instance fields
.field private final a:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final b:Landroidx/constraintlayout/widget/Group;

.field public final c:Landroidx/constraintlayout/widget/Group;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final f:Landroid/widget/LinearLayout;

.field public final g:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final h:Landroid/widget/ProgressBar;

.field public final i:Lcom/tn/lib/view/SwitchButton;

.field public final j:Lcom/tn/lib/view/TitleLayout;

.field public final k:Landroidx/appcompat/widget/AppCompatTextView;

.field public final l:Landroidx/appcompat/widget/AppCompatTextView;

.field public final m:Landroidx/appcompat/widget/AppCompatTextView;

.field public final n:Landroidx/appcompat/widget/AppCompatTextView;

.field public final o:Landroidx/appcompat/widget/AppCompatTextView;

.field public final p:Landroidx/appcompat/widget/AppCompatTextView;

.field public final q:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ProgressBar;Lcom/tn/lib/view/SwitchButton;Lcom/tn/lib/view/TitleLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lgv/d;->a:Landroidx/appcompat/widget/LinearLayoutCompat;

    move-object v1, p2

    iput-object v1, v0, Lgv/d;->b:Landroidx/constraintlayout/widget/Group;

    move-object v1, p3

    iput-object v1, v0, Lgv/d;->c:Landroidx/constraintlayout/widget/Group;

    move-object v1, p4

    iput-object v1, v0, Lgv/d;->d:Landroidx/appcompat/widget/AppCompatImageView;

    move-object v1, p5

    iput-object v1, v0, Lgv/d;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    move-object v1, p6

    iput-object v1, v0, Lgv/d;->f:Landroid/widget/LinearLayout;

    move-object v1, p7

    iput-object v1, v0, Lgv/d;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p8

    iput-object v1, v0, Lgv/d;->h:Landroid/widget/ProgressBar;

    move-object v1, p9

    iput-object v1, v0, Lgv/d;->i:Lcom/tn/lib/view/SwitchButton;

    move-object v1, p10

    iput-object v1, v0, Lgv/d;->j:Lcom/tn/lib/view/TitleLayout;

    move-object v1, p11

    iput-object v1, v0, Lgv/d;->k:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p12

    iput-object v1, v0, Lgv/d;->l:Landroidx/appcompat/widget/AppCompatTextView;

    move-object v1, p13

    iput-object v1, v0, Lgv/d;->m:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lgv/d;->n:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p15

    iput-object v1, v0, Lgv/d;->o:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p16

    iput-object v1, v0, Lgv/d;->p:Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v1, p17

    iput-object v1, v0, Lgv/d;->q:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Lgv/d;
    .locals 21

    move-object/from16 v0, p0

    sget v1, Lcom/transsion/transfer/R$id;->groupErrorLayout:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    if-eqz v5, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->groupSuccessLayout:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->ivError:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->ivTransWifiQrCode:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v8, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->llSend:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->llUp:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v10, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->progressBar:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ProgressBar;

    if-eqz v11, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->switchButton:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/tn/lib/view/SwitchButton;

    if-eqz v12, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->toolBar:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/tn/lib/view/TitleLayout;

    if-eqz v13, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->tvErrorTip:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v14, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->tvRetry:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v15, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->tvSend:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v16, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->tvShareLink:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v17, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->tvShareQrCode:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v18, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->tvWaitingForReceiver:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v19, :cond_0

    sget v1, Lcom/transsion/transfer/R$id;->tvWifiSsid:I

    invoke-static {v0, v1}, Lg4/b;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v20, :cond_0

    new-instance v1, Lgv/d;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-direct/range {v3 .. v20}, Lgv/d;-><init>(Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Group;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ProgressBar;Lcom/tn/lib/view/SwitchButton;Lcom/tn/lib/view/TitleLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

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

.method public static c(Landroid/view/LayoutInflater;)Lgv/d;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lgv/d;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgv/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lgv/d;
    .locals 2

    sget v0, Lcom/transsion/transfer/R$layout;->activity_wifi_create:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lgv/d;->a(Landroid/view/View;)Lgv/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/appcompat/widget/LinearLayoutCompat;
    .locals 1

    iget-object v0, p0, Lgv/d;->a:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lgv/d;->b()Landroidx/appcompat/widget/LinearLayoutCompat;

    move-result-object v0

    return-object v0
.end method
