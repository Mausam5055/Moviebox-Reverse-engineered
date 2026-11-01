.class public final synthetic Landroidx/transition/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/os/e$a;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Landroidx/transition/j;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Landroidx/transition/j;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/d;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Landroidx/transition/d;->b:Landroidx/transition/j;

    iput-object p3, p0, Landroidx/transition/d;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    iget-object v0, p0, Landroidx/transition/d;->a:Ljava/lang/Runnable;

    iget-object v1, p0, Landroidx/transition/d;->b:Landroidx/transition/j;

    iget-object v2, p0, Landroidx/transition/d;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Landroidx/transition/e;->v(Ljava/lang/Runnable;Landroidx/transition/j;Ljava/lang/Runnable;)V

    return-void
.end method
