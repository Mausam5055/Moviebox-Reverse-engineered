.class public final Lcom/cloud/tmc/miniapp/utils/toast/config/IToast$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static findIconView(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1

    :cond_1
    return-object p0
.end method

.method public static findMessageView(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Landroid/view/View;)Landroid/widget/TextView;
    .locals 2

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroid/widget/TextView;

    const v0, 0x102000b

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p0, v0, :cond_1

    :goto_0
    check-cast p1, Landroid/widget/TextView;

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must set the ID value of TextView to android.R.id.message"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    check-cast p0, Landroid/widget/TextView;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must include a TextView with an ID value of android.R.id.message"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
