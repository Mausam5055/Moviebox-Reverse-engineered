.class public final Lcom/cloud/hisavana/sdk/common/util/v;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/util/v$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/common/util/v$a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/util/v$a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$style;->HSDialogTheme:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->a:Lcom/cloud/hisavana/sdk/common/util/v$a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/hisavana/sdk/R$layout;->hs_confirm_dialog_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    sget p2, Lcom/cloud/hisavana/sdk/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->b:Landroid/widget/TextView;

    sget p2, Lcom/cloud/hisavana/sdk/R$id;->content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->c:Landroid/widget/TextView;

    sget p2, Lcom/cloud/hisavana/sdk/R$id;->positive:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->d:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/s;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/util/s;-><init>(Lcom/cloud/hisavana/sdk/common/util/v;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->negative:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->e:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/t;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/util/t;-><init>(Lcom/cloud/hisavana/sdk/common/util/v;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->separator_v:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->g:Landroid/view/View;

    sget p2, Lcom/cloud/hisavana/sdk/R$id;->confirm:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/v;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/cloud/hisavana/sdk/common/util/u;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/util/u;-><init>(Lcom/cloud/hisavana/sdk/common/util/v;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/util/v;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->e(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->f(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->d(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V

    return-void
.end method

.method private static final d(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->a:Lcom/cloud/hisavana/sdk/common/util/v$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cloud/hisavana/sdk/common/util/v$a;->b()V

    :cond_0
    return-void
.end method

.method private static final e(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->a:Lcom/cloud/hisavana/sdk/common/util/v$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cloud/hisavana/sdk/common/util/v$a;->a()V

    :cond_0
    return-void
.end method

.method private static final f(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->a:Lcom/cloud/hisavana/sdk/common/util/v$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/cloud/hisavana/sdk/common/util/v$a;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final j(Z)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->d:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->e:Landroid/widget/TextView;

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    if-eqz p1, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->g:Landroid/view/View;

    if-nez v0, :cond_6

    goto :goto_7

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const v0, 0x3f666666    # 0.9f

    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_1
    return-void
.end method
