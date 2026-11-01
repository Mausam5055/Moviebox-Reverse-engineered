.class public final Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$e;
.super Landroidx/recyclerview/widget/RecyclerView$w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->o1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$e;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$e;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v0}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->z0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/MotionEvent;ZZZ)Z

    move-result p1

    return p1
.end method
