.class public final Lcom/vungle/ads/internal/network/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/internal/network/d$a;-><init>()V

    return-void
.end method

.method public static final synthetic access$throwIfFatal(Lcom/vungle/ads/internal/network/d$a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/network/d$a;->throwIfFatal(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final throwIfFatal(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/LinkageError;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw p1

    :cond_1
    throw p1

    :cond_2
    throw p1
.end method
