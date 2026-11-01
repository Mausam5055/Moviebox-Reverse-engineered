.class public final synthetic Lck/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/s;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lck/s;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-static {v0, p1, p2}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->w0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
