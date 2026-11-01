.class Lcom/google/logging/type/LogSeverity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/y$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/logging/type/LogSeverity;
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
.method public a(I)Lcom/google/logging/type/LogSeverity;
    .locals 0

    invoke-static {p1}, Lcom/google/logging/type/LogSeverity;->forNumber(I)Lcom/google/logging/type/LogSeverity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/y$c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/logging/type/LogSeverity$a;->a(I)Lcom/google/logging/type/LogSeverity;

    move-result-object p1

    return-object p1
.end method
