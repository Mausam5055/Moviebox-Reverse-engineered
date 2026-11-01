.class public abstract Lcom/bytedance/sdk/openadsdk/core/sP/HiB;
.super Lcom/bytedance/sdk/openadsdk/core/sP/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected abstract Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;IIIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;IIIZ)V"
        }
    .end annotation
.end method

.method public Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;Z)V"
        }
    .end annotation

    move-object v11, p0

    move-object v12, p1

    move/from16 v13, p7

    invoke-virtual {p0, p1, v13}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v7, v11, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Yf:I

    iget v8, v11, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ley:I

    iget v9, v11, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LqL:I

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lcom/bytedance/sdk/openadsdk/core/sP/HiB;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;IIIZ)V

    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    return-void
.end method
