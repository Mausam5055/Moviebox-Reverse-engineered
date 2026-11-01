.class public final Lcom/cloud/tmc/miniapp/widget/OooO0O0;
.super Landroidx/recyclerview/widget/RecyclerView$l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/widget/OooO0O0$OooO00o;
    }
.end annotation


# instance fields
.field public OooO00o:I

.field public OooO0O0:I

.field public OooO0OO:Z

.field public OooO0Oo:Z

.field public OooO0o:Landroid/graphics/Paint;

.field public OooO0o0:I

.field public OooO0oO:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    const-string v0, "#cccccc"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o:I

    return-void
.end method


# virtual methods
.method public final OooO00o(II)Z
    .locals 1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    rem-int/2addr p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final OooO00o(III)Z
    .locals 1

    div-int/2addr p1, p3

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    div-int/2addr p2, p3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 4

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_2

    iget-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0Oo:Z

    if-nez p4, :cond_0

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-eq p4, v2, :cond_1

    :cond_0
    iget p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    invoke-virtual {p1, v1, v1, v1, p4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    iget-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0OO:Z

    if-eqz p4, :cond_9

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_9

    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    invoke-virtual {p1, v1, p2, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_2
    if-ne p4, v0, :cond_5

    iget-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0Oo:Z

    if-nez p4, :cond_3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-eq p4, v2, :cond_4

    :cond_3
    iget p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    invoke-virtual {p1, v1, v1, p4, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    iget-boolean p4, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0OO:Z

    if-eqz p4, :cond_9

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_9

    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    invoke-virtual {p1, p2, v1, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    if-ne p4, v2, :cond_9

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    move-result p4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v3, v2, p4}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(III)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v3, p4}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(II)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_6
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0, v3, v2, p4}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(III)Z

    move-result v2

    if-eqz v2, :cond_7

    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    invoke-virtual {p1, v1, v1, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_7
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p2

    add-int/2addr p2, v0

    rem-int/2addr p2, p4

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    invoke-virtual {p1, v1, v1, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_8
    iget p2, p0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$y;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "c"

    move-object/from16 v9, p1

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "parent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "state"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o0:I

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    if-eq v2, v10, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->U()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v13

    :goto_1
    if-ge v11, v2, :cond_b

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    div-int/2addr v4, v10

    add-int v15, v4, v3

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    div-int/2addr v4, v10

    add-int v8, v4, v3

    invoke-virtual {v0, v11, v13, v12}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(III)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v4, v3

    int-to-float v7, v8

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v3

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    add-int/2addr v3, v5

    int-to-float v6, v3

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move-object/from16 v16, v5

    move v5, v7

    move v10, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    move v10, v8

    :goto_2
    invoke-virtual {v0, v11, v13, v12}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(III)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v11, v12}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(II)Z

    move-result v3

    if-nez v3, :cond_3

    int-to-float v6, v15

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v7, v3

    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v11, v12}, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO00o(II)Z

    move-result v3

    if-nez v3, :cond_4

    int-to-float v6, v15

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v5, v3

    int-to-float v7, v10

    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x2

    goto :goto_1

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0OO:Z

    if-eqz v3, :cond_6

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v6, v3

    int-to-float v5, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v7, v3

    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    move v10, v11

    :goto_4
    if-ge v10, v2, :cond_b

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0Oo:Z

    if-nez v3, :cond_7

    add-int/lit8 v3, v2, -0x1

    if-eq v10, v3, :cond_b

    :cond_7
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    add-int/2addr v4, v3

    int-to-float v6, v4

    int-to-float v5, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v7, v3

    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0OO:Z

    if-eqz v3, :cond_9

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v4, v11

    int-to-float v7, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_9
    move v10, v11

    :goto_5
    if-ge v10, v2, :cond_b

    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0Oo:Z

    if-nez v3, :cond_a

    add-int/lit8 v3, v2, -0x1

    if-eq v10, v3, :cond_b

    :cond_a
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0O0:I

    const/4 v12, 0x2

    div-int/2addr v4, v12

    add-int/2addr v4, v3

    int-to-float v5, v11

    int-to-float v7, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v6, v3

    iget-object v8, v0, Lcom/cloud/tmc/miniapp/widget/OooO0O0;->OooO0o:Landroid/graphics/Paint;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    move v4, v5

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    :goto_6
    return-void
.end method
