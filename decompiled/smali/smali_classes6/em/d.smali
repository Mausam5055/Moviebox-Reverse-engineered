.class public Lem/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/json/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/json/m;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    instance-of p3, p2, Ljava/lang/Number;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_0
    const-class p3, Ljava/lang/Byte;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/json/m;->q(Ljava/lang/Object;Ljava/lang/Class;)Lcom/transsion/json/k;

    move-result-object p1

    throw p1
.end method
