.class public final enum Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

.field public static final enum Default:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

.field public static final enum Private:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

.field public static final enum PublicRead:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

.field public static final enum PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;


# instance fields
.field private ACLString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    const/4 v1, 0x0

    const-string v2, "private"

    const-string v3, "Private"

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->Private:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    new-instance v2, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    const/4 v3, 0x1

    const-string v4, "public-read"

    const-string v5, "PublicRead"

    invoke-direct {v2, v5, v3, v4}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->PublicRead:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    new-instance v4, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    const/4 v5, 0x2

    const-string v6, "public-read-write"

    const-string v7, "PublicReadWrite"

    invoke-direct {v4, v7, v5, v6}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    new-instance v6, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    const/4 v7, 0x3

    const-string v8, "default"

    const-string v9, "Default"

    invoke-direct {v6, v9, v7, v8}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->Default:Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->$VALUES:[Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

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

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->ACLString:Ljava/lang/String;

    return-void
.end method

.method public static parseACL(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;
    .locals 5

    invoke-static {}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->values()[Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->$VALUES:[Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/CannedAccessControlList;->ACLString:Ljava/lang/String;

    return-object v0
.end method
