.class public final Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->B(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "e"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    iget-object v1, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getScreenWidth$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$setLongPressTriggered$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;Z)V

    const-string v3, ", cut="

    if-ltz v2, :cond_0

    if-gt v2, v1, :cond_0

    sget-object v4, Llg/a;->a:Llg/a$a;

    iget-object v5, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v5}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getTAG$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5de6\u8fb9\u957f\u6309\uff0cclickX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v4, v1, 0x2

    if-le v2, v4, :cond_1

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getTAG$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53f3\u8fb9\u957f\u6309\uff0cclickX="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v11, Llg/a;->a:Llg/a$a;

    iget-object v4, v0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v4}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$getTAG$p(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)Ljava/lang/String;

    move-result-object v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e2d\u95f4\u957f\u6309\uff0cclickX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/view/ImmVideoItemView$c;->a:Lcom/transsion/postdetail/ui/view/ImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/view/ImmVideoItemView;->access$onSingleClick(Lcom/transsion/postdetail/ui/view/ImmVideoItemView;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
