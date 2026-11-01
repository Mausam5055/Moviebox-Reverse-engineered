.class public final Lcom/vungle/ads/internal/task/ResendTpatJob$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/task/ResendTpatJob;
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

    invoke-direct {p0}, Lcom/vungle/ads/internal/task/ResendTpatJob$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final makeJobInfo()Lcom/vungle/ads/internal/task/c;
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/task/c;

    const-string v1, "ResendTpatJob"

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/task/c;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/task/c;->setPriority(I)Lcom/vungle/ads/internal/task/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/task/c;->setUpdateCurrent(Z)Lcom/vungle/ads/internal/task/c;

    move-result-object v0

    return-object v0
.end method
