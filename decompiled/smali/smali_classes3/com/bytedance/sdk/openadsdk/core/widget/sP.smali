.class public Lcom/bytedance/sdk/openadsdk/core/widget/sP;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/widget/sP$Sj;
    }
.end annotation


# instance fields
.field private final Dq:Landroid/content/Context;

.field private EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private Fmk:I

.field private HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

.field private Jcg:Landroid/view/View;

.field public Sj:Lcom/bytedance/sdk/openadsdk/core/widget/sP$Sj;

.field private TEQ:Ljava/lang/String;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private Ym:Ljava/lang/String;

.field private aa:Ljava/lang/String;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

.field private sef:Z

.field private uA:Ljava/lang/String;

.field private vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "tt_custom_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ib;->vS(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Fmk:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sef:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Dq:Landroid/content/Context;

    return-void
.end method

.method private Sj(F)I
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p1

    return p1
.end method

.method private Sj(Landroid/content/Context;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v7, 0x43820000    # 260.0f

    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setMinimumWidth(I)V

    const/high16 v7, 0x42000000    # 32.0f

    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v8, v9, v9}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setPadding(IIII)V

    const-string v8, "tt_custom_dialog_bg"

    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x11

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v11, 0x41800000    # 16.0f

    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v12, v10}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v13, "#333333"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/high16 v13, 0x41900000    # 18.0f

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v12, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v12, 0x41200000    # 10.0f

    invoke-direct {v0, v12}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v14

    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const/high16 v15, 0x43160000    # 150.0f

    invoke-direct {v0, v15}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v11

    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setMaxHeight(I)V

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v0, v15}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setMaxWidth(I)V

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v11, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v14

    iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-direct {v0, v11}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v11, v10}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/high16 v14, 0x40400000    # 3.0f

    invoke-direct {v0, v14}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3f99999a    # 1.2f

    invoke-virtual {v11, v14, v15}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v13, "#000000"

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v11, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v7

    iput v7, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-string v7, "#E4E4E4"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v11, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v11, v13}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v13, Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-direct {v13, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    const v14, 0x1f000016

    invoke-virtual {v13, v14}, Landroid/view/View;->setId(I)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v9, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {v0, v12}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v14

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v14, 0x3f800000    # 1.0f

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-direct {v0, v14}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v12

    invoke-direct {v0, v14}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v6

    invoke-virtual {v15, v9, v12, v9, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;->setPadding(IIII)V

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v6, v10}, Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;->setGravity(I)V

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    const-string v14, "#999999"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v6, v13}, Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Jcg:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Jcg:Landroid/view/View;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Jcg:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-direct {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    const v4, 0x1f000017

    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-direct {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v7

    invoke-direct {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(F)I

    move-result v13

    invoke-virtual {v4, v9, v7, v9, v13}, Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;->setPadding(IIII)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v4, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v4, v10}, Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;->setGravity(I)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    const-string v6, "#38ADFF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Jcg:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v2
.end method

.method private Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/sP$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/sP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/sP$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/widget/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/sP;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private sP()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TEQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TEQ:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->uA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->uA:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Ym:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Ym:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_postive_txt"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->aa:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->aa:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    const-string v4, "tt_negtive_txt"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Fmk:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sef:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Jcg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Sj;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Jcg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/core/widget/sP$Sj;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/sP$Sj;

    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->uA:Ljava/lang/String;

    return-object p0
.end method

.method public TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->aa:Ljava/lang/String;

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Dq:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Sj()V

    return-void
.end method

.method public sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/sP;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->Ym:Ljava/lang/String;

    return-object p0
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/sP;->sP()V

    return-void
.end method
