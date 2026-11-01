.class public final Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:J

.field private final d:J

.field private final e:F

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;-><init>(FFJJFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFJJFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->a:F

    iput p2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->b:F

    iput-wide p3, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->c:J

    iput-wide p5, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->d:J

    iput p7, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->e:F

    iput-boolean p8, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(FFJJFZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const/high16 v0, 0x43480000    # 200.0f

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_1

    const/high16 v1, 0x44480000    # 800.0f

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v2, p9, 0x4

    if-eqz v2, :cond_2

    const-wide/16 v2, 0xfa

    goto :goto_2

    :cond_2
    move-wide v2, p3

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    const-wide/16 v4, 0xc8

    goto :goto_3

    :cond_3
    move-wide v4, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    const v6, 0x3f19999a    # 0.6f

    goto :goto_4

    :cond_4
    move v6, p7

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move/from16 v7, p8

    :goto_5
    move-object p1, p0

    move p2, v0

    move p3, v1

    move-wide p4, v2

    move-wide p6, v4

    move/from16 p8, v6

    move/from16 p9, v7

    invoke-direct/range {p1 .. p9}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;-><init>(FFJJFZ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->f:Z

    return v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->d:J

    return-wide v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->a:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->b:F

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;

    iget v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->a:F

    iget v3, p1, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->b:F

    iget v3, p1, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->c:J

    iget-wide v5, p1, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->d:J

    iget-wide v5, p1, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->e:F

    iget v3, p1, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->f:Z

    iget-boolean p1, p1, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->f:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->c:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->d:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->f:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->a:F

    iget v1, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->b:F

    iget-wide v2, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->c:J

    iget-wide v4, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->d:J

    iget v6, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->e:F

    iget-boolean v7, p0, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog$a;->f:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SwipeConfig(dismissThreshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", dismissVelocity="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", restoreDuration="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", dismissDuration="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", minAlpha="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", dimWithContent="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
