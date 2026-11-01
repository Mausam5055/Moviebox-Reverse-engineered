.class public Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;
.super Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO<",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;",
        ">;",
        "Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOO0;"
    }
.end annotation


# instance fields
.field public OooOOo:Ljava/util/Date;

.field public OooOOo0:Ljava/lang/String;

.field public OooOOoo:Landroid/widget/TextView;

.field public OooOo:Ljava/lang/String;

.field public OooOo0:Z

.field public OooOo00:Ljava/text/DateFormat;

.field public OooOo0O:Z

.field public OooOo0o:Ljava/lang/String;

.field public OooOoO:Ljava/lang/String;

.field public OooOoO0:Ljava/lang/String;

.field public OooOoOO:Ljava/lang/String;

.field public OooOoo:Ljava/lang/String;

.field public OooOoo0:Ljava/lang/String;

.field public OooOooO:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "LAST_UPDATE_TIME"

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo0:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOooO:I

    sget v1, Lcom/cloud/tmc/miniapp/R$layout;->layout_classics_header:I

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v1, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_arrow:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    sget v2, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_update:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    sget v3, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_progress:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    sget v4, Lcom/cloud/tmc/miniapp/R$id;->srl_classics_title:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    sget-object v4, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v8, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextTimeMarginTop:I

    iget v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsFooter_srlDrawableMarginRight:I

    iget v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableArrowSize:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableArrowSize:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableProgressSize:I

    iget v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableProgressSize:I

    iget v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableSize:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableSize:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableSize:I

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableSize:I

    iget v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v5

    iput v5, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlFinishDuration:I

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlEnableLastTime:I

    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlEnableArrowView:I

    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    sget-object v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO0oo:[Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlClassicsSpinnerStyle:I

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    iget v7, v7, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;->OooO00o:I

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0O0;->OooO0O0:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/OooO0O0;

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableArrow:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const v6, -0x99999a

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    sget v7, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableArrow:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO00o;

    invoke-direct {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO00o;-><init>()V

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    invoke-virtual {v5, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o(I)V

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableProgress:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlDrawableProgress:I

    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_3

    new-instance v5, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO;

    invoke-direct {v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO;-><init>()V

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    invoke-virtual {v5, v6}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;->OooO00o(I)V

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO:Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0o;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSizeTitle:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSizeTitle:I

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSizeTime:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    sget v6, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSizeTime:I

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {v7}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/util/OooO0O0;->OooO00o(F)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlPrimaryColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlPrimaryColor:I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0O0(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    :cond_6
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlAccentColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_7

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlAccentColor:I

    invoke-virtual {v4, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    :cond_7
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextPulling:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextPulling:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0o:Ljava/lang/String;

    goto :goto_2

    :cond_8
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_pulling:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0o:Ljava/lang/String;

    :goto_2
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextLoading:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_9

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextLoading:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO0:Ljava/lang/String;

    goto :goto_3

    :cond_9
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_loading:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO0:Ljava/lang/String;

    :goto_3
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextRelease:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextRelease:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO:Ljava/lang/String;

    goto :goto_4

    :cond_a
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_release:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO:Ljava/lang/String;

    :goto_4
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextFinish:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_b

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextFinish:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoOO:Ljava/lang/String;

    goto :goto_5

    :cond_b
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_finish:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoOO:Ljava/lang/String;

    :goto_5
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextFailed:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_c

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextFailed:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_6

    :cond_c
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_failed:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    :goto_6
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSecondary:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_d

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextSecondary:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo:Ljava/lang/String;

    goto :goto_7

    :cond_d
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_secondary:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo:Ljava/lang/String;

    :goto_7
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextRefreshing:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_e

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextRefreshing:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo:Ljava/lang/String;

    goto :goto_8

    :cond_e
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_refreshing:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo:Ljava/lang/String;

    :goto_8
    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextUpdate:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_f

    sget v5, Lcom/cloud/tmc/miniapp/R$styleable;->MiniClassicsHeader_srlTextUpdate:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo0:Ljava/lang/String;

    goto :goto_9

    :cond_f
    sget v5, Lcom/cloud/tmc/miniapp/R$string;->srl_header_update:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo0:Ljava/lang/String;

    :goto_9
    new-instance v5, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo0:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v5, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo00:Ljava/text/DateFormat;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    const/16 v4, 0x8

    if-eqz p2, :cond_10

    move p2, v0

    goto :goto_a

    :cond_10
    move p2, v4

    :goto_a
    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o0:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz v2, :cond_11

    goto :goto_b

    :cond_11
    move v0, v4

    :goto_b
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo:Ljava/lang/String;

    goto :goto_c

    :cond_12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0o:Ljava/lang/String;

    :goto_c
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    :cond_13
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    instance-of p2, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p2, :cond_14

    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->y0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_14

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO00o(Ljava/util/Date;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo0:Ljava/lang/String;

    :try_start_1
    const-class p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {p2}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    const-string v0, "miniLauncherGlobal"

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo0:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    goto :goto_e

    :catchall_1
    move-exception p1

    goto :goto_f

    :cond_15
    :goto_e
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO00o(Ljava/util/Date;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_10

    :goto_f
    const-string p2, "MiniClassicsHeader"

    invoke-static {p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I
    .locals 2
    .param p1    # Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoOO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO00o(Ljava/util/Date;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    :cond_0
    if-eqz p2, :cond_1

    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Z)I

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0o:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    instance-of v0, p2, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_2

    check-cast p2, Landroid/graphics/drawable/Animatable;

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_3
    :goto_0
    new-instance p2, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/a;

    invoke-direct {p2, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/a;-><init>(Landroid/view/View;)V

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    add-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooOOO0:I

    return p1
.end method

.method public OooO00o(Ljava/util/Date;)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;
    .locals 7

    :try_start_0
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo:Ljava/util/Date;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo00:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "miniLauncherGlobal"

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOo0:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/cloud/tmc/kernel/proxy/storage/KVStorageProxy;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "MiniClassicsHeader"

    const-string v1, "setLastUpdateTime: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p0
.end method

.method public bridge synthetic OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    move-result-object p1

    return-object p1
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/api/OooOOO;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/constant/MiniRefreshState;)V
    .locals 3
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

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    sget-object v0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0$OooO00o;->OooO00o:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    if-eqz p1, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoo:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :pswitch_2
    const-wide/16 p2, 0x64

    :try_start_0
    invoke-static {p2, p3}, Lcom/cloud/tmc/miniutils/util/VibrateUtils;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string p3, "MiniRefreshHeader"

    const-string v0, "ReleaseToRefresh vibrate failed!"

    invoke-static {p3, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOoO:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x43340000    # 180.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :pswitch_3
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :pswitch_4
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0o:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :pswitch_5
    iget-boolean p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0:Z

    if-eqz p3, :cond_2

    move v2, v0

    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO0Oo:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0o:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOo0O:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public OooO00o(ZFIII)V
    .locals 0

    iget p1, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOooO:I

    if-lt p3, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public OooO0OO(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;->OooOOoo:Landroid/widget/TextView;

    const v1, 0xffffff

    and-int/2addr v1, p1

    const/high16 v2, -0x34000000    # -3.3554432E7f

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;->OooO00o(I)Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/internal/OooO0OO;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/miniapp/widget/pulldownrefresh/header/OooO0O0;

    return-object p1
.end method
