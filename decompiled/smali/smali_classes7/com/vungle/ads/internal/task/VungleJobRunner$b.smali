.class final Lcom/vungle/ads/internal/task/VungleJobRunner$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/task/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private info:Lcom/vungle/ads/internal/task/c;

.field private final uptimeMillis:J


# direct methods
.method public constructor <init>(JLcom/vungle/ads/internal/task/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/vungle/ads/internal/task/VungleJobRunner$b;->uptimeMillis:J

    iput-object p3, p0, Lcom/vungle/ads/internal/task/VungleJobRunner$b;->info:Lcom/vungle/ads/internal/task/c;

    return-void
.end method


# virtual methods
.method public final getInfo()Lcom/vungle/ads/internal/task/c;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/task/VungleJobRunner$b;->info:Lcom/vungle/ads/internal/task/c;

    return-object v0
.end method

.method public final getUptimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/task/VungleJobRunner$b;->uptimeMillis:J

    return-wide v0
.end method

.method public final setInfo(Lcom/vungle/ads/internal/task/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/task/VungleJobRunner$b;->info:Lcom/vungle/ads/internal/task/c;

    return-void
.end method
