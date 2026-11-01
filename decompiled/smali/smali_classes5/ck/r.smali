.class public final synthetic Lck/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/r;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Lck/r;->a:Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;

    invoke-static {v0, p1, p2}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->q0(Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
