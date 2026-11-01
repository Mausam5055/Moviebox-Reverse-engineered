.class Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;->sP(Ljava/io/File;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Ljava/util/Map;

.field final synthetic sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj$1;->sP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj$1;->Sj:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj$1;->Sj:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj$1;->Sj:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/Sj/Sj$1;->Sj(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
