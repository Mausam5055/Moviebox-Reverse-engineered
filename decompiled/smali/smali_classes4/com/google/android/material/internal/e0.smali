.class public final synthetic Lcom/google/android/material/internal/e0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/e0;->a:Landroid/view/View;

    iput-boolean p2, p0, Lcom/google/android/material/internal/e0;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/e0;->a:Landroid/view/View;

    iget-boolean v1, p0, Lcom/google/android/material/internal/e0;->b:Z

    invoke-static {v0, v1}, Lcom/google/android/material/internal/f0;->a(Landroid/view/View;Z)V

    return-void
.end method
