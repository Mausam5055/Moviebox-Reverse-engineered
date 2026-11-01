.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;
.super Ljava/lang/Object;


# instance fields
.field public OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

.field public OooO0O0:I

.field public OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

.field public OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

.field public OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

.field public OooO0o0:I

.field public OooO0oO:Z

.field public OooO0oo:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;-><init>(Lcom/cloud/tmc/kernel/render/IRender;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;ILcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;ZZI)V

    return-void
.end method

.method public constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;ILcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    iput p2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iput p5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    iput-boolean p7, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    iput-boolean p8, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cloud/tmc/kernel/render/IRender;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;ILcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;ZZI)V
    .locals 8

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p5

    :goto_1
    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v2, p8

    :goto_3
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object p1, p0

    move-object p2, v0

    move p3, v1

    move-object p4, v5

    move-object p5, v6

    move p6, v3

    move-object p7, v7

    move/from16 p8, v4

    move/from16 p9, v2

    invoke-direct/range {p1 .. p9}, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;-><init>(Lcom/cloud/tmc/kernel/render/IRender;ILcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;ILcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;ZZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO00o:Lcom/cloud/tmc/kernel/render/IRender;

    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0O0:I

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0OO:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0Oo:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    iget v4, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o0:I

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0o:Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooOO0;

    iget-boolean v6, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oO:Z

    iget-boolean v7, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/screen/OooO0O0;->OooO0oo:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PageData(render="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", renderConnectionStatus="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", renderSubscriber="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", checkWhiteScreenSubscriber="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", renderStatus="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeCountTask="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", checkFinished="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", onPageReady="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
