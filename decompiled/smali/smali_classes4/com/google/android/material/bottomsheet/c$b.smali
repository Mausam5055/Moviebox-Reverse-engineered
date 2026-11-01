.class Lcom/google/android/material/bottomsheet/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/c;->p(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/c;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/c$b;->a:Lcom/google/android/material/bottomsheet/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/c$b;->a:Lcom/google/android/material/bottomsheet/c;

    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/c;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/c$b;->a:Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/c;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/c$b;->a:Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/c;->cancel()V

    :cond_0
    return-void
.end method
