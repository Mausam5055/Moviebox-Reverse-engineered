.class public final Lcom/vungle/ads/internal/task/CleanupJob$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/task/CleanupJob;
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

    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob$a;-><init>()V

    return-void
.end method

.method public static synthetic makeJobInfo$default(Lcom/vungle/ads/internal/task/CleanupJob$a;Ljava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/task/c;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/task/CleanupJob$a;->makeJobInfo(Ljava/lang/String;)Lcom/vungle/ads/internal/task/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final makeJobInfo(Ljava/lang/String;)Lcom/vungle/ads/internal/task/c;
    .locals 4

    new-instance v0, Lcom/vungle/ads/internal/task/c;

    const-string v1, "CleanupJob"

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/task/c;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/task/c;->setPriority(I)Lcom/vungle/ads/internal/task/c;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string v3, "AD_ID_KEY"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/task/c;->setExtras(Landroid/os/Bundle;)Lcom/vungle/ads/internal/task/c;

    move-result-object v0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/task/c;->setUpdateCurrent(Z)Lcom/vungle/ads/internal/task/c;

    move-result-object p1

    return-object p1
.end method
