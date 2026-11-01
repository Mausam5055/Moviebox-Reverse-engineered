.class public Lcom/bytedance/sdk/component/Sj/TEQ;
.super Ljava/lang/Object;


# instance fields
.field Dq:Z

.field EjP:Lcom/bytedance/sdk/component/Sj/Dq;

.field final Fmk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field HiB:Landroid/content/Context;

.field Jcg:Z

.field Sj:Landroid/webkit/WebView;

.field TEQ:Lcom/bytedance/sdk/component/Sj/sef;

.field TKC:Ljava/lang/String;

.field Ym:Ljava/lang/String;

.field Zq:Z

.field final aa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sP:Lcom/bytedance/sdk/component/Sj/Sj;

.field sef:Z

.field uA:Lcom/bytedance/sdk/component/Sj/Fmk;

.field uvD:Lcom/bytedance/sdk/component/Sj/Ym$Sj;

.field vS:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IESJSBridge"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC:Ljava/lang/String;

    const-string v0, "host"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Ym:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->aa:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Fmk:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IESJSBridge"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC:Ljava/lang/String;

    const-string v0, "host"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Ym:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->aa:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Fmk:Ljava/util/Set;

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj:Landroid/webkit/WebView;

    return-void
.end method

.method private TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->sef:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->EjP:Lcom/bytedance/sdk/component/Sj/Dq;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested arguments aren\'t set properly when building JsBridge."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Zq:Z

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/Sj/Sj;)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/Sj/aa;)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/Sj/aa;)Lcom/bytedance/sdk/component/Sj/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->EjP:Lcom/bytedance/sdk/component/Sj/Dq;

    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC:Ljava/lang/String;

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->vS:Z

    return-object p0
.end method

.method public sP(Z)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Jcg:Z

    return-object p0
.end method

.method public sP()Lcom/bytedance/sdk/component/Sj/dNu;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC()V

    new-instance v0, Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Sj/dNu;-><init>(Lcom/bytedance/sdk/component/Sj/TEQ;)V

    return-object v0
.end method
