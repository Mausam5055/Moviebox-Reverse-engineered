.class public Lz4/n;
.super Ljava/lang/Object;

# interfaces
.implements Lz4/b2;


# static fields
.field public static final a:Lz4/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/n;

    invoke-direct {v0}, Lz4/n;-><init>()V

    sput-object v0, Lz4/n;->a:Lz4/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ly4/a;->s()Ly4/b;

    move-result-object p2

    check-cast p2, Ly4/c;

    invoke-virtual {p1}, Ly4/a;->v()Ly4/i;

    move-result-object p3

    invoke-virtual {p2, p3}, Ly4/c;->w(Ly4/i;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ly4/c;->Z()V

    invoke-virtual {p2}, Ly4/c;->q0()I

    move-result v0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ly4/a;->v()Ly4/i;

    move-result-object v0

    invoke-virtual {p2, v0}, Ly4/c;->w(Ly4/i;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ly4/c;->Z()V

    invoke-virtual {p2}, Ly4/c;->q0()I

    move-result v0

    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/c;

    invoke-direct {v1, p3}, Lcom/alibaba/fastjson/c;-><init>(Ljava/lang/String;)V

    const/16 p3, 0xa

    const-string v2, "illegal jsonp : "

    if-ne v0, p3, :cond_4

    invoke-virtual {p2}, Ly4/c;->Z()V

    :goto_0
    invoke-virtual {p1}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson/c;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ly4/c;->q0()I

    move-result p3

    const/16 v0, 0x10

    if-ne p3, v0, :cond_1

    invoke-virtual {p2}, Ly4/c;->Z()V

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    if-ne p3, p1, :cond_3

    invoke-virtual {p2}, Ly4/c;->Z()V

    invoke-virtual {p2}, Ly4/c;->q0()I

    move-result p1

    const/16 p3, 0x18

    if-ne p1, p3, :cond_2

    invoke-virtual {p2}, Ly4/c;->Z()V

    :cond_2
    return-object v1

    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ly4/c;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ly4/c;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
