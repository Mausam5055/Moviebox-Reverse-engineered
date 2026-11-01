.class public final enum Lcom/bytedance/adsdk/sP/TKC/sP$Sj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/TKC/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/sP/TKC/sP$Sj;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic EjP:[Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

.field public static final enum Sj:Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

.field public static final enum TKC:Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

.field public static final enum sP:Lcom/bytedance/adsdk/sP/TKC/sP$Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    const-string v1, "LEFT_ALIGN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    new-instance v1, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    const-string v3, "RIGHT_ALIGN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;->sP:Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    new-instance v3, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;->TKC:Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;->EjP:[Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/sP$Sj;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/sP/TKC/sP$Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/sP/TKC/sP$Sj;->EjP:[Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/sP/TKC/sP$Sj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/sP/TKC/sP$Sj;

    return-object v0
.end method
