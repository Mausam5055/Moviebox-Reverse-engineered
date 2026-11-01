.class public final Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001BK\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010 \u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010!\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u0010\"\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\rH\u00c6\u0003Jb\u0010%\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001\u00a2\u0006\u0002\u0010&J\u0013\u0010\'\u001a\u00020\u00032\u0008\u0010(\u001a\u0004\u0018\u00010)H\u00d6\u0003J\t\u0010*\u001a\u00020\u0007H\u00d6\u0001J\t\u0010+\u001a\u00020\nH\u00d6\u0001R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0018R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006,"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "status",
        "",
        "delayDuration",
        "",
        "displayFrequency",
        "",
        "perXDay",
        "buttonTextColor",
        "",
        "buttonBackgroundColor",
        "configs",
        "Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;",
        "(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)V",
        "getButtonBackgroundColor",
        "()Ljava/lang/String;",
        "getButtonTextColor",
        "getConfigs",
        "()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;",
        "getDelayDuration",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getDisplayFrequency",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getPerXDay",
        "getStatus",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
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


# instance fields
.field private final buttonBackgroundColor:Ljava/lang/String;

.field private final buttonTextColor:Ljava/lang/String;

.field private final configs:Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

.field private final delayDuration:Ljava/lang/Long;

.field private final displayFrequency:Ljava/lang/Integer;

.field private final perXDay:Ljava/lang/Integer;

.field private final status:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->status:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->delayDuration:Ljava/lang/Long;

    iput-object p3, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->displayFrequency:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->perXDay:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonTextColor:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonBackgroundColor:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->configs:Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;ILjava/lang/Object;)Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->status:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->delayDuration:Ljava/lang/Long;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->displayFrequency:Ljava/lang/Integer;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->perXDay:Ljava/lang/Integer;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonTextColor:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonBackgroundColor:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->configs:Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->copy(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->status:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->delayDuration:Ljava/lang/Long;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->displayFrequency:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->perXDay:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->configs:Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;
    .locals 9

    new-instance v8, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->status:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->status:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->delayDuration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->delayDuration:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->displayFrequency:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->displayFrequency:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->perXDay:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->perXDay:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonTextColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonTextColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonBackgroundColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonBackgroundColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->configs:Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->configs:Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getButtonBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getButtonTextColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getConfigs()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->configs:Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    return-object v0
.end method

.method public final getDelayDuration()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->delayDuration:Ljava/lang/Long;

    return-object v0
.end method

.method public final getDisplayFrequency()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->displayFrequency:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPerXDay()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->perXDay:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->status:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->status:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->delayDuration:Ljava/lang/Long;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->displayFrequency:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->perXDay:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonTextColor:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonBackgroundColor:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->configs:Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->status:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->delayDuration:Ljava/lang/Long;

    iget-object v2, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->displayFrequency:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->perXDay:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonTextColor:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->buttonBackgroundColor:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/integration/model/MiniAppAutoPopover;->configs:Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MiniAppAutoPopover(status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", delayDuration="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", displayFrequency="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", perXDay="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", buttonTextColor="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", buttonBackgroundColor="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", configs="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
