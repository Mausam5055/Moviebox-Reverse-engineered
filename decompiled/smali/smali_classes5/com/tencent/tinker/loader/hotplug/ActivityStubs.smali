.class final Lcom/tencent/tinker/loader/hotplug/ActivityStubs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_02_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_01_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_00_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_09;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_08;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_07;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_06;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_05;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_04;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_03;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_02;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_01;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SIStub_00;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_02_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_01_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_00_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_09;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_08;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_07;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_06;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_05;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_04;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_03;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_02;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_01;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTKStub_00;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_02_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_01_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_00_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_09;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_08;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_07;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_06;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_05;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_04;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_03;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_02;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_01;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$SGTStub_00;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_02_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_01_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_00_T;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_09;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_08;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_07;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_06;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_05;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_04;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_03;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_02;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_01;,
        Lcom/tencent/tinker/loader/hotplug/ActivityStubs$STDStub_00;
    }
.end annotation


# static fields
.field static final SINGLEINSTANCE_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

.field static final SINGLETASK_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

.field static final SINGLETOP_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

.field static final STARDARD_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

.field static final STUB_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->STUB_PACKAGE_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$STDStub_%02X"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->STARDARD_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$SGTStub_%02X"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->SINGLETOP_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$SGTKStub_%02X"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->SINGLETASK_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$SIStub_%02X"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/loader/hotplug/ActivityStubs;->SINGLEINSTANCE_STUB_CLASSNAME_FORMAT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
