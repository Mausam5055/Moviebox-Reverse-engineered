.class public final synthetic Landroidx/compose/ui/scrollcapture/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/t1;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/t1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/scrollcapture/d;->a:Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/scrollcapture/d;->a:Lkotlinx/coroutines/t1;

    invoke-static {v0}, Landroidx/compose/ui/scrollcapture/ComposeScrollCaptureCallback_androidKt;->a(Lkotlinx/coroutines/t1;)V

    return-void
.end method
