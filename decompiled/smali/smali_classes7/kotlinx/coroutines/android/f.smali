.class public final synthetic Lkotlinx/coroutines/android/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/n;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/android/f;->a:Lkotlinx/coroutines/n;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/android/f;->a:Lkotlinx/coroutines/n;

    invoke-static {v0, p1, p2}, Lkotlinx/coroutines/android/g;->a(Lkotlinx/coroutines/n;J)V

    return-void
.end method
