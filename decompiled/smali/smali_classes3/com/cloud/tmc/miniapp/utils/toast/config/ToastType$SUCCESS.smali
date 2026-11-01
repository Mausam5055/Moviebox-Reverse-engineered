.class public final Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;
.super Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SUCCESS"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$SUCCESS;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "success"

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;-><init>(Ljava/lang/String;)V

    return-void
.end method
