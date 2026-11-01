.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;
.super Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO<",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;",
        ">;",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooO;"
    }
.end annotation


# instance fields
.field public OooOOo:Ljava/lang/String;

.field public OooOOo0:Ljava/lang/String;

.field public OooOOoo:Ljava/lang/String;

.field public OooOo:Z

.field public OooOo0:Ljava/lang/String;

.field public OooOo00:Ljava/lang/String;

.field public OooOo0O:Ljava/lang/String;

.field public OooOo0o:Ljava/lang/String;

.field public OooOoO0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    sget v1, Lcom/cloud/tmc/miniapp/R$layout;->layout_classics_footer:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_arrow:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    sget v2, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_progress:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    sget v3, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_title:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    sget-object v3, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableMarginRight:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableArrowSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableArrowSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableProgressSize:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableProgressSize:I

    iget v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableSize:I

    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v3, v6, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableSize:I

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableSize:I

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlFinishDuration:I

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    sget-object v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlClassicsSpinnerStyle:I

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    iget v6, v6, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO00o:I

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlEnableArrowView:I

    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableArrow:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    const v5, -0x99999a

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableArrow:I

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO00o;

    invoke-direct {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO00o;-><init>()V

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    invoke-virtual {v4, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o(I)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableProgress:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableProgress:I

    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO;

    invoke-direct {v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO;-><init>()V

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    invoke-virtual {v4, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o(I)V

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextSizeTitle:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextSizeTitle:I

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlPrimaryColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_5

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlPrimaryColor:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    :cond_5
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlAccentColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlAccentColor:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    :cond_6
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextPulling:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_7

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextPulling:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    goto :goto_2

    :cond_7
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_pulling:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    :goto_2
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextRelease:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextRelease:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo:Ljava/lang/String;

    goto :goto_3

    :cond_8
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_release:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo:Ljava/lang/String;

    :goto_3
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextLoading:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_9

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextLoading:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOoo:Ljava/lang/String;

    goto :goto_4

    :cond_9
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_loading:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOoo:Ljava/lang/String;

    :goto_4
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextRefreshing:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextRefreshing:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo00:Ljava/lang/String;

    goto :goto_5

    :cond_a
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_refreshing:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo00:Ljava/lang/String;

    :goto_5
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextFinish:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_b

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextFinish:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0:Ljava/lang/String;

    goto :goto_6

    :cond_b
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_finish:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0:Ljava/lang/String;

    :goto_6
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextFailed:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextFailed:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0O:Ljava/lang/String;

    goto :goto_7

    :cond_c
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_failed:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0O:Ljava/lang/String;

    :goto_7
    sget v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextNothing:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_d

    sget p1, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlTextNothing:I

    invoke-virtual {v3, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0o:Ljava/lang/String;

    goto :goto_8

    :cond_d
    sget v4, Lcom/cloud/tmc/miniapp/R$string;->srl_footer_nothing:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0o:Ljava/lang/String;

    :goto_8
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    const/16 v3, 0x8

    if-eqz p2, :cond_e

    goto :goto_9

    :cond_e
    move v0, v3

    :goto_9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOoo:Ljava/lang/String;

    goto :goto_a

    :cond_f
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    :goto_a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :cond_10
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0O:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 1
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo:Z

    if-nez p2, :cond_1

    sget-object p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0$OooO00o;->OooO00o:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/high16 p3, 0x43340000    # 180.0f

    const/16 v0, 0x8

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo00:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOoo:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_4
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public OooO00o(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo:Z

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOo0o:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/footer/OooO0O0;->OooOoO0:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    sget-object v1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0o0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->setPrimaryColors([I)V

    :cond_0
    return-void
.end method
