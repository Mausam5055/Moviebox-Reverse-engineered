.class public Lcom/bytedance/sdk/openadsdk/TKC/aa;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;
    }
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private Jcg:Ljava/lang/String;

.field private Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

.field private final TEQ:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

.field private sP:Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;

.field private uA:Ljava/lang/String;

.field private vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "tt_quick_option_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ib;->vS(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TEQ:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    return-object p0
.end method

.method private EjP()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/aa$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TKC/aa$5;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/aa;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TEQ:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    return-object p0
.end method

.method private Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v6, "tt_dislike_dialog_bg"

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;

    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v7

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x10

    invoke-virtual {v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v9

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v9, v8}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v8, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v8, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const-string v9, "tt_titlebar_close_seletor"

    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v8, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v7

    iput v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v7, 0x11

    invoke-virtual {v8, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const-string v7, "tt_other_reason"

    invoke-static {v1, v7}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v7, "#161823"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v9, 0x0

    invoke-static {v9}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v10, Landroid/view/View;

    invoke-direct {v10, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-static {v1, v12}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v11, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v11, 0x33

    const/16 v12, 0x16

    const/16 v13, 0x18

    const/16 v14, 0x23

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v11, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v15, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v15}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    invoke-direct {v15, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/sP;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    const/16 v13, 0xc8

    invoke-direct {v12, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    new-instance v13, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v13}, Landroid/text/InputFilter$AllCaps;-><init>()V

    const/4 v14, 0x2

    new-array v14, v14, [Landroid/text/InputFilter;

    aput-object v12, v14, v9

    aput-object v13, v14, v3

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v13, 0x41800000    # 16.0f

    invoke-static {v1, v13}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v14

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-static {v1, v13}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v14

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v14, 0x41380000    # 11.5f

    invoke-static {v1, v14}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v14

    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    invoke-virtual {v14, v12}, Lcom/bytedance/sdk/openadsdk/core/HiB/sP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setLines(I)V

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    const/16 v14, 0x30

    invoke-virtual {v12, v14}, Lcom/bytedance/sdk/openadsdk/core/HiB/sP;->setGravity(I)V

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    const/16 v7, 0x23

    const/16 v14, 0x16

    const/16 v15, 0x18

    invoke-static {v14, v15, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    const-string v12, "#57161823"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    const/high16 v14, 0x10000000

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setImeOptions(I)V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v1, v13}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v13

    const/high16 v15, 0x41880000    # 17.0f

    invoke-static {v1, v15}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v7, v13, v15, v13, v15}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setPadding(IIII)V

    invoke-virtual {v7, v14}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v13, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v13, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v14, 0x800003

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v15, v13}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    new-array v15, v3, [Ljava/lang/Object;

    const-string v16, "/200"

    aput-object v16, v15, v9

    const-string v3, "0%s"

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3, v14}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/high16 v12, 0x41700000    # 15.0f

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v5, 0x800005

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v3, 0x41d80000    # 27.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v5, v3, v4, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setPadding(IIII)V

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v5, 0x2c

    const/16 v12, 0x55

    const/16 v13, 0xfe

    invoke-static {v13, v5, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v12, 0x66

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v12, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v12, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v5, 0x101009e

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v3, v5, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v5, v9, [I

    invoke-virtual {v3, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v4, "tt_done"

    invoke-static {v1, v4}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v9}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/sP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    return-object p0
.end method

.method private Sj(Landroid/view/View;)V
    .locals 6

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TEQ:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Jcg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-string v3, "/200"

    aput-object v3, v4, p1

    const-string v3, "%d%s"

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/aa$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TKC/aa$1;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/aa;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/aa$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TKC/aa$2;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/aa;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/TKC/aa$3;-><init>(Lcom/bytedance/sdk/openadsdk/TKC/aa;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static Sj(Landroid/widget/EditText;)V
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/aa$4;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/TKC/aa$4;-><init>()V

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    return-object p0
.end method

.method private TKC()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->sP:Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->sP:Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->uA:Ljava/lang/String;

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Jcg:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Dq:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TEQ:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->EjP(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->sP()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP()V

    return-void
.end method

.method public sP()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/sP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa;->sP:Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;->Sj()V

    :cond_0
    return-void
.end method
