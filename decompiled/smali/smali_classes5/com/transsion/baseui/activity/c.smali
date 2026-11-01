.class public final synthetic Lcom/transsion/baseui/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/transsion/baseui/activity/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/transsion/baseui/activity/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baseui/activity/c;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/baseui/activity/c;->b:Lcom/transsion/baseui/activity/BaseActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baseui/activity/c;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/baseui/activity/c;->b:Lcom/transsion/baseui/activity/BaseActivity;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/baseui/activity/BaseActivity;->a0(Landroid/view/View;Lcom/transsion/baseui/activity/BaseActivity;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
