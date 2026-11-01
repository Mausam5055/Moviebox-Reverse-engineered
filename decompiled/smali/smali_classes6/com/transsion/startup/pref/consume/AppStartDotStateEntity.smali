.class public final Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/startup/pref/consume/AppStartDotStateEntity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u001d\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001e\u0008\u0087\u0008\u0018\u0000 C2\u00020\u0001:\u0001DBy\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0013J\u0010\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u0015J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u0015J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u0015J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u0015J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u0015J\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 J\u008a\u0001\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010#\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008#\u0010\u0015J\u0010\u0010$\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008$\u0010\u0013J\u001a\u0010(\u001a\u00020\'2\u0008\u0010&\u001a\u0004\u0018\u00010%H\u00d6\u0003\u00a2\u0006\u0004\u0008(\u0010)R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010*\u001a\u0004\u0008+\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010,\u001a\u0004\u0008-\u0010\u0015R\u0017\u0010\u0006\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010*\u001a\u0004\u0008.\u0010\u0013R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010/\u001a\u0004\u00080\u0010\u0018R\"\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010/\u001a\u0004\u00081\u0010\u0018\"\u0004\u00082\u00103R$\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010,\u001a\u0004\u00084\u0010\u0015\"\u0004\u00085\u00106R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010,\u001a\u0004\u00087\u0010\u0015\"\u0004\u00088\u00106R$\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010,\u001a\u0004\u00089\u0010\u0015\"\u0004\u0008:\u00106R$\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010,\u001a\u0004\u0008;\u0010\u0015\"\u0004\u0008<\u00106R$\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010,\u001a\u0004\u0008=\u0010\u0015\"\u0004\u0008>\u00106R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010?\u001a\u0004\u0008@\u0010 \"\u0004\u0008A\u0010B\u00a8\u0006E"
    }
    d2 = {
        "Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;",
        "Ljava/io/Serializable;",
        "",
        "state",
        "",
        "alias",
        "type",
        "",
        "timestamp",
        "totalTime",
        "totalMem",
        "availMem",
        "threshold",
        "totalSize",
        "availableSize",
        "coreSize",
        "<init>",
        "(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V",
        "component1",
        "()I",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "component4",
        "()J",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "()Ljava/lang/Integer;",
        "copy",
        "(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getState",
        "Ljava/lang/String;",
        "getAlias",
        "getType",
        "J",
        "getTimestamp",
        "getTotalTime",
        "setTotalTime",
        "(J)V",
        "getTotalMem",
        "setTotalMem",
        "(Ljava/lang/String;)V",
        "getAvailMem",
        "setAvailMem",
        "getThreshold",
        "setThreshold",
        "getTotalSize",
        "setTotalSize",
        "getAvailableSize",
        "setAvailableSize",
        "Ljava/lang/Integer;",
        "getCoreSize",
        "setCoreSize",
        "(Ljava/lang/Integer;)V",
        "Companion",
        "a",
        "Startup_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/startup/pref/consume/AppStartDotStateEntity$a;

.field public static final DOT_STATE_END:I = 0x3

.field public static final DOT_STATE_PROCESS:I = 0x2

.field public static final DOT_STATE_START:I = 0x1

.field public static final DOT_TYPE_CONSUME:I = 0x3

.field public static final DOT_TYPE_NET:I = 0x2

.field public static final DOT_TYPE_UI:I = 0x1


# instance fields
.field private final alias:Ljava/lang/String;

.field private availMem:Ljava/lang/String;

.field private availableSize:Ljava/lang/String;

.field private coreSize:Ljava/lang/Integer;

.field private final state:I

.field private threshold:Ljava/lang/String;

.field private final timestamp:J

.field private totalMem:Ljava/lang/String;

.field private totalSize:Ljava/lang/String;

.field private totalTime:J

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->Companion:Lcom/transsion/startup/pref/consume/AppStartDotStateEntity$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "alias"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    iput-object p2, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    iput-wide p4, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    iput-wide p6, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    iput-object p8, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    iput-object p9, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    iput-object p10, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    iput-object p11, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    iput-object p12, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    iput-object p13, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v9, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object/from16 v11, p8

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v13, v2

    goto :goto_3

    :cond_3
    move-object/from16 v13, p10

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move-object v14, v2

    goto :goto_4

    :cond_4
    move-object/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move-object v15, v2

    goto :goto_5

    :cond_5
    move-object/from16 v15, p12

    :goto_5
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_6

    :cond_6
    move-object/from16 v16, p13

    :goto_6
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    invoke-direct/range {v3 .. v16}, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;-><init>(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v12, p11

    :goto_8
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p12

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p13

    :goto_a
    move p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->copy(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;
    .locals 15

    const-string v0, "alias"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;

    move-object v1, v0

    move/from16 v2, p1

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v14}, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;-><init>(ILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;

    iget v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    iget v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    iget v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    iget-wide v5, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    iget-wide v5, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvailMem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvailableSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getCoreSize()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    return v0
.end method

.method public final getThreshold()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    return-wide v0
.end method

.method public final getTotalMem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final setAvailMem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    return-void
.end method

.method public final setAvailableSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    return-void
.end method

.method public final setCoreSize(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    return-void
.end method

.method public final setThreshold(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    return-void
.end method

.method public final setTotalMem(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    return-void
.end method

.method public final setTotalSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    return-void
.end method

.method public final setTotalTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget v0, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->state:I

    iget-object v1, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->alias:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->type:I

    iget-wide v3, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->timestamp:J

    iget-wide v5, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalTime:J

    iget-object v7, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalMem:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availMem:Ljava/lang/String;

    iget-object v9, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->threshold:Ljava/lang/String;

    iget-object v10, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->totalSize:Ljava/lang/String;

    iget-object v11, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->availableSize:Ljava/lang/String;

    iget-object v12, p0, Lcom/transsion/startup/pref/consume/AppStartDotStateEntity;->coreSize:Ljava/lang/Integer;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AppStartDotStateEntity(state="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", alias="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalTime="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", totalMem="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", availMem="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", threshold="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", totalSize="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", availableSize="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", coreSize="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
