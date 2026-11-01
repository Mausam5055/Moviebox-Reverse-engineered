.class public final Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/nativewebview/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field public OooO:J

.field public OooO00o:Ljava/lang/String;

.field public OooO0O0:Z

.field public OooO0OO:Z

.field public OooO0Oo:Z

.field public OooO0o:Z

.field public OooO0o0:Z

.field public OooO0oO:Ljava/lang/String;

.field public OooO0oo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public OooOO0:Z


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v11, 0x0

    const/16 v12, 0x3ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;JZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;JZ)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressCollectList"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO00o:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0O0:Z

    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0OO:Z

    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0Oo:Z

    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o0:Z

    iput-boolean p6, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o:Z

    iput-object p7, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0oO:Ljava/lang/String;

    iput-object p8, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0oo:Ljava/util/concurrent/ConcurrentHashMap;

    iput-wide p9, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO:J

    iput-boolean p11, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooOO0:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;JZI)V
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    const-string v8, "0"

    goto :goto_6

    :cond_6
    move-object v8, v9

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    goto :goto_7

    :cond_8
    move-wide/from16 v10, p9

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    move/from16 v3, p11

    :goto_8
    move-object p1, p0

    move-object p2, v1

    move p3, v2

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-wide/from16 p10, v10

    move/from16 p12, v3

    invoke-direct/range {p1 .. p12}, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;JZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO00o:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0O0:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0O0:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0OO:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0OO:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0Oo:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0Oo:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o0:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o0:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0oO:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0oO:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0oo:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO:J

    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooOO0:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooOO0:Z

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0O0:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0OO:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0Oo:Z

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o0:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o:Z

    if-eqz v1, :cond_4

    move v1, v2

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0oO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0oo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO:J

    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooOO0:Z

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v0

    :goto_0
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO00o:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0O0:Z

    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0OO:Z

    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0Oo:Z

    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o0:Z

    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0o:Z

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0oO:Ljava/lang/String;

    iget-object v7, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO0oo:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v8, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooO:J

    iget-boolean v10, p0, Lcom/cloud/tmc/miniapp/nativewebview/OooO0o$OooO00o;->OooOO0:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PageStatus(url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isProgressChangedTo100="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPageFinished="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isHomePage="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isLoadError="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", canGoBack="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", virtual_h5PageId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", progressCollectList="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", progressStartTime="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isDomContentLoaded="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
