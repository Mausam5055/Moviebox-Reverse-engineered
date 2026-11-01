.class public Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

.field private c:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

.field private d:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

.field private e:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/cloud/hisavana/sdk/R$layout;->ad_expand_menu_content_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->advertiser_info:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->a:Landroid/widget/TextView;

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->personalise:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->PERSONALISE_CLOSE:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;->setData(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->about:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->c:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->ADVERTISER_INFO:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;->setData(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    sget v0, Lcom/cloud/hisavana/sdk/R$id;->copy_link:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->d:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->COPY_LINK:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;->setData(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    return-void
.end method


# virtual methods
.method protected setAdvertiserName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListener(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V
    .locals 2

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->e:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->b:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$a;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$a;-><init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->c:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$b;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$b;-><init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;->d:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$c;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$c;-><init>(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
