.class public final Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;
.super Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LOADING"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$LOADING;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "loading"

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;-><init>(Ljava/lang/String;)V

    return-void
.end method
