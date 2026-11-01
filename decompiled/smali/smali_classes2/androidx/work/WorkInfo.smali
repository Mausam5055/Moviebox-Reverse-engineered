.class public final Landroidx/work/WorkInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkInfo$a;,
        Landroidx/work/WorkInfo$b;,
        Landroidx/work/WorkInfo$State;
    }
.end annotation


# static fields
.field public static final m:Landroidx/work/WorkInfo$a;


# instance fields
.field private final a:Ljava/util/UUID;

.field private final b:Landroidx/work/WorkInfo$State;

.field private final c:Ljava/util/Set;

.field private final d:Landroidx/work/f;

.field private final e:Landroidx/work/f;

.field private final f:I

.field private final g:I

.field private final h:Landroidx/work/d;

.field private final i:J

.field private final j:Landroidx/work/WorkInfo$b;

.field private final k:J

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/WorkInfo$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/WorkInfo$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/WorkInfo;->m:Landroidx/work/WorkInfo$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Ljava/util/Set;Landroidx/work/f;Landroidx/work/f;IILandroidx/work/d;JLandroidx/work/WorkInfo$b;JI)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkInfo;->a:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/work/WorkInfo;->b:Landroidx/work/WorkInfo$State;

    iput-object p3, p0, Landroidx/work/WorkInfo;->c:Ljava/util/Set;

    iput-object p4, p0, Landroidx/work/WorkInfo;->d:Landroidx/work/f;

    iput-object p5, p0, Landroidx/work/WorkInfo;->e:Landroidx/work/f;

    iput p6, p0, Landroidx/work/WorkInfo;->f:I

    iput p7, p0, Landroidx/work/WorkInfo;->g:I

    iput-object p8, p0, Landroidx/work/WorkInfo;->h:Landroidx/work/d;

    iput-wide p9, p0, Landroidx/work/WorkInfo;->i:J

    iput-object p11, p0, Landroidx/work/WorkInfo;->j:Landroidx/work/WorkInfo$b;

    iput-wide p12, p0, Landroidx/work/WorkInfo;->k:J

    iput p14, p0, Landroidx/work/WorkInfo;->l:I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/WorkInfo$State;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkInfo;->b:Landroidx/work/WorkInfo$State;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroidx/work/WorkInfo;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/work/WorkInfo;

    iget v1, p0, Landroidx/work/WorkInfo;->f:I

    iget v2, p1, Landroidx/work/WorkInfo;->f:I

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget v1, p0, Landroidx/work/WorkInfo;->g:I

    iget v2, p1, Landroidx/work/WorkInfo;->g:I

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Landroidx/work/WorkInfo;->a:Ljava/util/UUID;

    iget-object v2, p1, Landroidx/work/WorkInfo;->a:Ljava/util/UUID;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Landroidx/work/WorkInfo;->b:Landroidx/work/WorkInfo$State;

    iget-object v2, p1, Landroidx/work/WorkInfo;->b:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Landroidx/work/WorkInfo;->d:Landroidx/work/f;

    iget-object v2, p1, Landroidx/work/WorkInfo;->d:Landroidx/work/f;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Landroidx/work/WorkInfo;->h:Landroidx/work/d;

    iget-object v2, p1, Landroidx/work/WorkInfo;->h:Landroidx/work/d;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v0

    :cond_7
    iget-wide v1, p0, Landroidx/work/WorkInfo;->i:J

    iget-wide v3, p1, Landroidx/work/WorkInfo;->i:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Landroidx/work/WorkInfo;->j:Landroidx/work/WorkInfo$b;

    iget-object v2, p1, Landroidx/work/WorkInfo;->j:Landroidx/work/WorkInfo$b;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v0

    :cond_9
    iget-wide v1, p0, Landroidx/work/WorkInfo;->k:J

    iget-wide v3, p1, Landroidx/work/WorkInfo;->k:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_a

    return v0

    :cond_a
    iget v1, p0, Landroidx/work/WorkInfo;->l:I

    iget v2, p1, Landroidx/work/WorkInfo;->l:I

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    iget-object v1, p0, Landroidx/work/WorkInfo;->c:Ljava/util/Set;

    iget-object v2, p1, Landroidx/work/WorkInfo;->c:Ljava/util/Set;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    iget-object v0, p0, Landroidx/work/WorkInfo;->e:Landroidx/work/f;

    iget-object p1, p1, Landroidx/work/WorkInfo;->e:Landroidx/work/f;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :cond_d
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/work/WorkInfo;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/WorkInfo;->b:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/WorkInfo;->d:Landroidx/work/f;

    invoke-virtual {v1}, Landroidx/work/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/WorkInfo;->c:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/WorkInfo;->e:Landroidx/work/f;

    invoke-virtual {v1}, Landroidx/work/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/WorkInfo;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/WorkInfo;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/WorkInfo;->h:Landroidx/work/d;

    invoke-virtual {v1}, Landroidx/work/d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/WorkInfo;->i:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/WorkInfo;->j:Landroidx/work/WorkInfo$b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/work/WorkInfo;->k:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/work/WorkInfo;->l:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkInfo{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->b:Landroidx/work/WorkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->d:Landroidx/work/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->e:Landroidx/work/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runAttemptCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/WorkInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/WorkInfo;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->h:Landroidx/work/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/WorkInfo;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", periodicityInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->j:Landroidx/work/WorkInfo$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextScheduleTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/WorkInfo;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}, stopReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/WorkInfo;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
