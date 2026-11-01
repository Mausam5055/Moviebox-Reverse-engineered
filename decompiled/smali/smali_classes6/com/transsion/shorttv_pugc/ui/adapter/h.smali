.class public final Lcom/transsion/shorttv_pugc/ui/adapter/h;
.super Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter<",
        "Lcom/transsion/shorttv_pugc/bean/DubsInfo;",
        "Lms/e;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/adapter/h;",
        "Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter;",
        "Lcom/transsion/shorttv_pugc/bean/DubsInfo;",
        "Lms/e;",
        "<init>",
        "()V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "parent",
        "H1",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lms/e;",
        "binding",
        "item",
        "",
        "I1",
        "(Lms/e;Lcom/transsion/shorttv_pugc/bean/DubsInfo;)V",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/shorttv_pugc/base/adapter/BaseBindingQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/h;->H1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lms/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic F1(Lg4/a;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lms/e;

    check-cast p2, Lcom/transsion/shorttv_pugc/bean/DubsInfo;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/h;->I1(Lms/e;Lcom/transsion/shorttv_pugc/bean/DubsInfo;)V

    return-void
.end method

.method public H1(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lms/e;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lms/e;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lms/e;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public I1(Lms/e;Lcom/transsion/shorttv_pugc/bean/DubsInfo;)V
    .locals 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lms/e;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/DubsInfo;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p1, Lms/e;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/DubsInfo;->getLanName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lms/e;->d:Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/DubsInfo;->getLanName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lms/e;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/DubsInfo;->isSelected()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lms/e;->d:Lcom/transsion/shorttv_pugc/base/widget/ShortTvGradientTextView;

    const-string v0, "tvNameSelected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/bean/DubsInfo;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
