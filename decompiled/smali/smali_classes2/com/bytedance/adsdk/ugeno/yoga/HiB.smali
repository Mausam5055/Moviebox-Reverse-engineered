.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/HiB;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/HiB;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Dq:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

.field public static final enum EjP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

.field public static final enum HiB:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

.field public static final enum Jcg:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

.field public static final enum Sj:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

.field public static final enum TKC:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

.field private static final synthetic Ym:[Lcom/bytedance/adsdk/ugeno/yoga/HiB;

.field public static final enum sP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

.field public static final enum uA:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

.field public static final enum vS:Lcom/bytedance/adsdk/ugeno/yoga/HiB;


# instance fields
.field private final TEQ:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/adsdk/ugeno/yoga/HiB;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    const-string v3, "TOP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/bytedance/adsdk/ugeno/yoga/HiB;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->sP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/bytedance/adsdk/ugeno/yoga/HiB;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    new-instance v5, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    const-string v7, "BOTTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/bytedance/adsdk/ugeno/yoga/HiB;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    new-instance v7, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    const-string v9, "START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/bytedance/adsdk/ugeno/yoga/HiB;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->HiB:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    new-instance v9, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    const-string v11, "END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/bytedance/adsdk/ugeno/yoga/HiB;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->vS:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    new-instance v11, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    const-string v13, "HORIZONTAL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/bytedance/adsdk/ugeno/yoga/HiB;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->Jcg:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    new-instance v13, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    const-string v15, "VERTICAL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/bytedance/adsdk/ugeno/yoga/HiB;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->Dq:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    new-instance v15, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    const-string v14, "ALL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/bytedance/adsdk/ugeno/yoga/HiB;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->uA:Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->Ym:[Lcom/bytedance/adsdk/ugeno/yoga/HiB;

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

    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->TEQ:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/HiB;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/HiB;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->Ym:[Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/HiB;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/HiB;

    return-object v0
.end method


# virtual methods
.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/HiB;->TEQ:I

    return v0
.end method
