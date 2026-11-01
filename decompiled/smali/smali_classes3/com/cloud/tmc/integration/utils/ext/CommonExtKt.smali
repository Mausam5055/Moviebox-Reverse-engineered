.class public final Lcom/cloud/tmc/integration/utils/ext/CommonExtKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0001\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\t\u001a\u00020\u0001\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0001\u001a\u0012\u0010\u0006\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0001\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005\"\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0004\"\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "dp2px",
        "",
        "",
        "getDp2px",
        "(F)I",
        "(I)I",
        "px2dp",
        "getPx2dp",
        "Landroid/content/Context;",
        "dp",
        "Landroid/view/View;",
        "px",
        "com.cloud.tmc.integration"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final dp2px(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, p1

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result p0

    return p0
.end method

.method public static final dp2px(Landroid/view/View;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, p1

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result p0

    return p0
.end method

.method public static final getDp2px(F)I
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result p0

    return p0
.end method

.method public static final getDp2px(I)I
    .locals 0

    int-to-float p0, p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    move-result p0

    return p0
.end method

.method public static final getPx2dp(F)I
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->px2dp(F)I

    move-result p0

    return p0
.end method

.method public static final getPx2dp(I)I
    .locals 0

    int-to-float p0, p0

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->px2dp(F)I

    move-result p0

    return p0
.end method

.method public static final px2dp(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, p1

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->px2dp(F)I

    move-result p0

    return p0
.end method

.method public static final px2dp(Landroid/view/View;I)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, p1

    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->px2dp(F)I

    move-result p0

    return p0
.end method
