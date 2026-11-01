.class public Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/EjP/TEQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/TzV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sP"
.end annotation


# instance fields
.field private final EjP:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/model/TzV;",
            ">;"
        }
    .end annotation
.end field

.field private final Sj:I

.field private final TKC:Ljava/lang/String;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method public constructor <init>(ILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;->Sj:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;->TKC:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;->EjP:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public Sj(I)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;->EjP:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;->Sj:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I

    move-result v2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I

    move-result v3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I

    move-result v4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I

    move-result v0

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;->TKC:Ljava/lang/String;

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$Sj;->Sj(IIIILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
