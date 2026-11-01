.class public final Lcom/transsion/postdetail/ui/view/AdCountDownView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/AdCountDownView;",
        "Landroid/widget/LinearLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "time",
        "",
        "refreshCountDown",
        "(I)V",
        "Lso/q0;",
        "a",
        "Lso/q0;",
        "getBind",
        "()Lso/q0;",
        "setBind",
        "(Lso/q0;)V",
        "bind",
        "PostDetail_psRelease"
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
.field private a:Lso/q0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ui/view/AdCountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/postdetail/ui/view/AdCountDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/postdetail/R$layout;->view_ad_count_down_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lso/q0;->a(Landroid/view/View;)Lso/q0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    return-void
.end method


# virtual methods
.method public final getBind()Lso/q0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    return-object v0
.end method

.method public final refreshCountDown(I)V
    .locals 4

    const-class v0, Lcom/transsion/memberapi/IMemberApi;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-gez p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/memberapi/IMemberApi;->B()Z

    move-result v2

    :cond_0
    if-eqz v2, :cond_2

    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lso/q0;->f:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lso/q0;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/postdetail/R$string;->post_count_down_get_ad_free:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lso/q0;->c:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lso/q0;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_4
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/transsion/memberapi/IMemberApi;->B()Z

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lso/q0;->f:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lso/q0;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/postdetail/R$string;->post_count_down_get_ad_free:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lso/q0;->f:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lso/q0;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lso/q0;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lso/q0;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public final setBind(Lso/q0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/AdCountDownView;->a:Lso/q0;

    return-void
.end method
