.class public final Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/ClickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onClick(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[I)V
    .locals 3

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    invoke-interface {p0, v2}, Lcom/cloud/tmc/miniapp/action/ClickAction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .locals 2

    const-string p0, "views"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[I)V
    .locals 1

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-interface {p0, p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method public static varargs setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[Landroid/view/View;)V
    .locals 1

    const-string v0, "views"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    invoke-interface {p0, p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction;->setOnClickListener(Landroid/view/View$OnClickListener;[Landroid/view/View;)V

    return-void
.end method
