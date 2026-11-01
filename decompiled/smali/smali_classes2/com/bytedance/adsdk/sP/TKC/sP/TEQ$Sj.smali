.class public final enum Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/TKC/sP/TEQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic EjP:[Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

.field public static final enum Sj:Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

.field public static final enum sP:Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;


# instance fields
.field private final TKC:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

    const-string v1, "STAR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

    new-instance v1, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

    const-string v4, "POLYGON"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

    new-array v4, v5, [Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;->EjP:[Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

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

    iput p3, p0, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;->TKC:I

    return-void
.end method

.method public static Sj(I)Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;
    .locals 5

    invoke-static {}, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;->values()[Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;->TKC:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;->EjP:[Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/sP/TKC/sP/TEQ$Sj;

    return-object v0
.end method
