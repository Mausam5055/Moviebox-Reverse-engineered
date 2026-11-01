.class public final enum Lcom/cloud/tmc/integration/structure/EmbedType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/structure/EmbedType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/structure/EmbedType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/structure/EmbedType;",
        "",
        "typeValue",
        "",
        "(Ljava/lang/String;II)V",
        "isEmbedPage",
        "",
        "()Z",
        "getTypeValue",
        "()I",
        "NO",
        "FULL",
        "MINI",
        "Companion",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/structure/EmbedType;

.field public static final Companion:Lcom/cloud/tmc/integration/structure/EmbedType$Companion;

.field public static final enum FULL:Lcom/cloud/tmc/integration/structure/EmbedType;

.field public static final enum MINI:Lcom/cloud/tmc/integration/structure/EmbedType;

.field public static final enum NO:Lcom/cloud/tmc/integration/structure/EmbedType;


# instance fields
.field private final typeValue:I


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/integration/structure/EmbedType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cloud/tmc/integration/structure/EmbedType;

    sget-object v1, Lcom/cloud/tmc/integration/structure/EmbedType;->NO:Lcom/cloud/tmc/integration/structure/EmbedType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/structure/EmbedType;->FULL:Lcom/cloud/tmc/integration/structure/EmbedType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/structure/EmbedType;->MINI:Lcom/cloud/tmc/integration/structure/EmbedType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/cloud/tmc/integration/structure/EmbedType;

    const-string v1, "NO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/tmc/integration/structure/EmbedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/integration/structure/EmbedType;->NO:Lcom/cloud/tmc/integration/structure/EmbedType;

    new-instance v0, Lcom/cloud/tmc/integration/structure/EmbedType;

    const-string v1, "FULL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/tmc/integration/structure/EmbedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/integration/structure/EmbedType;->FULL:Lcom/cloud/tmc/integration/structure/EmbedType;

    new-instance v0, Lcom/cloud/tmc/integration/structure/EmbedType;

    const-string v1, "MINI"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/tmc/integration/structure/EmbedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/integration/structure/EmbedType;->MINI:Lcom/cloud/tmc/integration/structure/EmbedType;

    invoke-static {}, Lcom/cloud/tmc/integration/structure/EmbedType;->$values()[Lcom/cloud/tmc/integration/structure/EmbedType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/structure/EmbedType;->$VALUES:[Lcom/cloud/tmc/integration/structure/EmbedType;

    new-instance v0, Lcom/cloud/tmc/integration/structure/EmbedType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/structure/EmbedType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/structure/EmbedType;->Companion:Lcom/cloud/tmc/integration/structure/EmbedType$Companion;

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

    iput p3, p0, Lcom/cloud/tmc/integration/structure/EmbedType;->typeValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/EmbedType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/structure/EmbedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/structure/EmbedType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/structure/EmbedType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/structure/EmbedType;->$VALUES:[Lcom/cloud/tmc/integration/structure/EmbedType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/integration/structure/EmbedType;

    return-object v0
.end method


# virtual methods
.method public final getTypeValue()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/structure/EmbedType;->typeValue:I

    return v0
.end method

.method public final isEmbedPage()Z
    .locals 2

    iget v0, p0, Lcom/cloud/tmc/integration/structure/EmbedType;->typeValue:I

    sget-object v1, Lcom/cloud/tmc/integration/structure/EmbedType;->NO:Lcom/cloud/tmc/integration/structure/EmbedType;

    iget v1, v1, Lcom/cloud/tmc/integration/structure/EmbedType;->typeValue:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
