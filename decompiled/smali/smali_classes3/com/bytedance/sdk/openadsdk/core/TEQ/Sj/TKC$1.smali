.class Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/TKC$1;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/TKC;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/TKC;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/TKC$1;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;)I

    move-result p1

    return p1
.end method
