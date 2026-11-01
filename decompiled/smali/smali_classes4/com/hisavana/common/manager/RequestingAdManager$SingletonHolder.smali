.class Lcom/hisavana/common/manager/RequestingAdManager$SingletonHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/common/manager/RequestingAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/hisavana/common/manager/RequestingAdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hisavana/common/manager/RequestingAdManager;

    invoke-direct {v0}, Lcom/hisavana/common/manager/RequestingAdManager;-><init>()V

    sput-object v0, Lcom/hisavana/common/manager/RequestingAdManager$SingletonHolder;->INSTANCE:Lcom/hisavana/common/manager/RequestingAdManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/hisavana/common/manager/RequestingAdManager;
    .locals 1

    sget-object v0, Lcom/hisavana/common/manager/RequestingAdManager$SingletonHolder;->INSTANCE:Lcom/hisavana/common/manager/RequestingAdManager;

    return-object v0
.end method
