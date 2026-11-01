.class Lcom/google/api/MetricDescriptor$ValueType$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/y$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MetricDescriptor$ValueType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/api/MetricDescriptor$ValueType;
    .locals 0

    invoke-static {p1}, Lcom/google/api/MetricDescriptor$ValueType;->forNumber(I)Lcom/google/api/MetricDescriptor$ValueType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/y$c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/api/MetricDescriptor$ValueType$a;->a(I)Lcom/google/api/MetricDescriptor$ValueType;

    move-result-object p1

    return-object p1
.end method
