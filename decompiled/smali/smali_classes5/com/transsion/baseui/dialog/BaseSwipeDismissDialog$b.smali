.class final Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$b;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const-string p1, "e2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$b;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-static {p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->A0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$b;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-virtual {p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->X0()Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->d()F

    move-result p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$b;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-static {p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->x0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
