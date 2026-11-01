.class public Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private HiB:Z

.field private Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private vS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP()V

    :cond_0
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    .locals 6

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->HiB:Z

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->vS:Z

    if-eqz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->vS:Z

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->IOh()Z

    move-result p2

    const/16 v0, 0x8

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/utils/wE;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-direct {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/wE;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {v2, p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v0, "Loading"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected Sj()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    return-object v0
.end method

.method public getLoadingProgressBar()Lcom/bytedance/sdk/openadsdk/core/widget/Dq;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    return-object v0
.end method

.method public sP()V
    .locals 9

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->HiB:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->HiB:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "#2E2E2E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    const v7, 0x1f000031

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    const/high16 v6, 0x42800000    # 64.0f

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const v7, 0x1f000032

    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v7, 0x435b0000    # 219.0f

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/high16 v8, 0x43160000    # 150.0f

    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v6, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    const v6, 0x1f000034

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x430a0000    # 138.0f

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42280000    # 42.0f

    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v1, v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    div-int/2addr v0, v8

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->setProgress(I)V

    :cond_0
    return-void
.end method
