.class public final synthetic Lcom/transsion/baseui/widget/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/widget/f;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/widget/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/widget/e;->a:Lcom/transsion/baseui/widget/f;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/baseui/widget/e;->a:Lcom/transsion/baseui/widget/f;

    invoke-static {v0, p1, p2}, Lcom/transsion/baseui/widget/f;->a(Lcom/transsion/baseui/widget/f;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
