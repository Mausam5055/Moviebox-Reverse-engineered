.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/TEQ;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/TEQ;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic HiB:[Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

.field public static final enum Sj:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

.field public static final enum TKC:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

.field public static final enum sP:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;


# instance fields
.field private final EjP:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    const-string v3, "EXACTLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->sP:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    const-string v5, "AT_MOST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->HiB:[Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

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

    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->EjP:I

    return-void
.end method

.method public static Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/TEQ;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

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
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->sP:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/TEQ;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/TEQ;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->HiB:[Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/TEQ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/TEQ;

    return-object v0
.end method
