.class public final enum Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Sj:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

.field private static final synthetic TKC:[Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

.field public static final enum sP:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    const-string v1, "SIMULTANEOUSLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    new-instance v1, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    const-string v3, "INDIVIDUALLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;->TKC:[Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

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

.method public static Sj(I)Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;->TKC:[Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    return-object v0
.end method
