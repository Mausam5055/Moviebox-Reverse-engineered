.class Lcom/google/android/material/bottomsheet/c$e;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/c;
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

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/c$e;->a:Lcom/google/android/material/bottomsheet/c;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/c$e;->a:Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/c;->cancel()V

    :cond_0
    return-void
.end method
