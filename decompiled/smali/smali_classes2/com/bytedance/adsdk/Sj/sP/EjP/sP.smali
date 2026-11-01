.class public final enum Lcom/bytedance/adsdk/Sj/sP/EjP/sP;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/Sj/sP/EjP/sP;",
        ">;",
        "Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;"
    }
.end annotation


# static fields
.field public static final enum Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

.field private static final synthetic sP:[Lcom/bytedance/adsdk/Sj/sP/EjP/sP;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

    const-string v1, "METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/Sj/sP/EjP/sP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/sP;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

    aput-object v0, v1, v2

    sput-object v1, Lcom/bytedance/adsdk/Sj/sP/EjP/sP;->sP:[Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/Sj/sP/EjP/sP;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/Sj/sP/EjP/sP;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/sP;->sP:[Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/Sj/sP/EjP/sP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

    return-object v0
.end method
