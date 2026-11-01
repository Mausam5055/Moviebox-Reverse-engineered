.class public final Lcom/cloud/tmc/offline/download/utils/FastClickUtils;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R*\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00060\u0008j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0006`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/utils/FastClickUtils;",
        "",
        "()V",
        "ALL_FAST_CLICK_KEY",
        "",
        "DOUBLE_DEVIATE_TIME",
        "",
        "lastClickTimeMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "isFastDoubleClick",
        "",
        "key",
        "deviateTime",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ALL_FAST_CLICK_KEY:Ljava/lang/String; = "fastclick"

.field private static final DOUBLE_DEVIATE_TIME:J = 0x190L

.field public static final INSTANCE:Lcom/cloud/tmc/offline/download/utils/FastClickUtils;

.field private static final lastClickTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/FastClickUtils;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->lastClickTimeMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isFastDoubleClick()Z
    .locals 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2, v3}, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->isFastDoubleClick$default(Ljava/lang/String;JILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isFastDoubleClick(Ljava/lang/String;)Z
    .locals 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->isFastDoubleClick$default(Ljava/lang/String;JILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isFastDoubleClick(Ljava/lang/String;J)Z
    .locals 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->lastClickTimeMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    if-nez v3, :cond_0

    move-object v3, v6

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sub-long v7, v0, v7

    cmp-long p1, v7, p1

    const/4 p2, 0x0

    if-lez p1, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2

    :cond_1
    cmp-long p1, v7, v4

    if-gez p1, :cond_2

    invoke-interface {v2, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic isFastDoubleClick$default(Ljava/lang/String;JILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p0, "fastclick"

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const-wide/16 p1, 0x190

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/offline/download/utils/FastClickUtils;->isFastDoubleClick(Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method
