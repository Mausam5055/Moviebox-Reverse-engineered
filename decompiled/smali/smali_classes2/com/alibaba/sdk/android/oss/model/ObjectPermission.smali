.class public final enum Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/oss/model/ObjectPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum Default:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum Private:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum PublicRead:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum Unknown:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;


# instance fields
.field private permissionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v1, 0x0

    const-string v2, "private"

    const-string v3, "Private"

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Private:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    new-instance v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v3, 0x1

    const-string v4, "public-read"

    const-string v5, "PublicRead"

    invoke-direct {v2, v5, v3, v4}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicRead:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    new-instance v4, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v5, 0x2

    const-string v6, "public-read-write"

    const-string v7, "PublicReadWrite"

    invoke-direct {v4, v7, v5, v6}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    new-instance v6, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v7, 0x3

    const-string v8, "default"

    const-string v9, "Default"

    invoke-direct {v6, v9, v7, v8}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Default:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    new-instance v8, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v9, 0x4

    const-string v10, ""

    const-string v11, "Unknown"

    invoke-direct {v8, v11, v9, v10}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Unknown:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->$VALUES:[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

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

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->permissionString:Ljava/lang/String;

    return-void
.end method

.method public static parsePermission(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    sget-object v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Private:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicRead:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Default:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    iget-object v5, v2, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->permissionString:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v2

    :cond_0
    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Unknown:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->$VALUES:[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->permissionString:Ljava/lang/String;

    return-object v0
.end method
