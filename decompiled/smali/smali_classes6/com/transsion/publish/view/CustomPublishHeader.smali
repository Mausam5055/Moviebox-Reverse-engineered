.class public final Lcom/transsion/publish/view/CustomPublishHeader;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000e\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u0015\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/publish/view/CustomPublishHeader;",
        "Landroid/widget/RelativeLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "title",
        "",
        "setTitle",
        "(Ljava/lang/String;)V",
        "ivCover",
        "setHeader",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/view/View$OnClickListener;",
        "click",
        "setOnBackClick",
        "(Landroid/view/View$OnClickListener;)V",
        "setOnEditClick",
        "onSearchClick",
        "",
        "enable",
        "setPostEnable",
        "(Z)V",
        "Landroid/widget/ImageView;",
        "a",
        "Landroid/widget/ImageView;",
        "iBack",
        "Lcom/tn/lib/widget/TnTextView;",
        "b",
        "Lcom/tn/lib/widget/TnTextView;",
        "vTitle",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "c",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "vEdit",
        "Lcom/google/android/material/imageview/ShapeableImageView;",
        "d",
        "Lcom/google/android/material/imageview/ShapeableImageView;",
        "iCover",
        "Publish_psRelease"
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
.field private final a:Landroid/widget/ImageView;

.field private final b:Lcom/tn/lib/widget/TnTextView;

.field private final c:Landroidx/appcompat/widget/AppCompatTextView;

.field private final d:Lcom/google/android/material/imageview/ShapeableImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/publish/R$layout;->publish_layout_header:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lcom/transsion/publish/R$id;->iv_back:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/publish/view/CustomPublishHeader;->a:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/publish/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/tn/lib/widget/TnTextView;

    iput-object p1, p0, Lcom/transsion/publish/view/CustomPublishHeader;->b:Lcom/tn/lib/widget/TnTextView;

    sget p1, Lcom/transsion/publish/R$id;->tv_publish:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/transsion/publish/view/CustomPublishHeader;->c:Landroidx/appcompat/widget/AppCompatTextView;

    sget p1, Lcom/transsion/publish/R$id;->iv_title_image:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/google/android/material/imageview/ShapeableImageView;

    iput-object p1, p0, Lcom/transsion/publish/view/CustomPublishHeader;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    return-void
.end method


# virtual methods
.method public final onSearchClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/publish/view/CustomPublishHeader;->b:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/publish/view/CustomPublishHeader;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lej/f;->a:Lej/f$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/publish/view/CustomPublishHeader;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p1, p2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public final setOnBackClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/view/CustomPublishHeader;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnEditClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/view/CustomPublishHeader;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setPostEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/view/CustomPublishHeader;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/view/CustomPublishHeader;->b:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
