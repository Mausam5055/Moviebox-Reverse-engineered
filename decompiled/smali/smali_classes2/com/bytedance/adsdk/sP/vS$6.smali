.class Lcom/bytedance/adsdk/sP/vS$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Ym;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/sP/Ym<",
        "Lcom/bytedance/adsdk/sP/Jcg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$6;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/sP/Jcg;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$6;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/sP/vS;->setComposition(Lcom/bytedance/adsdk/sP/Jcg;)V

    return-void
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/adsdk/sP/Jcg;

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/vS$6;->Sj(Lcom/bytedance/adsdk/sP/Jcg;)V

    return-void
.end method
