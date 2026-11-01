.class Lcom/bytedance/adsdk/ugeno/sP/TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object v0, p1, Lcom/bytedance/adsdk/ugeno/sP/TKC;->eMB:Lcom/bytedance/adsdk/ugeno/core/vS;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Lcom/bytedance/adsdk/ugeno/sP/TKC;)Z

    :cond_0
    return-void
.end method
