.class Lcom/google/android/material/navigation/b$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/b;->b(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/drawerlayout/widget/DrawerLayout;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/b$a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p2, p0, Lcom/google/android/material/navigation/b$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/material/navigation/b$a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/google/android/material/navigation/b$a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/google/android/material/navigation/b$a;->a:Landroidx/drawerlayout/widget/DrawerLayout;

    const/high16 v0, -0x67000000

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setScrimColor(I)V

    return-void
.end method
