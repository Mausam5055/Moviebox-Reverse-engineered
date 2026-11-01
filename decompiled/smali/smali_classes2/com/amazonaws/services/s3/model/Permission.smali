.class public final enum Lcom/amazonaws/services/s3/model/Permission;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/services/s3/model/Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/services/s3/model/Permission;

.field public static final enum FullControl:Lcom/amazonaws/services/s3/model/Permission;

.field public static final enum Read:Lcom/amazonaws/services/s3/model/Permission;

.field public static final enum ReadAcp:Lcom/amazonaws/services/s3/model/Permission;

.field public static final enum Write:Lcom/amazonaws/services/s3/model/Permission;

.field public static final enum WriteAcp:Lcom/amazonaws/services/s3/model/Permission;


# instance fields
.field private headerName:Ljava/lang/String;

.field private permissionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/amazonaws/services/s3/model/Permission;

    const-string v1, "FULL_CONTROL"

    const-string v2, "x-amz-grant-full-control"

    const-string v3, "FullControl"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazonaws/services/s3/model/Permission;->FullControl:Lcom/amazonaws/services/s3/model/Permission;

    new-instance v1, Lcom/amazonaws/services/s3/model/Permission;

    const-string v2, "READ"

    const-string v3, "x-amz-grant-read"

    const-string v5, "Read"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazonaws/services/s3/model/Permission;->Read:Lcom/amazonaws/services/s3/model/Permission;

    new-instance v2, Lcom/amazonaws/services/s3/model/Permission;

    const-string v3, "WRITE"

    const-string v5, "x-amz-grant-write"

    const-string v7, "Write"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/amazonaws/services/s3/model/Permission;->Write:Lcom/amazonaws/services/s3/model/Permission;

    new-instance v3, Lcom/amazonaws/services/s3/model/Permission;

    const-string v5, "READ_ACP"

    const-string v7, "x-amz-grant-read-acp"

    const-string v9, "ReadAcp"

    const/4 v10, 0x3

    invoke-direct {v3, v9, v10, v5, v7}, Lcom/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/amazonaws/services/s3/model/Permission;->ReadAcp:Lcom/amazonaws/services/s3/model/Permission;

    new-instance v5, Lcom/amazonaws/services/s3/model/Permission;

    const-string v7, "WRITE_ACP"

    const-string v9, "x-amz-grant-write-acp"

    const-string v11, "WriteAcp"

    const/4 v12, 0x4

    invoke-direct {v5, v11, v12, v7, v9}, Lcom/amazonaws/services/s3/model/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/amazonaws/services/s3/model/Permission;->WriteAcp:Lcom/amazonaws/services/s3/model/Permission;

    const/4 v7, 0x5

    new-array v7, v7, [Lcom/amazonaws/services/s3/model/Permission;

    aput-object v0, v7, v4

    aput-object v1, v7, v6

    aput-object v2, v7, v8

    aput-object v3, v7, v10

    aput-object v5, v7, v12

    sput-object v7, Lcom/amazonaws/services/s3/model/Permission;->$VALUES:[Lcom/amazonaws/services/s3/model/Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazonaws/services/s3/model/Permission;->permissionString:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/services/s3/model/Permission;->headerName:Ljava/lang/String;

    return-void
.end method

.method public static parsePermission(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Permission;
    .locals 5

    invoke-static {}, Lcom/amazonaws/services/s3/model/Permission;->values()[Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/amazonaws/services/s3/model/Permission;->permissionString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/Permission;
    .locals 1

    const-class v0, Lcom/amazonaws/services/s3/model/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/services/s3/model/Permission;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/services/s3/model/Permission;
    .locals 1

    sget-object v0, Lcom/amazonaws/services/s3/model/Permission;->$VALUES:[Lcom/amazonaws/services/s3/model/Permission;

    invoke-virtual {v0}, [Lcom/amazonaws/services/s3/model/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/services/s3/model/Permission;

    return-object v0
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Permission;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/Permission;->permissionString:Ljava/lang/String;

    return-object v0
.end method
