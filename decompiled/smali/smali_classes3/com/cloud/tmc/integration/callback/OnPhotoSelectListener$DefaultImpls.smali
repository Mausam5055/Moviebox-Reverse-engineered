.class public final Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onCancel(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 0

    return-void
.end method

.method public static onDialogClickCancel(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 0

    return-void
.end method

.method public static onSelected(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const-string p2, "data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onSelected(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic onSelected$default(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onSelected"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
