.class public interface abstract Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Sj"
.end annotation


# static fields
.field public static final EjP:Ljava/lang/String;

.field public static final HiB:Ljava/lang/String;

.field public static final Sj:Ljava/lang/String;

.field public static final TKC:Ljava/lang/String;

.field public static final sP:Ljava/lang/String;

.field public static final vS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "load_start"

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v0, "_"

    invoke-static {v0, v2}, Lj6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->Sj:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/CharSequence;

    aput-object v2, v5, v3

    const-string v2, "load_finish"

    aput-object v2, v5, v4

    invoke-static {v0, v5}, Lj6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->sP:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/CharSequence;

    aput-object v2, v5, v3

    const-string v2, "load_url"

    aput-object v2, v5, v4

    invoke-static {v0, v5}, Lj6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->TKC:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->ib()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/CharSequence;

    aput-object v2, v6, v3

    aput-object v5, v6, v4

    invoke-static {v0, v6}, Lj6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->EjP:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->ib()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/CharSequence;

    aput-object v2, v7, v3

    aput-object v5, v7, v4

    const-string v2, "show"

    aput-object v2, v7, v1

    invoke-static {v0, v7}, Lj6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->HiB:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->ib()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v2, v6, v3

    aput-object v5, v6, v4

    const-string v2, "progress"

    aput-object v2, v6, v1

    invoke-static {v0, v6}, Lj6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/TKC/Sj$Sj;->vS:Ljava/lang/String;

    return-void
.end method
