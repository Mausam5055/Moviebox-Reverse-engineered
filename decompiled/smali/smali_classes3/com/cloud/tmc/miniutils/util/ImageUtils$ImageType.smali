.class public final enum Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniutils/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_BMP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_GIF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_ICO:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_JPG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_PNG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_TIFF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_UNKNOWN:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

.field public static final enum TYPE_WEBP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v1, 0x0

    const-string v2, "jpg"

    const-string v3, "TYPE_JPG"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v1, 0x1

    const-string v2, "png"

    const-string v3, "TYPE_PNG"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v1, 0x2

    const-string v2, "gif"

    const-string v3, "TYPE_GIF"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v1, 0x3

    const-string v2, "tiff"

    const-string v3, "TYPE_TIFF"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v1, 0x4

    const-string v2, "bmp"

    const-string v3, "TYPE_BMP"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v1, 0x5

    const-string v2, "webp"

    const-string v3, "TYPE_WEBP"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v1, 0x6

    const-string v2, "ico"

    const-string v3, "TYPE_ICO"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    new-instance v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    const/4 v1, 0x7

    const-string v2, "unknown"

    const-string v3, "TYPE_UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->$values()[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->$VALUES:[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->$VALUES:[Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    invoke-virtual {v0}, [Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/ImageUtils$ImageType;->value:Ljava/lang/String;

    return-object v0
.end method
