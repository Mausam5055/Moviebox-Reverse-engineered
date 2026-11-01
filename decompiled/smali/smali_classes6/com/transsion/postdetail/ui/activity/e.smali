.class public final synthetic Lcom/transsion/postdetail/ui/activity/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/activity/e;->a:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/activity/e;->a:Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;

    invoke-static {v0, p1, p2}, Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;->m0(Lcom/transsion/postdetail/ui/activity/PostFeedbackInputActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
