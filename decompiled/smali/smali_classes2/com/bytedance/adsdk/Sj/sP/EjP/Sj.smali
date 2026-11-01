.class public final enum Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;",
        ">;",
        "Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;"
    }
.end annotation


# static fields
.field private static final EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic HiB:[Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

.field public static final enum Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

.field public static final enum TKC:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

.field public static final enum sP:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    new-instance v1, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    const-string v3, "FALSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->sP:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    new-instance v3, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    const-string v5, "NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->HiB:[Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->EjP:Ljava/util/Map;

    invoke-static {}, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->values()[Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v5, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->EjP:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v4

    goto :goto_0

    :cond_0
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

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->EjP:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->HiB:[Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    return-object v0
.end method
