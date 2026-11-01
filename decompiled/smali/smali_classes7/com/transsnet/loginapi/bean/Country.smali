.class public Lcom/transsnet/loginapi/bean/Country;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/transsnet/loginapi/bean/Country;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private country_s:Ljava/lang/String;

.field private transient filter:Lcom/transsnet/loginapi/bean/SearchFilter;

.field private index:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private sortKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsnet/loginapi/bean/DefaultSearch;

    invoke-direct {v0}, Lcom/transsnet/loginapi/bean/DefaultSearch;-><init>()V

    iput-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->filter:Lcom/transsnet/loginapi/bean/SearchFilter;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/transsnet/loginapi/bean/Country;)I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->sortKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsnet/loginapi/bean/Country;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/transsnet/loginapi/bean/Country;

    invoke-virtual {p0, p1}, Lcom/transsnet/loginapi/bean/Country;->compareTo(Lcom/transsnet/loginapi/bean/Country;)I

    move-result p1

    return p1
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCodeAndAdd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    const-string v1, "+"

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry_s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->country_s:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->index:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->mcc:Ljava/lang/String;

    return-object v0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->filter:Lcom/transsnet/loginapi/bean/SearchFilter;

    invoke-virtual {v0, p1}, Lcom/transsnet/loginapi/bean/SearchFilter;->getFullSpell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/loginapi/bean/Country;->sortKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/Country;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountry_s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/Country;->country_s:Ljava/lang/String;

    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/Country;->index:Ljava/lang/String;

    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/Country;->mcc:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country [country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsnet/loginapi/bean/Country;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsnet/loginapi/bean/Country;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sortKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsnet/loginapi/bean/Country;->sortKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
