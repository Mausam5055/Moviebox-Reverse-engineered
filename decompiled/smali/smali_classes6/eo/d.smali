.class public final synthetic Leo/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Leo/e;


# direct methods
.method public synthetic constructor <init>(Leo/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leo/d;->a:Leo/e;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Leo/d;->a:Leo/e;

    invoke-static {v0, p1, p2}, Leo/e;->a(Leo/e;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
