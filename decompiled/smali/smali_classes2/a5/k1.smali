.class public La5/k1;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;
.implements Lz4/b2;


# static fields
.field public static a:La5/k1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La5/k1;

    invoke-direct {v0}, La5/k1;-><init>()V

    sput-object v0, La5/k1;->a:La5/k1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ly4/a;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ly4/a;->s()Ly4/b;

    move-result-object v0

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x10

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3}, Ly4/b;->c0(I)V

    return-object p0

    :cond_0
    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ly4/b;->C0()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3}, Ly4/b;->c0(I)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-class p3, Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x4

    if-ne p2, p3, :cond_2

    iget-object p2, p1, Ly4/a;->f:Ly4/b;

    invoke-interface {p2}, Ly4/b;->q0()I

    move-result p3

    if-ne p3, v2, :cond_0

    invoke-interface {p2}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1}, Ly4/b;->c0(I)V

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_2
    const-class p3, Ljava/lang/StringBuilder;

    if-ne p2, p3, :cond_5

    iget-object p2, p1, Ly4/a;->f:Ly4/b;

    invoke-interface {p2}, Ly4/b;->q0()I

    move-result p3

    if-ne p3, v2, :cond_3

    invoke-interface {p2}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1}, Ly4/b;->c0(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_3
    invoke-virtual {p1}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_5
    invoke-static {p1}, La5/k1;->e(Ly4/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, La5/k1;->f(La5/o0;Ljava/lang/String;)V

    return-void
.end method

.method public f(La5/o0;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, La5/o0;->k:La5/j1;

    if-nez p2, :cond_0

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p2}, La5/j1;->p0(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, La5/j1;->q0(Ljava/lang/String;)V

    return-void
.end method
