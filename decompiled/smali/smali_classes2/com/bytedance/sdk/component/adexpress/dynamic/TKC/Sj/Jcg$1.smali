.class Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Dq;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/view/ViewGroup;

.field final synthetic sP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg$1;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg$1;->Sj:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg$1;->Sj:Landroid/view/ViewGroup;

    const v1, 0x7d06fffa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg$1;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/TKC/Sj/Jcg;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    return-void
.end method
