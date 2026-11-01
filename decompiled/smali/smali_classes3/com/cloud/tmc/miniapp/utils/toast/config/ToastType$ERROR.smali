.class public final Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;
.super Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ERROR"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "error"

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;-><init>(Ljava/lang/String;)V

    return-void
.end method
