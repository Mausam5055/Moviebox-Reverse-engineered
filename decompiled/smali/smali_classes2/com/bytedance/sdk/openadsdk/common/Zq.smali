.class public Lcom/bytedance/sdk/openadsdk/common/Zq;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;
    }
.end annotation


# instance fields
.field private EjP:Landroid/content/Context;

.field private HiB:Ljava/lang/String;

.field private final Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

.field private Sj:Landroid/view/View;

.field private TKC:Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private vS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/common/Zq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/Zq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->vS:Z

    new-instance p3, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;-><init>()V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/common/Zq;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->EjP:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->EjP()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->HiB()V

    return-void
.end method

.method private EjP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/TEQ$sP;)V

    return-void
.end method

.method private HiB()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->nru()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/common/Zq;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    return-object p0
.end method

.method private Sj(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/Zq$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/Zq$1;-><init>(Lcom/bytedance/sdk/openadsdk/common/Zq;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "#80000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/TKC/uA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/TKC/uA;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj:Landroid/view/View;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->HiB()V

    return-void
.end method

.method private vS()Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/Zq$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/Zq$2;-><init>(Lcom/bytedance/sdk/openadsdk/common/Zq;)V

    return-object v0
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->vS:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->TKC:Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;->Sj(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public Sj(I)V
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sP:I

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sP()Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->TKC:Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->sP()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC:I

    if-ne v0, p1, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->sP()V

    return-void

    :cond_4
    sget v0, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->HiB:I

    if-ne v0, p1, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->TKC()V

    :cond_5
    return-void
.end method

.method public TKC()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->EjP:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/TKC/aa;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->EjP:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TKC/aa;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TKC/TEQ;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/Zq;->vS()Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->SP()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->HiB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->Sj(Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->show()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->Sj()V

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->vS:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->TKC:Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;->sP(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->TKC:Lcom/bytedance/sdk/openadsdk/common/Zq$Sj;

    return-void
.end method

.method public setDislikeSource(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->HiB:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq;->Jcg:Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->sP(Ljava/lang/String;)V

    return-void
.end method
