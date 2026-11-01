.class public Ld5/a;
.super Ljava/lang/Object;

# interfaces
.implements La5/z0;
.implements Lz4/b2;


# static fields
.field public static final a:Ld5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld5/a;

    invoke-direct {v0}, Ld5/a;-><init>()V

    sput-object v0, Ld5/a;->a:Ld5/a;

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
    .locals 0

    invoke-virtual {p1}, Ly4/a;->l0()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string p2, "currency"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/alibaba/fastjson/JSONObject;

    const-string p3, "currencyCode"

    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_1

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string p3, "numberStripped"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/math/BigDecimal;

    if-nez p3, :cond_3

    instance-of p3, p1, Ljava/lang/Integer;

    if-nez p3, :cond_3

    instance-of p3, p1, Ljava/math/BigInteger;

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Number;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljavax/money/Monetary;->getCurrency(Ljava/lang/String;[Ljava/lang/String;)Ljavax/money/CurrencyUnit;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/javamoney/moneta/Money;->of(Ljava/lang/Number;Ljavax/money/CurrencyUnit;)Lorg/javamoney/moneta/Money;

    move-result-object p1

    return-object p1
.end method

.method public d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0

    check-cast p2, Lorg/javamoney/moneta/Money;

    if-nez p2, :cond_0

    invoke-virtual {p1}, La5/o0;->C()V

    return-void

    :cond_0
    iget-object p1, p1, La5/o0;->k:La5/j1;

    const-string p3, "numberStripped"

    invoke-virtual {p2}, Lorg/javamoney/moneta/Money;->getNumberStripped()Ljava/math/BigDecimal;

    move-result-object p4

    const/16 p5, 0x7b

    invoke-virtual {p1, p5, p3, p4}, La5/j1;->a0(CLjava/lang/String;Ljava/math/BigDecimal;)V

    invoke-virtual {p2}, Lorg/javamoney/moneta/Money;->getCurrency()Ljavax/money/CurrencyUnit;

    move-result-object p2

    invoke-interface {p2}, Ljavax/money/CurrencyUnit;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x2c

    const-string p4, "currency"

    invoke-virtual {p1, p3, p4, p2}, La5/j1;->Z(CLjava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x7d

    invoke-virtual {p1, p2}, La5/j1;->write(I)V

    return-void
.end method
