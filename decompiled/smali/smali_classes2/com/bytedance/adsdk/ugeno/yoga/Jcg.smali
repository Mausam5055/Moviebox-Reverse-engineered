.class public final enum Lcom/bytedance/adsdk/ugeno/yoga/Jcg;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bytedance/adsdk/ugeno/yoga/Jcg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EjP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

.field public static final enum HiB:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

.field public static final enum Sj:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

.field public static final enum TKC:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

.field public static final enum sP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

.field private static final synthetic uA:[Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

.field public static final enum vS:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;


# instance fields
.field private final Dq:Ljava/lang/String;

.field private final Jcg:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    const/4 v1, 0x0

    const-string v2, "flex_start"

    const-string v3, "FLEX_START"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    new-instance v2, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    const/4 v3, 0x1

    const-string v4, "center"

    const-string v5, "CENTER"

    invoke-direct {v2, v5, v3, v3, v4}, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    new-instance v4, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    const/4 v5, 0x2

    const-string v6, "flex_end"

    const-string v7, "FLEX_END"

    invoke-direct {v4, v7, v5, v5, v6}, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    new-instance v6, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    const/4 v7, 0x3

    const-string v8, "space_between"

    const-string v9, "SPACE_BETWEEN"

    invoke-direct {v6, v9, v7, v7, v8}, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    new-instance v8, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    const/4 v9, 0x4

    const-string v10, "space_around"

    const-string v11, "SPACE_AROUND"

    invoke-direct {v8, v11, v9, v9, v10}, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->HiB:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    new-instance v10, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    const/4 v11, 0x5

    const-string v12, "space_evenly"

    const-string v13, "SPACE_EVENLY"

    invoke-direct {v10, v13, v11, v11, v12}, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->vS:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    const/4 v12, 0x6

    new-array v12, v12, [Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    aput-object v0, v12, v1

    aput-object v2, v12, v3

    aput-object v4, v12, v5

    aput-object v6, v12, v7

    aput-object v8, v12, v9

    aput-object v10, v12, v11

    sput-object v12, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->uA:[Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

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

    iput p3, p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->Jcg:I

    iput-object p4, p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->Dq:Ljava/lang/String;

    return-void
.end method

.method public static Sj(I)Lcom/bytedance/adsdk/ugeno/yoga/Jcg;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->vS:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

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
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->HiB:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0

    :cond_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0

    :cond_3
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0

    :cond_4
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0

    :cond_5
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0
.end method

.method public static Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/Jcg;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "flex_end"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "space_between"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "flex_start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "space_evenly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "space_around"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
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
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->TKC:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->EjP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->Sj:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->vS:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->HiB:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->sP:Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x379240da -> :sswitch_4
        -0x308b2680 -> :sswitch_3
        0x528b889c -> :sswitch_2
        0x64489dcf -> :sswitch_1
        0x67fa1395 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/yoga/Jcg;
    .locals 1

    const-class v0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object p0
.end method

.method public static values()[Lcom/bytedance/adsdk/ugeno/yoga/Jcg;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->uA:[Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    invoke-virtual {v0}, [Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/adsdk/ugeno/yoga/Jcg;

    return-object v0
.end method


# virtual methods
.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/yoga/Jcg;->Jcg:I

    return v0
.end method
