.class Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj$1;->Sj:Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj$1$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj$1$1;-><init>(Lcom/bytedance/adsdk/ugeno/uA/Sj/Sj$1;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method
