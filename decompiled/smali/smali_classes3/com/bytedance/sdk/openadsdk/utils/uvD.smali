.class public Lcom/bytedance/sdk/openadsdk/utils/uvD;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;
    }
.end annotation


# direct methods
.method public static Sj([BI)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    array-length v0, p0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj;IILcom/bytedance/sdk/openadsdk/utils/uvD$Sj;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj;IILcom/bytedance/sdk/openadsdk/utils/uvD$Sj;Ljava/lang/String;I)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj;IILcom/bytedance/sdk/openadsdk/utils/uvD$Sj;Ljava/lang/String;I)V
    .locals 10

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->TKC()Lcom/bytedance/sdk/openadsdk/TzV/Sj/TKC;

    move-result-object v1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/utils/uvD$1;

    invoke-direct {v3, p3}, Lcom/bytedance/sdk/openadsdk/utils/uvD$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;)V

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v9, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj;Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method
