.class public final enum Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

.field public static final enum ADVERTISER_INFO:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

.field public static final enum COPY_LINK:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

.field public static final enum PERSONALISE_CLOSE:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;


# direct methods
.method private static synthetic $values()[Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->PERSONALISE_CLOSE:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->ADVERTISER_INFO:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->COPY_LINK:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    const-string v1, "PERSONALISE_CLOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->PERSONALISE_CLOSE:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    const-string v1, "ADVERTISER_INFO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->ADVERTISER_INFO:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    const-string v1, "COPY_LINK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->COPY_LINK:Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->$values()[Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->$VALUES:[Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;
    .locals 1

    const-class v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    return-object p0
.end method

.method public static values()[Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->$VALUES:[Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    invoke-virtual {v0}, [Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;

    return-object v0
.end method
