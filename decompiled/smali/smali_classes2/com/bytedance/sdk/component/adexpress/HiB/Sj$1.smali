.class Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/sP/sef;

.field final synthetic TKC:F

.field final synthetic sP:F


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/HiB/Sj;Lcom/bytedance/sdk/component/adexpress/sP/sef;FF)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;->EjP:Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;->sP:F

    iput p4, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;->TKC:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;->EjP:Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;->sP:F

    iget v3, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;->TKC:F

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/HiB/Sj;Lcom/bytedance/sdk/component/adexpress/sP/sef;FF)V

    return-void
.end method
