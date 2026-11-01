.class public final Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000b\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0005\"\u0004\u0008\u0006\u0010\u0004\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;",
        "",
        "isIntercept",
        "",
        "(Z)V",
        "()Z",
        "setIntercept",
        "component1",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private isIntercept:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;-><init>(Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;ZILjava/lang/Object;)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept:Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->copy(Z)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept:Z

    return v0
.end method

.method public final copy(Z)Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isIntercept()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept:Z

    return v0
.end method

.method public final setIntercept(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;->isIntercept:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result(isIntercept="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
