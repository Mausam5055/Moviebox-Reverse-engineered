.class public final Lgw/g;
.super Lcom/transsion/baseui/adapter/BaseItemBindingProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgw/g$a;
    }
.end annotation


# static fields
.field public static final h:Lgw/g$a;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgw/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgw/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgw/g;->h:Lgw/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/baseui/adapter/BaseItemBindingProvider;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lgw/g;->g:I

    return-void
.end method


# virtual methods
.method public A(Lfw/x0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/a;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "binding"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "helper"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "item"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p3, Ljw/a$e;

    if-eqz p2, :cond_0

    check-cast p3, Ljw/a$e;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Ljw/a$e;->a()Ljw/b;

    move-result-object p2

    iget-object p3, p1, Lfw/x0;->f:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {p2}, Ljw/b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljw/b;->a()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-static {p3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    sget-object p3, Lej/f;->a:Lej/f$a;

    iget-object v2, p1, Lfw/x0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object p3

    invoke-virtual {p2}, Ljw/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object p3

    sget v2, Lcom/transsion/usercenter/R$drawable;->ic_default_avatar:I

    invoke-virtual {p3, v2}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object p3

    iget-object v2, p1, Lfw/x0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    const-string v3, "userAvatar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p3, p1, Lfw/x0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    sget v2, Lcom/transsion/usercenter/R$drawable;->ic_default_avatar:I

    invoke-virtual {p3, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_2
    iget-object p3, p1, Lfw/x0;->b:Lcom/noober/background/view/BLTextView;

    invoke-virtual {p2}, Ljw/b;->i()Z

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p3, p1, Lfw/x0;->b:Lcom/noober/background/view/BLTextView;

    invoke-virtual {p2}, Ljw/b;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/transsion/usercenter/R$string;->user_center_device_management_pro:I

    goto :goto_3

    :cond_4
    sget v2, Lcom/transsion/usercenter/R$string;->user_center_device_management_basic:I

    :goto_3
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object p3, p1, Lfw/x0;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Ljw/b;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/transsion/baseui/R$mipmap;->ic_premium_avatar_pro:I

    goto :goto_4

    :cond_5
    sget v2, Lcom/transsion/baseui/R$mipmap;->ic_premium_avatar_basic:I

    :goto_4
    invoke-virtual {p3, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p3, p1, Lfw/x0;->g:Lcom/tn/lib/widget/TnTextView;

    const-string v2, "validUntil"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljw/b;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    :cond_6
    move v2, v1

    goto :goto_6

    :cond_7
    :goto_5
    move v2, v0

    :goto_6
    if-nez v2, :cond_8

    move v2, v1

    goto :goto_7

    :cond_8
    const/16 v2, 0x8

    :goto_7
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Lfw/x0;->g:Lcom/tn/lib/widget/TnTextView;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object p3

    sget v2, Lcom/transsion/usercenter/R$string;->user_center_device_management_valid_until:I

    invoke-virtual {p2}, Ljw/b;->e()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    const-string p2, ""

    :cond_9
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p3, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/x0;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lfw/x0;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfw/x0;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lgw/g;->g:I

    return v0
.end method

.method public bridge synthetic y(Lg4/a;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lfw/x0;

    check-cast p3, Ljw/a;

    invoke-virtual {p0, p1, p2, p3}, Lgw/g;->A(Lfw/x0;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljw/a;)V

    return-void
.end method

.method public bridge synthetic z(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lgw/g;->B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lfw/x0;

    move-result-object p1

    return-object p1
.end method
