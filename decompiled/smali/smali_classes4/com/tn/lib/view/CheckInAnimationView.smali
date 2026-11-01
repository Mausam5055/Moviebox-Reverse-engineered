.class public Lcom/tn/lib/view/CheckInAnimationView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tn/lib/view/CheckInAnimationView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000 !2\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\"\u0010 \u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/tn/lib/view/CheckInAnimationView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "initView",
        "()V",
        "",
        "state",
        "upDateState",
        "(I)V",
        "Landroid/widget/TextView;",
        "a",
        "Landroid/widget/TextView;",
        "tvTitle",
        "Landroid/widget/ImageView;",
        "b",
        "Landroid/widget/ImageView;",
        "ivLoading",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "c",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "rootView",
        "d",
        "I",
        "getCurrentState",
        "()I",
        "setCurrentState",
        "currentState",
        "Companion",
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


# static fields
.field public static final BUTTON_STATE_EXIT_ING:I = 0x4

.field public static final BUTTON_STATE_JOINED:I = 0x3

.field public static final BUTTON_STATE_JOIN_ING:I = 0x2

.field public static final BUTTON_STATE_NOT_TO_JOIN:I = 0x1

.field public static final Companion:Lcom/tn/lib/view/CheckInAnimationView$a;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tn/lib/view/CheckInAnimationView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tn/lib/view/CheckInAnimationView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tn/lib/view/CheckInAnimationView;->Companion:Lcom/tn/lib/view/CheckInAnimationView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->d:I

    invoke-virtual {p0}, Lcom/tn/lib/view/CheckInAnimationView;->initView()V

    return-void
.end method


# virtual methods
.method public final getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->d:I

    return v0
.end method

.method public initView()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$layout;->view_check_in_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/tn/lib/widget/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    sget v0, Lcom/tn/lib/widget/R$id;->ivLoading:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    sget v0, Lcom/tn/lib/widget/R$id;->rootView:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$mipmap;->loading_1_whit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v2, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_1
    return-void
.end method

.method public final setCurrentState(I)V
    .locals 0

    iput p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->d:I

    return-void
.end method

.method public upDateState(I)V
    .locals 3

    iput p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_10

    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$string;->Joined:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_10

    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_10

    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$string;->Join:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    iget-object p1, p0, Lcom/tn/lib/view/CheckInAnimationView;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_10

    sget v0, Lcom/tn/lib/widget/R$drawable;->libui_join_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_10
    :goto_0
    return-void
.end method
