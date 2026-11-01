.class public Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/mbridge/msdk/widget/dialog/b;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/widget/dialog/b;)V
    .locals 6

    const-string v0, "MBAlertDialog"

    const-string v1, "id"

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "mbridge_cm_feedbackview"

    const-string v5, "layout"

    invoke-static {p1, v3, v5}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v3, v5}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->setDialogWidthAndHeight(FF)V

    iput-object p2, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->d:Lcom/mbridge/msdk/widget/dialog/b;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :try_start_0
    const-string p2, "mbridge_video_common_alertview_titleview"

    invoke-static {p1, p2, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->f:Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    const-string p2, "mbridge_video_common_alertview_contentview"

    invoke-static {p1, p2, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->c:Landroid/widget/LinearLayout;

    const-string p2, "mbridge_video_common_alertview_confirm_button"

    invoke-static {p1, p2, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->b:Landroid/widget/Button;

    const-string p2, "mbridge_video_common_alertview_cancel_button"

    invoke-static {p1, p2, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a:Landroid/widget/Button;

    const-string p2, "mbridge_video_common_alertview_private_action_button"

    invoke-static {p1, p2, v1}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->e:Landroid/widget/Button;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)Lcom/mbridge/msdk/widget/dialog/b;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->d:Lcom/mbridge/msdk/widget/dialog/b;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a:Landroid/widget/Button;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$a;-><init>(Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->b:Landroid/widget/Button;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$b;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$b;-><init>(Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->e:Landroid/widget/Button;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$c;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$c;-><init>(Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    new-instance v0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$d;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog$d;-><init>(Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public static isScreenOrientationPortrait(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->d:Lcom/mbridge/msdk/widget/dialog/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->d:Lcom/mbridge/msdk/widget/dialog/b;

    :cond_0
    return-void
.end method

.method public getListener()Lcom/mbridge/msdk/widget/dialog/b;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->d:Lcom/mbridge/msdk/widget/dialog/b;

    return-object v0
.end method

.method public hideNavigationBar(Landroid/view/Window;)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/Window;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setCancelButtonClickable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    const-string v0, "drawable"

    const-string v1, "mbridge_cm_feedback_choice_btn_bg_pressed"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a:Landroid/widget/Button;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a:Landroid/widget/Button;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCancelText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->a:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setContent(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setDialogWidthAndHeight(FF)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->isScreenOrientationPortrait(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->h:I

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->g:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p2, 0x50

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget p2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p2, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->h:I

    iget p2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->g:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p1, 0x11

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/mbridge/msdk/widget/dialog/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->d:Lcom/mbridge/msdk/widget/dialog/b;

    return-void
.end method

.method public setPrivacyText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->hideNavigationBar(Landroid/view/Window;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBAlertDialog"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
