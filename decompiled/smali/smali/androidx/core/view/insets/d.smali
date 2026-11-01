.class public final synthetic Landroidx/core/view/insets/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/insets/f;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/insets/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/d;->a:Landroidx/core/view/insets/f;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/d;->a:Landroidx/core/view/insets/f;

    invoke-static {v0, p1, p2}, Landroidx/core/view/insets/f;->b(Landroidx/core/view/insets/f;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
