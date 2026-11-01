.class public Lcom/bytedance/sdk/openadsdk/utils/ley$Sj;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/ley;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# static fields
.field public static Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sP:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ley$Sj;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/ley$Sj;->sP:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static Sj()V
    .locals 7

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ley$Sj;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/ley$Sj;->sP:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/32 v5, 0x927c0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/ley$Sj;

    const-string v1, "UpdateSimStatusTask"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ley$Sj;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ley$Sj;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ley;->EjP()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/ley$Sj;->Sj:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
