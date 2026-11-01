.class public final enum Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/TKC/sP/TzV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic EjP:[Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

.field public static final enum Sj:Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

.field public static final enum TKC:Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

.field public static final enum sP:Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    const-string v1, "BUTT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    new-instance v1, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    const-string v3, "ROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    new-instance v3, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;->EjP:[Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;->EjP:[Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/sP/TKC/sP/TzV$Sj;

    return-object v0
.end method


# virtual methods
.method public Sj()Landroid/graphics/Paint$Cap;
    .locals 2

    sget-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/TzV$1;->Sj:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0
.end method
