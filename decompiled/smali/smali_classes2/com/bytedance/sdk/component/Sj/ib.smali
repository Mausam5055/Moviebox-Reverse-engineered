.class public final enum Lcom/bytedance/sdk/component/Sj/ib;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/Sj/ib;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic EjP:[Lcom/bytedance/sdk/component/Sj/ib;

.field public static final enum Sj:Lcom/bytedance/sdk/component/Sj/ib;

.field public static final enum TKC:Lcom/bytedance/sdk/component/Sj/ib;

.field public static final enum sP:Lcom/bytedance/sdk/component/Sj/ib;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bytedance/sdk/component/Sj/ib;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/Sj/ib;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/Sj/ib;->Sj:Lcom/bytedance/sdk/component/Sj/ib;

    new-instance v1, Lcom/bytedance/sdk/component/Sj/ib;

    const-string v3, "PROTECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/bytedance/sdk/component/Sj/ib;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/component/Sj/ib;->sP:Lcom/bytedance/sdk/component/Sj/ib;

    new-instance v3, Lcom/bytedance/sdk/component/Sj/ib;

    const-string v5, "PRIVATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/bytedance/sdk/component/Sj/ib;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/bytedance/sdk/component/Sj/ib;->TKC:Lcom/bytedance/sdk/component/Sj/ib;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/bytedance/sdk/component/Sj/ib;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/bytedance/sdk/component/Sj/ib;->EjP:[Lcom/bytedance/sdk/component/Sj/ib;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/ib;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/component/Sj/ib;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/Sj/ib;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/Sj/ib;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/Sj/ib;->EjP:[Lcom/bytedance/sdk/component/Sj/ib;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/Sj/ib;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/Sj/ib;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/Sj/ib;->TKC:Lcom/bytedance/sdk/component/Sj/ib;

    if-ne p0, v0, :cond_0

    const-string v0, "private"

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/Sj/ib;->sP:Lcom/bytedance/sdk/component/Sj/ib;

    if-ne p0, v0, :cond_1

    const-string v0, "protected"

    return-object v0

    :cond_1
    const-string v0, "public"

    return-object v0
.end method
