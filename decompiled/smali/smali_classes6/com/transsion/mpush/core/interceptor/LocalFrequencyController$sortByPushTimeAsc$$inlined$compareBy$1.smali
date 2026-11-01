.class public final Lcom/transsion/mpush/core/interceptor/LocalFrequencyController$sortByPushTimeAsc$$inlined$compareBy$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->j(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    check-cast p1, Lcom/transsion/mpush/api/LocalPushMessage;

    sget-object v0, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->a:Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getPushTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->a(Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    check-cast p2, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {p2}, Lcom/transsion/mpush/api/LocalPushMessage;->getPushTime()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;->a(Lcom/transsion/mpush/core/interceptor/LocalFrequencyController;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    move-object v1, p2

    :cond_1
    invoke-static {p1, v1}, Lkotlin/comparisons/ComparisonsKt;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
