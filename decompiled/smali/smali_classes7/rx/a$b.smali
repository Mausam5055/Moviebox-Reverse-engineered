.class public final Lrx/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;-><init>(Landroid/content/Context;Lrx/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c;

.field final synthetic b:Lrx/a;


# direct methods
.method constructor <init>(Lrx/c;Lrx/a;)V
    .locals 0

    iput-object p1, p0, Lrx/a$b;->a:Lrx/c;

    iput-object p2, p0, Lrx/a$b;->b:Lrx/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lrx/a;)V
    .locals 0

    invoke-static {p0}, Lrx/a$b;->b(Lrx/a;)V

    return-void
.end method

.method private static final b(Lrx/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lrx/a;->c(Lrx/a;Z)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lrx/a$b;->a:Lrx/c;

    invoke-interface {v0, p1}, Lrx/c;->onScale(Landroid/view/ScaleGestureDetector;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lrx/a$b;->b:Lrx/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lrx/a;->c(Lrx/a;Z)V

    iget-object p1, p0, Lrx/a$b;->b:Lrx/a;

    invoke-static {p1}, Lrx/a;->a(Lrx/a;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lrx/a$b;->b:Lrx/a;

    invoke-static {p1}, Lrx/a;->a(Lrx/a;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lrx/a$b;->b:Lrx/a;

    invoke-static {p1}, Lrx/a;->a(Lrx/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lrx/a$b;->b:Lrx/a;

    new-instance v1, Lrx/b;

    invoke-direct {v1, v0}, Lrx/b;-><init>(Lrx/a;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
