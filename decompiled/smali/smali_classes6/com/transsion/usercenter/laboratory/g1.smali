.class public final Lcom/transsion/usercenter/laboratory/g1;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private final b:Lcom/transsion/ad/db/mcc/LocalMcc;


# direct methods
.method public constructor <init>(ZLcom/transsion/ad/db/mcc/LocalMcc;)V
    .locals 1

    const-string v0, "localMcc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/usercenter/laboratory/g1;->a:Z

    iput-object p2, p0, Lcom/transsion/usercenter/laboratory/g1;->b:Lcom/transsion/ad/db/mcc/LocalMcc;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/ad/db/mcc/LocalMcc;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/g1;->b:Lcom/transsion/ad/db/mcc/LocalMcc;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/usercenter/laboratory/g1;->a:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/usercenter/laboratory/g1;->a:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/usercenter/laboratory/g1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/usercenter/laboratory/g1;

    iget-boolean v1, p0, Lcom/transsion/usercenter/laboratory/g1;->a:Z

    iget-boolean v3, p1, Lcom/transsion/usercenter/laboratory/g1;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/usercenter/laboratory/g1;->b:Lcom/transsion/ad/db/mcc/LocalMcc;

    iget-object p1, p1, Lcom/transsion/usercenter/laboratory/g1;->b:Lcom/transsion/ad/db/mcc/LocalMcc;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/usercenter/laboratory/g1;->a:Z

    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/usercenter/laboratory/g1;->b:Lcom/transsion/ad/db/mcc/LocalMcc;

    invoke-virtual {v1}, Lcom/transsion/ad/db/mcc/LocalMcc;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/usercenter/laboratory/g1;->a:Z

    iget-object v1, p0, Lcom/transsion/usercenter/laboratory/g1;->b:Lcom/transsion/ad/db/mcc/LocalMcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NationalInformationEntity(isChecked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", localMcc="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
