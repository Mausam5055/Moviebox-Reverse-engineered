.class final Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lv5/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lv5/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:J

.field final synthetic HiB:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

.field final synthetic Sj:Lv5/a$a;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method constructor <init>(Lv5/a$a;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;JLcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->Sj:Lv5/a$a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->EjP:J

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->HiB:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->Sj:Lv5/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lv5/a$a;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->EjP:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->HiB:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    :cond_1
    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->Sj:Lv5/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lv5/a$a;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;ILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->EjP:J

    sub-long v7, v0, v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->HiB:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    move v9, p2

    move-object v10, p3

    invoke-static/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->Sj:Lv5/a$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lv5/a$a;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;I)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->HiB:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$1;->HiB:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    return-void
.end method
