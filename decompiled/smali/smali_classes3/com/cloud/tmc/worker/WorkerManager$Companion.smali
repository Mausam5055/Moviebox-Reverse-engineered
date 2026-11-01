.class public final Lcom/cloud/tmc/worker/WorkerManager$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/worker/WorkerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cloud/tmc/worker/WorkerManager$Companion;",
        "",
        "()V",
        "EVENT_RESEND_PAGE_ENTER",
        "",
        "getEVENT_RESEND_PAGE_ENTER",
        "()Ljava/lang/String;",
        "com.cloud.tmc.worker"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/worker/WorkerManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEVENT_RESEND_PAGE_ENTER()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/cloud/tmc/worker/WorkerManager;->access$getEVENT_RESEND_PAGE_ENTER$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
