.class Lxe/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxe/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxe/j;


# direct methods
.method constructor <init>(Lxe/j;)V
    .locals 0

    iput-object p1, p0, Lxe/j$a;->a:Lxe/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lxe/j$a;->a:Lxe/j;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lxe/r;

    invoke-static {v0, p1}, Lxe/j;->a(Lxe/j;Lxe/r;)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/google/zxing/client/android/R$id;->zxing_preview_failed:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lxe/j$a;->a:Lxe/j;

    invoke-static {p1}, Lxe/j;->b(Lxe/j;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
