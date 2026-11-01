.class public final Lcom/tn/lib/view/ToolBarCheckInAnimationView;
.super Lcom/tn/lib/view/CheckInAnimationView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000cR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/tn/lib/view/ToolBarCheckInAnimationView;",
        "Lcom/tn/lib/view/CheckInAnimationView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "res",
        "",
        "a",
        "(I)V",
        "initView",
        "()V",
        "state",
        "upDateState",
        "Landroid/widget/TextView;",
        "e",
        "Landroid/widget/TextView;",
        "tvTitle",
        "Landroid/widget/ImageView;",
        "f",
        "Landroid/widget/ImageView;",
        "ivLoading",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "g",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "rootView",
        "UI_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/tn/lib/view/CheckInAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_0
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$layout;->tool_bar_view_check_in_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/tn/lib/widget/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    sget v0, Lcom/tn/lib/widget/R$id;->ivLoading:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    sget v0, Lcom/tn/lib/widget/R$id;->rootView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget-object v0, Lak/x;->a:Lak/x;

    invoke-virtual {v0}, Lak/x;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/tn/lib/widget/R$mipmap;->loading_green_dark:I

    invoke-direct {p0, v0}, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->a(I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/tn/lib/widget/R$mipmap;->loading_green_light:I

    invoke-direct {p0, v0}, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->a(I)V

    :goto_0
    return-void
.end method

.method public upDateState(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tn/lib/view/CheckInAnimationView;->setCurrentState(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_3

    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    sget p1, Lcom/tn/lib/widget/R$mipmap;->loading_3_gray:I

    invoke-direct {p0, p1}, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->a(I)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$string;->Joined:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->text_08:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_13

    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_4:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_c

    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_c
    sget-object p1, Lak/x;->a:Lak/x;

    invoke-virtual {p1}, Lak/x;->a()Z

    move-result p1

    if-eqz p1, :cond_d

    sget p1, Lcom/tn/lib/widget/R$mipmap;->loading_green_dark:I

    invoke-direct {p0, p1}, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->a(I)V

    goto :goto_0

    :cond_d
    sget p1, Lcom/tn/lib/widget/R$mipmap;->loading_green_light:I

    invoke-direct {p0, p1}, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->a(I)V

    goto :goto_0

    :cond_e
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$string;->Join:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->brand:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_11
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_12

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    iget-object p1, p0, Lcom/tn/lib/view/ToolBarCheckInAnimationView;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_13

    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_13
    :goto_0
    return-void
.end method
