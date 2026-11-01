.class public final Lcom/vungle/ads/internal/task/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/task/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeAndroidThreadPriority(Lcom/vungle/ads/internal/task/c;)I
    .locals 1

    const-string v0, "jobInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/task/c;->getPriority()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    const/16 v0, 0x13

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method
