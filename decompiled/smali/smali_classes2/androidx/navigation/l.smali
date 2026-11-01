.class public final Landroidx/navigation/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/l$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private final d:Z

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZIZZIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/navigation/l;->a:Z

    iput-boolean p2, p0, Landroidx/navigation/l;->b:Z

    iput p3, p0, Landroidx/navigation/l;->c:I

    iput-boolean p4, p0, Landroidx/navigation/l;->d:Z

    iput-boolean p5, p0, Landroidx/navigation/l;->e:Z

    iput p6, p0, Landroidx/navigation/l;->f:I

    iput p7, p0, Landroidx/navigation/l;->g:I

    iput p8, p0, Landroidx/navigation/l;->h:I

    iput p9, p0, Landroidx/navigation/l;->i:I

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;ZZIIII)V
    .locals 12

    move-object v0, p3

    sget-object v1, Landroidx/navigation/NavDestination;->j:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v1, p3}, Landroidx/navigation/NavDestination$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Landroidx/navigation/l;-><init>(ZZIZZIIII)V

    move-object v1, p0

    iput-object v0, v1, Landroidx/navigation/l;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Landroidx/navigation/l;->f:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/navigation/l;->g:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/navigation/l;->h:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Landroidx/navigation/l;->i:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Landroidx/navigation/l;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/navigation/l;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/navigation/l;

    iget-boolean v2, p0, Landroidx/navigation/l;->a:Z

    iget-boolean v3, p1, Landroidx/navigation/l;->a:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/navigation/l;->b:Z

    iget-boolean v3, p1, Landroidx/navigation/l;->b:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/l;->c:I

    iget v3, p1, Landroidx/navigation/l;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/navigation/l;->j:Ljava/lang/String;

    iget-object v3, p1, Landroidx/navigation/l;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/navigation/l;->d:Z

    iget-boolean v3, p1, Landroidx/navigation/l;->d:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/navigation/l;->e:Z

    iget-boolean v3, p1, Landroidx/navigation/l;->e:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/l;->f:I

    iget v3, p1, Landroidx/navigation/l;->f:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/l;->g:I

    iget v3, p1, Landroidx/navigation/l;->g:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/l;->h:I

    iget v3, p1, Landroidx/navigation/l;->h:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/navigation/l;->i:I

    iget p1, p1, Landroidx/navigation/l;->i:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/l;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/l;->a:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/l;->e:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroidx/navigation/l;->g()Z

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/navigation/l;->i()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/navigation/l;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/navigation/l;->j:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/navigation/l;->f()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/navigation/l;->h()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/navigation/l;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/navigation/l;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/navigation/l;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/navigation/l;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/navigation/l;->b:Z

    return v0
.end method
