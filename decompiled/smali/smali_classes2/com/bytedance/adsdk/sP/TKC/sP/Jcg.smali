.class public final enum Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

.field private static final synthetic TKC:[Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

.field public static final enum sP:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;->Sj:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    new-instance v1, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    const-string v3, "RADIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;->TKC:[Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;->TKC:[Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/sP/TKC/sP/Jcg;

    return-object v0
.end method
