.class public final Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;
.super Lcom/cloud/tmc/kernel/model/BaseBean;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private customStyle:Z

.field private dotBadge:Z

.field private icon:I

.field private final id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    iput p2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;Ljava/lang/String;ILjava/lang/String;ZZILjava/lang/Object;)Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move-object p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->copy(Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCustomStyle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    return v0
.end method

.method public final getDotBadge()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    return v0
.end method

.method public final getIcon()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    :cond_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public final setCustomStyle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    return-void
.end method

.method public final setDotBadge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    return-void
.end method

.method public final setIcon(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->id:Ljava/lang/String;

    iget v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->icon:I

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->name:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->dotBadge:Z

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomDialog$MenuItem;->customStyle:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MenuItem(id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dotBadge="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", customStyle="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
