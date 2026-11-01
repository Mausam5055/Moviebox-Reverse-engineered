.class Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$LazyHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    invoke-direct {v0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$LazyHolder;->INSTANCE:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic a()Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$LazyHolder;->INSTANCE:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    return-object v0
.end method
