.class public final Lcom/transsion/lib_web/domain/LoadInfoStats;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001c\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0006\"\u0004\u0008\u001f\u0010\u0008R\u001c\u0010 \u001a\u0004\u0018\u00010!X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/lib_web/domain/LoadInfoStats;",
        "",
        "<init>",
        "()V",
        "isLoadSuccess",
        "",
        "()Z",
        "setLoadSuccess",
        "(Z)V",
        "load_time",
        "",
        "getLoad_time",
        "()Ljava/lang/Long;",
        "setLoad_time",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "error_msg",
        "",
        "getError_msg",
        "()Ljava/lang/String;",
        "setError_msg",
        "(Ljava/lang/String;)V",
        "error_code",
        "",
        "getError_code",
        "()Ljava/lang/Integer;",
        "setError_code",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "reload",
        "getReload",
        "setReload",
        "dom_performance",
        "Lcom/transsion/lib_web/domain/DomPerformance;",
        "getDom_performance",
        "()Lcom/transsion/lib_web/domain/DomPerformance;",
        "setDom_performance",
        "(Lcom/transsion/lib_web/domain/DomPerformance;)V",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private dom_performance:Lcom/transsion/lib_web/domain/DomPerformance;

.field private error_code:Ljava/lang/Integer;

.field private error_msg:Ljava/lang/String;

.field private isLoadSuccess:Z

.field private load_time:Ljava/lang/Long;

.field private reload:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->load_time:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getDom_performance()Lcom/transsion/lib_web/domain/DomPerformance;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->dom_performance:Lcom/transsion/lib_web/domain/DomPerformance;

    return-object v0
.end method

.method public final getError_code()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->error_code:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getError_msg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public final getLoad_time()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->load_time:Ljava/lang/Long;

    return-object v0
.end method

.method public final getReload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->reload:Z

    return v0
.end method

.method public final isLoadSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->isLoadSuccess:Z

    return v0
.end method

.method public final setDom_performance(Lcom/transsion/lib_web/domain/DomPerformance;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->dom_performance:Lcom/transsion/lib_web/domain/DomPerformance;

    return-void
.end method

.method public final setError_code(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->error_code:Ljava/lang/Integer;

    return-void
.end method

.method public final setError_msg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public final setLoadSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->isLoadSuccess:Z

    return-void
.end method

.method public final setLoad_time(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->load_time:Ljava/lang/Long;

    return-void
.end method

.method public final setReload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/lib_web/domain/LoadInfoStats;->reload:Z

    return-void
.end method
