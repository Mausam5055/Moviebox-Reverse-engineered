.class public final Landroidx/window/layout/WindowInfoTrackerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/window/layout/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/WindowInfoTrackerImpl$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/window/layout/WindowInfoTrackerImpl$a;


# instance fields
.field private final b:Landroidx/window/layout/c0;

.field private final c:Landroidx/window/layout/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/WindowInfoTrackerImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/layout/WindowInfoTrackerImpl;->d:Landroidx/window/layout/WindowInfoTrackerImpl$a;

    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/c0;Landroidx/window/layout/v;)V
    .locals 1

    const-string v0, "windowMetricsCalculator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowBackend"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl;->b:Landroidx/window/layout/c0;

    iput-object p2, p0, Landroidx/window/layout/WindowInfoTrackerImpl;->c:Landroidx/window/layout/v;

    return-void
.end method

.method public static final synthetic b(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/v;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/WindowInfoTrackerImpl;->c:Landroidx/window/layout/v;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lkotlinx/coroutines/flow/b;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;-><init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/d;->s(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    return-object p1
.end method
