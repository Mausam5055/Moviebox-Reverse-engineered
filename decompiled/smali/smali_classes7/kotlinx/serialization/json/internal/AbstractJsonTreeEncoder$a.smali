.class public final Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;
.super Le00/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->o0(Ljava/lang/String;Lkotlinx/serialization/descriptors/f;)Le00/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Lf00/c;

.field final synthetic b:Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->b:Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Le00/b;-><init>()V

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->d()Lkotlinx/serialization/json/a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/a;->a()Lf00/c;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->a:Lf00/c;

    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 0

    invoke-static {p1}, Lkotlin/UInt;->b(I)I

    move-result p1

    invoke-static {p1}, Lkotlinx/serialization/json/internal/e;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->K(Ljava/lang/String;)V

    return-void
.end method

.method public final K(Ljava/lang/String;)V
    .locals 4

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->b:Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->c:Ljava/lang/String;

    new-instance v2, Lkotlinx/serialization/json/o;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lkotlinx/serialization/json/o;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->w0(Ljava/lang/String;Lkotlinx/serialization/json/h;)V

    return-void
.end method

.method public a()Lf00/c;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->a:Lf00/c;

    return-object v0
.end method

.method public h(B)V
    .locals 0

    invoke-static {p1}, Lkotlin/UByte;->b(B)B

    move-result p1

    invoke-static {p1}, Lkotlin/UByte;->f(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->K(Ljava/lang/String;)V

    return-void
.end method

.method public m(J)V
    .locals 0

    invoke-static {p1, p2}, Lkotlin/ULong;->b(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/d;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->K(Ljava/lang/String;)V

    return-void
.end method

.method public q(S)V
    .locals 0

    invoke-static {p1}, Lkotlin/UShort;->b(S)S

    move-result p1

    invoke-static {p1}, Lkotlin/UShort;->f(S)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder$a;->K(Ljava/lang/String;)V

    return-void
.end method
