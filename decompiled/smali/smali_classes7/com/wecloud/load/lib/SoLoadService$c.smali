.class public final Lcom/wecloud/load/lib/SoLoadService$c;
.super Lcom/wecloud/load/lib/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wecloud/load/lib/SoLoadService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wecloud/load/lib/SoLoadService;


# direct methods
.method constructor <init>(Lcom/wecloud/load/lib/SoLoadService;)V
    .locals 0

    iput-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$c;->a:Lcom/wecloud/load/lib/SoLoadService;

    invoke-direct {p0}, Lcom/wecloud/load/lib/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/wecloud/load/lib/SoLoadService$c;->a:Lcom/wecloud/load/lib/SoLoadService;

    invoke-static {v1}, Lcom/wecloud/load/lib/SoLoadService;->e(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public D(Lcom/wecloud/load/lib/SoDownloadRequest;Lcom/wecloud/load/lib/h;)V
    .locals 1

    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$c;->a:Lcom/wecloud/load/lib/SoLoadService;

    invoke-static {v0, p2}, Lcom/wecloud/load/lib/SoLoadService;->o(Lcom/wecloud/load/lib/SoLoadService;Lcom/wecloud/load/lib/h;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$c;->a:Lcom/wecloud/load/lib/SoLoadService;

    const/16 p2, 0x3e9

    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u4e3a\u7a7a"

    invoke-static {p1, p2, v0}, Lcom/wecloud/load/lib/SoLoadService;->j(Lcom/wecloud/load/lib/SoLoadService;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/wecloud/load/lib/SoLoadService$c;->a:Lcom/wecloud/load/lib/SoLoadService;

    invoke-static {p2, p1}, Lcom/wecloud/load/lib/SoLoadService;->b(Lcom/wecloud/load/lib/SoLoadService;Lcom/wecloud/load/lib/SoDownloadRequest;)V

    iget-object p1, p0, Lcom/wecloud/load/lib/SoLoadService$c;->a:Lcom/wecloud/load/lib/SoLoadService;

    invoke-virtual {p1}, Lcom/wecloud/load/lib/SoLoadService;->z()V

    return-void
.end method

.method public K0(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wecloud/load/lib/SoLoadService$c;->a:Lcom/wecloud/load/lib/SoLoadService;

    invoke-static {v0}, Lcom/wecloud/load/lib/SoLoadService;->g(Lcom/wecloud/load/lib/SoLoadService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
