.class public final Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;
.super Ljava/lang/Object;


# instance fields
.field public OooO00o:I

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;

    iget v1, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO00o:I

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0O0:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/utils/athena/OooO00o;->OooO0OO:Landroid/os/Bundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AthenaDataBean(athenaAppId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", event="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
