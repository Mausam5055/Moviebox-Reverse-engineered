.class public final enum Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/api/view/AdCloseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloseImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

.field public static final enum EXPAND:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

.field private static final synthetic a:[Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->CLOSE:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    new-instance v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    const-string v1, "EXPAND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->EXPAND:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    invoke-static {}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->a()[Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->a:[Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    sget-object v1, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->CLOSE:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->EXPAND:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->a:[Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    invoke-virtual {v0}, [Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    return-object v0
.end method
