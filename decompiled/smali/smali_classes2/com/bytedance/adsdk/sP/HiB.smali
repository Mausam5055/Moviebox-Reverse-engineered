.class public Lcom/bytedance/adsdk/sP/HiB;
.super Ljava/lang/Object;


# static fields
.field private static Dq:I = 0x0

.field private static EjP:Z = true

.field private static HiB:[Ljava/lang/String; = null

.field private static Jcg:I = 0x0

.field public static Sj:Z = false

.field private static TEQ:Lcom/bytedance/adsdk/sP/EjP/HiB; = null

.field private static TKC:Z = true

.field private static volatile Ym:Lcom/bytedance/adsdk/sP/EjP/Dq;

.field private static volatile aa:Lcom/bytedance/adsdk/sP/EjP/Jcg;

.field private static sP:Z

.field private static uA:Lcom/bytedance/adsdk/sP/EjP/vS;

.field private static vS:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static Sj(Landroid/content/Context;)Lcom/bytedance/adsdk/sP/EjP/Dq;
    .locals 3

    sget-object v0, Lcom/bytedance/adsdk/sP/HiB;->Ym:Lcom/bytedance/adsdk/sP/EjP/Dq;

    if-nez v0, :cond_2

    const-class v0, Lcom/bytedance/adsdk/sP/EjP/Dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/sP/HiB;->Ym:Lcom/bytedance/adsdk/sP/EjP/Dq;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bytedance/adsdk/sP/EjP/Dq;

    invoke-static {p0}, Lcom/bytedance/adsdk/sP/HiB;->sP(Landroid/content/Context;)Lcom/bytedance/adsdk/sP/EjP/Jcg;

    move-result-object p0

    sget-object v2, Lcom/bytedance/adsdk/sP/HiB;->uA:Lcom/bytedance/adsdk/sP/EjP/vS;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/adsdk/sP/EjP/sP;

    invoke-direct {v2}, Lcom/bytedance/adsdk/sP/EjP/sP;-><init>()V

    :goto_0
    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/sP/EjP/Dq;-><init>(Lcom/bytedance/adsdk/sP/EjP/Jcg;Lcom/bytedance/adsdk/sP/EjP/vS;)V

    sput-object v1, Lcom/bytedance/adsdk/sP/HiB;->Ym:Lcom/bytedance/adsdk/sP/EjP/Dq;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    :cond_2
    :goto_3
    return-object v0
.end method

.method public static Sj(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/bytedance/adsdk/sP/HiB;->sP:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/adsdk/sP/HiB;->Jcg:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    sget p0, Lcom/bytedance/adsdk/sP/HiB;->Dq:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/bytedance/adsdk/sP/HiB;->Dq:I

    return-void

    :cond_1
    sget-object v1, Lcom/bytedance/adsdk/sP/HiB;->HiB:[Ljava/lang/String;

    aput-object p0, v1, v0

    sget-object v1, Lcom/bytedance/adsdk/sP/HiB;->vS:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget p0, Lcom/bytedance/adsdk/sP/HiB;->Jcg:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/bytedance/adsdk/sP/HiB;->Jcg:I

    return-void
.end method

.method public static Sj()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/adsdk/sP/HiB;->EjP:Z

    return v0
.end method

.method public static sP(Ljava/lang/String;)F
    .locals 4

    sget v0, Lcom/bytedance/adsdk/sP/HiB;->Dq:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/bytedance/adsdk/sP/HiB;->Dq:I

    return v1

    :cond_0
    sget-boolean v0, Lcom/bytedance/adsdk/sP/HiB;->sP:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget v0, Lcom/bytedance/adsdk/sP/HiB;->Jcg:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/bytedance/adsdk/sP/HiB;->Jcg:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/bytedance/adsdk/sP/HiB;->HiB:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object p0, Lcom/bytedance/adsdk/sP/HiB;->vS:[J

    sget v2, Lcom/bytedance/adsdk/sP/HiB;->Jcg:I

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    long-to-float p0, v0

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p0, v0

    return p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unbalanced trace call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/bytedance/adsdk/sP/HiB;->HiB:[Ljava/lang/String;

    sget v2, Lcom/bytedance/adsdk/sP/HiB;->Jcg:I

    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t end trace section. There are none."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sP(Landroid/content/Context;)Lcom/bytedance/adsdk/sP/EjP/Jcg;
    .locals 3

    sget-boolean v0, Lcom/bytedance/adsdk/sP/HiB;->TKC:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/bytedance/adsdk/sP/HiB;->aa:Lcom/bytedance/adsdk/sP/EjP/Jcg;

    if-nez v0, :cond_3

    const-class v0, Lcom/bytedance/adsdk/sP/EjP/Jcg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/adsdk/sP/HiB;->aa:Lcom/bytedance/adsdk/sP/EjP/Jcg;

    if-nez v1, :cond_2

    new-instance v1, Lcom/bytedance/adsdk/sP/EjP/Jcg;

    sget-object v2, Lcom/bytedance/adsdk/sP/HiB;->TEQ:Lcom/bytedance/adsdk/sP/EjP/HiB;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/bytedance/adsdk/sP/HiB$1;

    invoke-direct {v2, p0}, Lcom/bytedance/adsdk/sP/HiB$1;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-direct {v1, v2}, Lcom/bytedance/adsdk/sP/EjP/Jcg;-><init>(Lcom/bytedance/adsdk/sP/EjP/HiB;)V

    sput-object v1, Lcom/bytedance/adsdk/sP/HiB;->aa:Lcom/bytedance/adsdk/sP/EjP/Jcg;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw p0

    :cond_3
    :goto_3
    return-object v0
.end method
