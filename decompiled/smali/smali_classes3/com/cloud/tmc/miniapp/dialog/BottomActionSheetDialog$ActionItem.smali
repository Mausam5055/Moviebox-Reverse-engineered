.class public final Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;
.super Lcom/cloud/tmc/kernel/model/BaseBean;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final color:Ljava/lang/String;

.field private final disabledColor:Ljava/lang/String;

.field private final enable:Z

.field private final icon:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final maskColor:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "disabledColor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskColor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    iput-object p6, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p9, v0

    goto :goto_0

    :cond_0
    move-object p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    const-string p4, "#4D191F2B"

    :cond_3
    move-object v3, p4

    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    const/4 p5, 0x1

    :cond_4
    move v4, p5

    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, p6

    :goto_3
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    const-string p7, "#0F191F2B"

    :cond_6
    move-object p8, p7

    move-object p1, p0

    move-object p2, p9

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move p6, v4

    move-object p7, v0

    invoke-direct/range {p1 .. p8}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;
    .locals 9

    const-string v0, "disabledColor"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maskColor"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisabledColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    return v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaskColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :cond_3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->color:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->disabledColor:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->enable:Z

    iget-object v5, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->icon:Ljava/lang/String;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/dialog/BottomActionSheetDialog$ActionItem;->maskColor:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActionItem(id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", text="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", color="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", disabledColor="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", enable="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", maskColor="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
