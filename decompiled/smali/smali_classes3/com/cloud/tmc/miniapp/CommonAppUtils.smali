.class public final Lcom/cloud/tmc/miniapp/CommonAppUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/intf/ICommonApp;


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/CommonAppUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/CommonAppUtils;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/CommonAppUtils;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/CommonAppUtils;->INSTANCE:Lcom/cloud/tmc/miniapp/CommonAppUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultAutoAgreePrivacy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultMultiTaskCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStartFromChannel()Ljava/lang/String;
    .locals 1

    const-string v0, "mb"

    return-object v0
.end method

.method public isTargetApp(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppUtils;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/integration/utils/AppUtils;->isMovieBox(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
