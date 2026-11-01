.class public Lcom/bytedance/sdk/component/Sj/dNu;
.super Ljava/lang/Object;


# static fields
.field static Sj:Lcom/bytedance/sdk/component/Sj/zR;


# instance fields
.field private final EjP:Lcom/bytedance/sdk/component/Sj/TEQ;

.field private final HiB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Sj/sef;",
            ">;"
        }
    .end annotation
.end field

.field private final TKC:Landroid/webkit/WebView;

.field private final sP:Lcom/bytedance/sdk/component/Sj/Sj;

.field private volatile vS:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Sj/TEQ;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/dNu;->HiB:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/Sj/dNu;->vS:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/dNu;->EjP:Lcom/bytedance/sdk/component/Sj/TEQ;

    iget-boolean v1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->Dq:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/component/Sj/dNu;->Sj:Lcom/bytedance/sdk/component/Sj/zR;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    throw v2

    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    if-nez v1, :cond_2

    new-instance v1, Lcom/bytedance/sdk/component/Sj/uP;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Sj/uP;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Sj/dNu;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/bytedance/sdk/component/Sj/dNu;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    iput-object v1, p0, Lcom/bytedance/sdk/component/Sj/dNu;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/dNu;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Sj/TEQ;Lcom/bytedance/sdk/component/Sj/dx;)V

    iget-object v1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/bytedance/sdk/component/Sj/dNu;->TKC:Landroid/webkit/WebView;

    iget-object v1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->TEQ:Lcom/bytedance/sdk/component/Sj/sef;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p1, Lcom/bytedance/sdk/component/Sj/TEQ;->Jcg:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/kF;->Sj(Z)V

    return-void
.end method

.method public static Sj(Landroid/webkit/WebView;)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/Sj/TEQ;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Sj/TEQ;-><init>(Landroid/webkit/WebView;)V

    return-object v0
.end method

.method private sP()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/dNu;->vS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsBridge2 is already released!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/uA;->Sj(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/EjP$sP;)Lcom/bytedance/sdk/component/Sj/dNu;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/EjP$sP;)Lcom/bytedance/sdk/component/Sj/dNu;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Sj/HiB<",
            "**>;)",
            "Lcom/bytedance/sdk/component/Sj/dNu;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/EjP$sP;)Lcom/bytedance/sdk/component/Sj/dNu;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/dNu;->sP()V

    iget-object p2, p0, Lcom/bytedance/sdk/component/Sj/dNu;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/component/Sj/Sj;->Jcg:Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/EjP$sP;)V

    return-object p0
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Sj/HiB<",
            "**>;)",
            "Lcom/bytedance/sdk/component/Sj/dNu;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/dNu;->sP()V

    iget-object p2, p0, Lcom/bytedance/sdk/component/Sj/dNu;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/component/Sj/Sj;->Jcg:Lcom/bytedance/sdk/component/Sj/Jcg;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/Sj/Jcg;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)V

    return-object p0
.end method

.method public Sj()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/dNu;->vS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/dNu;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Sj/Sj;->sP()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/dNu;->vS:Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/dNu;->HiB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
