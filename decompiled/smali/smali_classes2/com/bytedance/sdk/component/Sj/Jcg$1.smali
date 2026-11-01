.class Lcom/bytedance/sdk/component/Sj/Jcg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/Sj/EjP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/EjP;Lcom/bytedance/sdk/component/Sj/vS;)Lcom/bytedance/sdk/component/Sj/Jcg$Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Sj/uvD;

.field final synthetic TKC:Lcom/bytedance/sdk/component/Sj/Jcg;

.field final synthetic sP:Lcom/bytedance/sdk/component/Sj/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Sj/Jcg;Lcom/bytedance/sdk/component/Sj/uvD;Lcom/bytedance/sdk/component/Sj/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->TKC:Lcom/bytedance/sdk/component/Sj/Jcg;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->Sj:Lcom/bytedance/sdk/component/Sj/uvD;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->sP:Lcom/bytedance/sdk/component/Sj/EjP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->TKC:Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/Sj/Jcg;)Lcom/bytedance/sdk/component/Sj/Sj;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->TKC:Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/Sj/Jcg;)Lcom/bytedance/sdk/component/Sj/Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->TKC:Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-static {v1}, Lcom/bytedance/sdk/component/Sj/Jcg;->sP(Lcom/bytedance/sdk/component/Sj/Jcg;)Lcom/bytedance/sdk/component/Sj/Dq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/Sj/Dq;->Sj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/kF;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->Sj:Lcom/bytedance/sdk/component/Sj/uvD;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/Sj/Sj;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->TKC:Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/Jcg;->TKC(Lcom/bytedance/sdk/component/Sj/Jcg;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->sP:Lcom/bytedance/sdk/component/Sj/EjP;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->TKC:Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/Sj/Jcg;)Lcom/bytedance/sdk/component/Sj/Sj;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->TKC:Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Lcom/bytedance/sdk/component/Sj/Jcg;)Lcom/bytedance/sdk/component/Sj/Sj;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/kF;->Sj(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->Sj:Lcom/bytedance/sdk/component/Sj/uvD;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/Sj/Sj;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->TKC:Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/Jcg;->TKC(Lcom/bytedance/sdk/component/Sj/Jcg;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Jcg$1;->sP:Lcom/bytedance/sdk/component/Sj/EjP;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
