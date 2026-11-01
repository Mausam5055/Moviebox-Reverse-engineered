.class public final Lcom/vungle/ads/internal/network/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/network/f$b;,
        Lcom/vungle/ads/internal/network/f$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/f$b;

.field private static final PRIORITY_MAX_RETRY_COUNT:I = 0x3

.field private static final REGULAR_MAX_RETRY_COUNT:I = 0x5


# instance fields
.field private final body:Ljava/lang/String;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logEntry:Lcom/vungle/ads/internal/util/n;

.field private final method:Lcom/vungle/ads/internal/network/HttpMethod;

.field private final priorityRetry:Ljava/lang/Boolean;

.field private final priorityRetryCount:I

.field private final regularRetry:Z

.field private final regularRetryCount:I

.field private final tpatKey:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/network/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/network/f$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/network/f;->Companion:Lcom/vungle/ads/internal/network/f$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;IZILjava/lang/String;Lcom/vungle/ads/internal/util/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/network/HttpMethod;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "IZI",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/util/n;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/f;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/f;->method:Lcom/vungle/ads/internal/network/HttpMethod;

    iput-object p3, p0, Lcom/vungle/ads/internal/network/f;->headers:Ljava/util/Map;

    iput-object p4, p0, Lcom/vungle/ads/internal/network/f;->body:Ljava/lang/String;

    iput-object p5, p0, Lcom/vungle/ads/internal/network/f;->priorityRetry:Ljava/lang/Boolean;

    iput p6, p0, Lcom/vungle/ads/internal/network/f;->priorityRetryCount:I

    iput-boolean p7, p0, Lcom/vungle/ads/internal/network/f;->regularRetry:Z

    iput p8, p0, Lcom/vungle/ads/internal/network/f;->regularRetryCount:I

    iput-object p9, p0, Lcom/vungle/ads/internal/network/f;->tpatKey:Ljava/lang/String;

    iput-object p10, p0, Lcom/vungle/ads/internal/network/f;->logEntry:Lcom/vungle/ads/internal/util/n;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;IZILjava/lang/String;Lcom/vungle/ads/internal/util/n;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/vungle/ads/internal/network/f;-><init>(Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Boolean;IZILjava/lang/String;Lcom/vungle/ads/internal/util/n;)V

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/f;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/network/f;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getLogEntry()Lcom/vungle/ads/internal/util/n;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/f;->logEntry:Lcom/vungle/ads/internal/util/n;

    return-object v0
.end method

.method public final getMethod()Lcom/vungle/ads/internal/network/HttpMethod;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/f;->method:Lcom/vungle/ads/internal/network/HttpMethod;

    return-object v0
.end method

.method public final getPriorityRetry()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/f;->priorityRetry:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPriorityRetryCount()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/network/f;->priorityRetryCount:I

    return v0
.end method

.method public final getRegularRetry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/network/f;->regularRetry:Z

    return v0
.end method

.method public final getRegularRetryCount()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/network/f;->regularRetryCount:I

    return v0
.end method

.method public final getTpatKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/f;->tpatKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/f;->url:Ljava/lang/String;

    return-object v0
.end method
