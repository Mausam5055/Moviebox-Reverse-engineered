.class public Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;
.super Ljava/lang/Object;


# static fields
.field private static final NEXT_SINGLEINSTANCE_STUB_IDX_SLOTS:[I

.field private static final NEXT_SINGLETASK_STUB_IDX_SLOTS:[I

.field private static final NEXT_SINGLETOP_STUB_IDX_SLOTS:[I

.field private static final NEXT_STANDARD_STUB_IDX_SLOTS:[I

.field private static final SINGLEINSTANCE_STUB_COUNT_SLOTS:[I

.field private static final SINGLETASK_STUB_COUNT_SLOTS:[I

.field private static final SINGLETOP_STUB_COUNT_SLOTS:[I

.field private static final STANDARD_STUB_COUNT_SLOTS:[I

.field private static sTargetToStubClassNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->sTargetToStubClassNameMap:Ljava/util/Map;

    const/16 v0, 0xa

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->STANDARD_STUB_COUNT_SLOTS:[I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLETOP_STUB_COUNT_SLOTS:[I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLETASK_STUB_COUNT_SLOTS:[I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLEINSTANCE_STUB_COUNT_SLOTS:[I

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_STANDARD_STUB_IDX_SLOTS:[I

    filled-new-array {v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLETOP_STUB_IDX_SLOTS:[I

    filled-new-array {v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLETASK_STUB_IDX_SLOTS:[I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLEINSTANCE_STUB_IDX_SLOTS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static assignStub(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->sTargetToStubClassNameMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    sget-object p1, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->STARDARD_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_STANDARD_STUB_IDX_SLOTS:[I

    sget-object v3, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->STANDARD_STUB_COUNT_SLOTS:[I

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->SINGLEINSTANCE_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLEINSTANCE_STUB_IDX_SLOTS:[I

    sget-object v3, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLEINSTANCE_STUB_COUNT_SLOTS:[I

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->SINGLETASK_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLETASK_STUB_IDX_SLOTS:[I

    sget-object v3, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLETASK_STUB_COUNT_SLOTS:[I

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->SINGLETOP_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    sget-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->NEXT_SINGLETOP_STUB_IDX_SLOTS:[I

    sget-object v3, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->SINGLETOP_STUB_COUNT_SLOTS:[I

    :goto_0
    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_T"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move p2, v1

    goto :goto_1

    :cond_4
    move p2, v0

    :goto_1
    aget v4, v2, p2

    add-int/lit8 v5, v4, 0x1

    aput v5, v2, p2

    aget v3, v3, p2

    if-lt v4, v3, :cond_5

    aput v0, v2, p2

    move v4, v0

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/tencent/tinker/loader/hotplug/ActivityStubManager;->sTargetToStubClassNameMap:Ljava/util/Map;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
