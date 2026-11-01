.class public final enum Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/TKC/sP/uA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EjP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

.field public static final enum HiB:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

.field public static final enum Sj:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

.field public static final enum TKC:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

.field public static final enum sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

.field private static final synthetic vS:[Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    const-string v1, "MERGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    new-instance v1, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    new-instance v3, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    const-string v5, "SUBTRACT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    new-instance v5, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    const-string v7, "INTERSECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    new-instance v7, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    const-string v9, "EXCLUDE_INTERSECTIONS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->HiB:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->vS:[Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

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

.method public static Sj(I)Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    return-object p0

    :cond_0
    sget-object p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->HiB:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    return-object p0

    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->EjP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    return-object p0

    :cond_3
    sget-object p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    return-object p0

    :cond_4
    sget-object p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->vS:[Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    return-object v0
.end method
