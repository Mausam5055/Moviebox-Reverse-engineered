.class public Lcom/hisavana/mediation/ad/TStoreMarkView;
.super Landroid/widget/FrameLayout;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hisavana/mediation/ad/TStoreMarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hisavana/mediation/ad/TStoreMarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-eqz p2, :cond_1

    sget-object p3, Lcom/hisavana/mediation/R$styleable;->TStoreMarkView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/hisavana/mediation/R$styleable;->TStoreMarkView_sdkTypeSetStoreMark:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/hisavana/mediation/ad/TStoreMarkView;->a:I

    sget p2, Lcom/hisavana/mediation/R$styleable;->TStoreMarkView_storeTextColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/hisavana/mediation/ad/TStoreMarkView;->c:I

    sget p2, Lcom/hisavana/mediation/R$styleable;->TStoreMarkView_storeTextSize:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/h;->h(F)I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/hisavana/mediation/ad/TStoreMarkView;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getSdkTypeSetStoreMark()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/ad/TStoreMarkView;->a:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/ad/TStoreMarkView;->c:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    iget v0, p0, Lcom/hisavana/mediation/ad/TStoreMarkView;->b:I

    return v0
.end method
