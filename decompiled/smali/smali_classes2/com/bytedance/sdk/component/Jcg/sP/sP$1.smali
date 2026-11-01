.class Lcom/bytedance/sdk/component/Jcg/sP/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/sP/Sj/TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/component/Jcg/sP/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Jcg/sP/sP;Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Lcom/bytedance/sdk/component/sP/Sj/Zq;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    if-eqz p1, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/sP/Sj/vS;->sP(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    :goto_1
    move-object v5, p1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->sP()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    new-instance p1, Lcom/bytedance/sdk/component/Jcg/sP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->EjP()Z

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->HiB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->sP()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Sj()J

    move-result-wide v8

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/component/Jcg/sP;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/Jcg/Sj/Sj;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/sP/sP$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP/sP;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method
