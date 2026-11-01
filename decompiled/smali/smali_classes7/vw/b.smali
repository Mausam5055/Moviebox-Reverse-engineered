.class public final Lvw/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:Lcom/transsion/usercenter/setting/bean/UserSettingType;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private final e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(ILcom/transsion/usercenter/setting/bean/UserSettingType;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lvw/b;->a:I

    iput-object p2, p0, Lvw/b;->b:Lcom/transsion/usercenter/setting/bean/UserSettingType;

    iput-object p3, p0, Lvw/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lvw/b;->d:Ljava/lang/Integer;

    iput p5, p0, Lvw/b;->e:I

    iput-object p6, p0, Lvw/b;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lvw/b;->g:Z

    iput-boolean p8, p0, Lvw/b;->h:Z

    iput-boolean p9, p0, Lvw/b;->i:Z

    iput-boolean p10, p0, Lvw/b;->j:Z

    return-void
.end method

.method public synthetic constructor <init>(ILcom/transsion/usercenter/setting/bean/UserSettingType;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move/from16 v5, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v2, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    move v7, v8

    goto :goto_5

    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    move v9, v8

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v6, p9

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v8, p10

    :goto_8
    move-object p2, p0

    move p3, p1

    move-object p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move/from16 p7, v5

    move-object/from16 p8, v2

    move/from16 p9, v7

    move/from16 p10, v9

    move/from16 p11, v6

    move/from16 p12, v8

    invoke-direct/range {p2 .. p12}, Lvw/b;-><init>(ILcom/transsion/usercenter/setting/bean/UserSettingType;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/String;ZZZZ)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lvw/b;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lvw/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lvw/b;->k:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lvw/b;->i:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lvw/b;->j:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lvw/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lvw/b;

    iget v1, p0, Lvw/b;->a:I

    iget v3, p1, Lvw/b;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lvw/b;->b:Lcom/transsion/usercenter/setting/bean/UserSettingType;

    iget-object v3, p1, Lvw/b;->b:Lcom/transsion/usercenter/setting/bean/UserSettingType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lvw/b;->c:Ljava/lang/String;

    iget-object v3, p1, Lvw/b;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lvw/b;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lvw/b;->d:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lvw/b;->e:I

    iget v3, p1, Lvw/b;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lvw/b;->f:Ljava/lang/String;

    iget-object v3, p1, Lvw/b;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lvw/b;->g:Z

    iget-boolean v3, p1, Lvw/b;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lvw/b;->h:Z

    iget-boolean v3, p1, Lvw/b;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lvw/b;->i:Z

    iget-boolean v3, p1, Lvw/b;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lvw/b;->j:Z

    iget-boolean p1, p1, Lvw/b;->j:Z

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lvw/b;->h:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lvw/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lvw/b;->g:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lvw/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lvw/b;->b:Lcom/transsion/usercenter/setting/bean/UserSettingType;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lvw/b;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lvw/b;->d:Ljava/lang/Integer;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lvw/b;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lvw/b;->f:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lvw/b;->g:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lvw/b;->h:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lvw/b;->i:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lvw/b;->j:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lvw/b;->a:I

    return v0
.end method

.method public final j()Lcom/transsion/usercenter/setting/bean/UserSettingType;
    .locals 1

    iget-object v0, p0, Lvw/b;->b:Lcom/transsion/usercenter/setting/bean/UserSettingType;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lvw/b;->e:I

    return v0
.end method

.method public final l(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lvw/b;->d:Ljava/lang/Integer;

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lvw/b;->c:Ljava/lang/String;

    return-void
.end method

.method public final n(Z)V
    .locals 0

    iput-boolean p1, p0, Lvw/b;->k:Z

    return-void
.end method

.method public final o(Z)V
    .locals 0

    iput-boolean p1, p0, Lvw/b;->j:Z

    return-void
.end method

.method public final p(Z)V
    .locals 0

    iput-boolean p1, p0, Lvw/b;->h:Z

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lvw/b;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lvw/b;->a:I

    iget-object v1, p0, Lvw/b;->b:Lcom/transsion/usercenter/setting/bean/UserSettingType;

    iget-object v2, p0, Lvw/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lvw/b;->d:Ljava/lang/Integer;

    iget v4, p0, Lvw/b;->e:I

    iget-object v5, p0, Lvw/b;->f:Ljava/lang/String;

    iget-boolean v6, p0, Lvw/b;->g:Z

    iget-boolean v7, p0, Lvw/b;->h:Z

    iget-boolean v8, p0, Lvw/b;->i:Z

    iget-boolean v9, p0, Lvw/b;->j:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UserSettingEntity(titleResId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", content="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bgId="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", uiType="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", tips="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tipsLinearColor="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", switch="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showDivider="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showNewIcon="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
