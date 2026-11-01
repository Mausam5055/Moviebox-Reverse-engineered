.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/Zq;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/Zq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Sj:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

.field public static final enum TKC:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

.field public static final enum sP:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

.field private static final synthetic vS:[Lcom/bytedance/adsdk/ugeno/yoga/Zq;


# instance fields
.field private final EjP:I

.field private final HiB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    const/4 v1, 0x0

    const-string v2, "static"

    const-string v3, "STATIC"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    new-instance v2, Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    const/4 v3, 0x1

    const-string v4, "relative"

    const-string v5, "RELATIVE"

    invoke-direct {v2, v5, v3, v3, v4}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    new-instance v4, Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    const/4 v5, 0x2

    const-string v6, "absolute"

    const-string v7, "ABSOLUTE"

    invoke-direct {v4, v7, v5, v5, v6}, Lcom/bytedance/adsdk/ugeno/yoga/Zq;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->vS:[Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->EjP:I

    iput-object p4, p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->HiB:Ljava/lang/String;

    return-void
.end method

.method public static Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/Zq;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/Zq;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "absolute"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "relative"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "static"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown enum value: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->sP:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x35323192 -> :sswitch_2
        -0x210c0534 -> :sswitch_1
        0x67010d77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/Zq;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/Zq;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->vS:[Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/Zq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/Zq;

    return-object v0
.end method


# virtual methods
.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Zq;->EjP:I

    return v0
.end method
