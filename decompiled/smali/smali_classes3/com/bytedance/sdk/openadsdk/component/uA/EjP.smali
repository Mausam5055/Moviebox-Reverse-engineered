.class public Lcom/bytedance/sdk/openadsdk/component/uA/EjP;
.super Lcom/bytedance/sdk/openadsdk/component/uA/TKC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/uA/EjP$Sj;
    }
.end annotation


# instance fields
.field private final Fmk:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

.field private final Zq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private final dNu:Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

.field private final sef:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

.field private final uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;-><init>(Landroid/content/Context;)V

    const v2, 0x1f000039

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41100000    # 9.0f

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v8

    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    invoke-direct {v9, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/TKC;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->aa:Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    invoke-virtual {v9, v6, v2, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setPadding(IIII)V

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->aa:Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v9, 0x42000000    # 32.0f

    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {v1, v11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v6, v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0xc

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v12, 0xb

    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v2, v2, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->aa:Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;->Fmk:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const v7, 0x1f00003e

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v12, 0x42d60000    # 107.0f

    invoke-static {v1, v12}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v12

    invoke-direct {v7, v3, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v12, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x11

    iput v14, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v7, v12}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-direct {v12, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    const v15, 0x1f00003f

    invoke-virtual {v12, v15}, Landroid/view/View;->setId(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v12, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v12, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v5, v12}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const v8, 0x1f000041

    invoke-virtual {v5, v8}, Landroid/view/View;->setId(I)V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v15, "#161823"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/high16 v15, 0x41f00000    # 30.0f

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Jcg:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v15

    invoke-virtual {v7, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v12, 0xa

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const v15, 0x1f00003a

    invoke-virtual {v7, v15}, Landroid/view/View;->setId(I)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    sget-object v15, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v15, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    const v15, 0x1f00003b

    invoke-virtual {v7, v15}, Landroid/view/View;->setId(I)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v14, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    invoke-virtual {v5, v15, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const v15, 0x1f00003c

    invoke-virtual {v7, v15}, Landroid/view/View;->setId(I)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    new-instance v15, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v15, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const v15, 0x1f000015

    invoke-virtual {v7, v15}, Landroid/view/View;->setId(I)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v15, "#b3000000"

    invoke-static {v15}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    const/16 v11, 0x18

    invoke-static {v1, v15, v11}, Lcom/bytedance/sdk/openadsdk/utils/TEQ;->Sj(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v7, v14}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v11, "tt_video_download_apk"

    invoke-static {v1, v11}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v7, v8, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v14, "open_ad_click_button_tag"

    invoke-virtual {v7, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v14, 0x436c0000    # 236.0f

    invoke-static {v1, v14}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v14

    const/high16 v15, 0x42400000    # 48.0f

    invoke-static {v1, v15}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v7, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x51

    iput v14, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v9

    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v5, v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;->dNu:Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v10}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/uA/EjP$Sj;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/uA/EjP$Sj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v1, v11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v7, v2, v9, v10, v11}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setPadding(IIII)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v1, v9}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v9

    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42100000    # 36.0f

    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v11

    invoke-static {v1, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v9, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v1, v4}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v4

    iput v4, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v7, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;->Zq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    invoke-direct {v3, v1, v8}, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;-><init>(Landroid/content/Context;Z)V

    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static/range {p1 .. p2}, Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;->createPAGLogoViewByMaterial(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    const v3, 0x1f00003d

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v2, v13, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x53

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-virtual {v5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->aa:Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->Dq:Lcom/bytedance/sdk/openadsdk/component/uA/Jcg;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getAdIconView()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    return-object v0
.end method

.method public getAdTitleTextView()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;->Zq:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    return-object v0
.end method

.method public getOverlayLayout()Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;->dNu:Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    return-object v0
.end method

.method public getScoreBar()Lcom/bytedance/sdk/openadsdk/core/widget/Zq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;->sef:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    return-object v0
.end method

.method public getUserInfo()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;->Fmk:Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    return-object v0
.end method
