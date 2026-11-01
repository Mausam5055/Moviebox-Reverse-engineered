.class public final enum Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/EjP/uA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sj"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EjP:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

.field public static final enum Sj:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

.field public static final enum TKC:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

.field public static final enum sP:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

.field private static final synthetic vS:[Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;


# instance fields
.field private HiB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    const/4 v1, 0x0

    const-string v2, "text/html"

    const-string v3, "HTML"

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->Sj:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    const/4 v3, 0x1

    const-string v4, "text/css"

    const-string v5, "CSS"

    invoke-direct {v2, v5, v3, v4}, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->sP:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    new-instance v4, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    const/4 v5, 0x2

    const-string v6, "application/x-javascript"

    const-string v7, "JS"

    invoke-direct {v4, v7, v5, v6}, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->TKC:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    new-instance v6, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    const/4 v7, 0x3

    const-string v8, "image/*"

    const-string v9, "IMAGE"

    invoke-direct {v6, v9, v7, v8}, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->EjP:Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->vS:[Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->HiB:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;
    .locals 1

    const-class v0, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->vS:[Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    invoke-virtual {v0}, [Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;

    return-object v0
.end method


# virtual methods
.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/EjP/uA$Sj;->HiB:Ljava/lang/String;

    return-object v0
.end method
