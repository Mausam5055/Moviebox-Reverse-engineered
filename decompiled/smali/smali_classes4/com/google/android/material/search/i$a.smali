.class Lcom/google/android/material/search/i$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/search/i;->J(Lcom/google/android/material/search/SearchBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/search/i;


# direct methods
.method constructor <init>(Lcom/google/android/material/search/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/search/i$a;->a:Lcom/google/android/material/search/i;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/search/i$a;->a:Lcom/google/android/material/search/i;

    new-instance v0, Lcom/google/android/material/search/h;

    invoke-direct {v0}, Lcom/google/android/material/search/h;-><init>()V

    invoke-static {p1, v0}, Lcom/google/android/material/search/i;->d(Lcom/google/android/material/search/i;Lcom/google/android/material/search/i$g;)V

    return-void
.end method
