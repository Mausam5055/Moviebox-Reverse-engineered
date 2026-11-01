.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;
.super Ljava/lang/Enum;


# annotations
.annotation build Lcom/bytedance/adsdk/ugeno/yoga/Sj/Sj;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic Dq:[Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

.field public static final enum EjP:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

.field public static final enum HiB:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

.field public static final enum Sj:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

.field public static final enum TKC:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

.field public static final enum sP:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

.field public static final enum vS:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;


# instance fields
.field private final Jcg:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    const-string v3, "WARN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->sP:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    new-instance v5, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    const-string v7, "DEBUG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    new-instance v7, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    const-string v9, "VERBOSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->HiB:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    new-instance v9, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    const-string v11, "FATAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->vS:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->Dq:[Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->Jcg:I

    return-void
.end method

.method public static fromInt(I)Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;
    .locals 2
    .annotation build Lcom/bytedance/adsdk/ugeno/yoga/Sj/Sj;
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->vS:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->HiB:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    return-object p0

    :cond_3
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    return-object p0

    :cond_4
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->sP:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    return-object p0

    :cond_5
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->Dq:[Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/YogaLogLevel;

    return-object v0
.end method
