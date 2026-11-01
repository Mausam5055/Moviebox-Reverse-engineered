.class public final Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;
.super Ljava/lang/Object;


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

.field public static final OooO0O0:Lkotlin/Lazy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0$OooO00o;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0O0:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final OooO00o()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO00o;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v2, "STEP_TYPE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/StepType;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0O0;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static final OooO0O0()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0O0;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v2, "STEP_TYPE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/StepType;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO00o;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static final OooO0OO()Lcom/cloud/tmc/miniapp/prepare/steps/o0OoOo0;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO00o:Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;

    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;

    sget-object v1, Lcom/cloud/tmc/miniapp/prepare/steps/structure/OooO0OO;->OooO0oo:Lcom/cloud/tmc/miniapp/prepare/steps/StepType;

    const-string v2, "STEP_TYPE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prepare/steps/subpackage/OooO;-><init>(Lcom/cloud/tmc/miniapp/prepare/steps/StepType;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/prepare/steps/singlepackage/OooO0OO;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final OooO0Oo()Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/prepare/steps/Oooo0;->OooO0O0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
