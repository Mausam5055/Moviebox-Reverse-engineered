.class public final Lcom/transsion/baseui/widget/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/widget/f;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/widget/f;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/widget/f$b;->a:Lcom/transsion/baseui/widget/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/baseui/widget/f$b;->a:Lcom/transsion/baseui/widget/f;

    invoke-static {v0}, Lcom/transsion/baseui/widget/f;->b(Lcom/transsion/baseui/widget/f;)Lcom/transsion/baseui/widget/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/baseui/widget/f$a;->onDoubleTap(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/baseui/widget/f$b;->a:Lcom/transsion/baseui/widget/f;

    invoke-static {p1}, Lcom/transsion/baseui/widget/f;->b(Lcom/transsion/baseui/widget/f;)Lcom/transsion/baseui/widget/f$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/baseui/widget/f$a;->a()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
