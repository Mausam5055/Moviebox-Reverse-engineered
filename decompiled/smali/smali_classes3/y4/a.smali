.class public Ly4/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly4/a$a;
    }
.end annotation


# static fields
.field private static final p:Ljava/util/Set;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ly4/i;

.field protected c:Ly4/h;

.field private d:Ljava/lang/String;

.field private e:Ljava/text/DateFormat;

.field public final f:Ly4/b;

.field protected g:Ly4/g;

.field private h:[Ly4/g;

.field private i:I

.field private j:Ljava/util/List;

.field public k:I

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:I

.field private o:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ly4/a;->p:Ljava/util/Set;

    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Byte;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Short;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Long;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Float;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Double;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-class v2, Ljava/math/BigInteger;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-class v2, Ljava/math/BigDecimal;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ly4/b;Ly4/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Ly4/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Ly4/a;->i:I

    iput v0, p0, Ly4/a;->k:I

    const/4 v1, 0x0

    iput-object v1, p0, Ly4/a;->l:Ljava/util/List;

    iput-object v1, p0, Ly4/a;->m:Ljava/util/List;

    iput v0, p0, Ly4/a;->n:I

    iput-object v1, p0, Ly4/a;->o:[Ljava/lang/String;

    iput-object p2, p0, Ly4/a;->f:Ly4/b;

    iput-object p1, p0, Ly4/a;->a:Ljava/lang/Object;

    iput-object p3, p0, Ly4/a;->c:Ly4/h;

    iget-object p1, p3, Ly4/h;->e:Ly4/i;

    iput-object p1, p0, Ly4/a;->b:Ly4/i;

    invoke-interface {p2}, Ly4/b;->d()C

    move-result p1

    const/16 p3, 0x7b

    if-ne p1, p3, :cond_0

    invoke-interface {p2}, Ly4/b;->next()C

    check-cast p2, Ly4/c;

    const/16 p1, 0xc

    iput p1, p2, Ly4/c;->a:I

    goto :goto_0

    :cond_0
    const/16 p3, 0x5b

    if-ne p1, p3, :cond_1

    invoke-interface {p2}, Ly4/b;->next()C

    check-cast p2, Ly4/c;

    const/16 p1, 0xe

    iput p1, p2, Ly4/c;->a:I

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ly4/b;->Z()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ly4/h;->t()Ly4/h;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Ly4/a;-><init>(Ljava/lang/String;Ly4/h;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ly4/h;)V
    .locals 2

    new-instance v0, Ly4/e;

    sget v1, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Ly4/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Ly4/a;-><init>(Ljava/lang/Object;Ly4/b;Ly4/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ly4/h;I)V
    .locals 1

    new-instance v0, Ly4/e;

    invoke-direct {v0, p1, p3}, Ly4/e;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Ly4/a;-><init>(Ljava/lang/Object;Ly4/b;Ly4/h;)V

    return-void
.end method

.method public constructor <init>([CILy4/h;I)V
    .locals 1

    new-instance v0, Ly4/e;

    invoke-direct {v0, p1, p2, p4}, Ly4/e;-><init>([CII)V

    invoke-direct {p0, p1, v0, p3}, Ly4/a;-><init>(Ljava/lang/Object;Ly4/b;Ly4/h;)V

    return-void
.end method

.method private h(Ly4/g;)V
    .locals 5

    iget v0, p0, Ly4/a;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ly4/a;->i:I

    iget-object v1, p0, Ly4/a;->h:[Ly4/g;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    new-array v1, v1, [Ly4/g;

    iput-object v1, p0, Ly4/a;->h:[Ly4/g;

    goto :goto_0

    :cond_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ly4/g;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Ly4/a;->h:[Ly4/g;

    :cond_1
    :goto_0
    iget-object v1, p0, Ly4/a;->h:[Ly4/g;

    aput-object p1, v1, v0

    return-void
.end method


# virtual methods
.method public B0(Ly4/g;)V
    .locals 2

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Ly4/a;->g:Ly4/g;

    return-void
.end method

.method public C0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ly4/a;->d:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Ly4/a;->e:Ljava/text/DateFormat;

    return-void
.end method

.method public E0(I)V
    .locals 0

    iput p1, p0, Ly4/a;->k:I

    return-void
.end method

.method public T()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ly4/a;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public U(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v3, 0x3

    if-eq v1, v3, :cond_e

    const/4 v3, 0x4

    if-eq v1, v3, :cond_b

    const/16 v3, 0xc

    if-eq v1, v3, :cond_8

    const/16 v3, 0xe

    if-eq v1, v3, :cond_5

    const-string v3, "syntax error, "

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v1, v4, :cond_3

    const/16 v6, 0x1a

    if-eq v1, v6, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-interface {v0}, Ly4/b;->Z()V

    return-object v5

    :pswitch_1
    invoke-interface {v0}, Ly4/b;->Z()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0, v0, p1}, Ly4/a;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    invoke-interface {v0}, Ly4/b;->Z()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, v0, p1}, Ly4/a;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    :pswitch_3
    invoke-interface {v0}, Ly4/b;->U()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v5

    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unterminated json string, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    invoke-interface {v0, v4}, Ly4/b;->c0(I)V

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result p1

    if-ne p1, v4, :cond_1

    const/16 p1, 0xa

    invoke-interface {v0, p1}, Ly4/b;->c0(I)V

    invoke-virtual {p0, p1}, Ly4/a;->b(I)V

    invoke-interface {v0}, Ly4/b;->o0()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2}, Ly4/a;->b(I)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Ly4/a;->b(I)V

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "syntax error"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_5
    invoke-interface {v0}, Ly4/b;->Z()V

    return-object v5

    :pswitch_6
    invoke-interface {v0}, Ly4/b;->Z()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :pswitch_7
    invoke-interface {v0}, Ly4/b;->Z()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_2
    invoke-interface {v0}, Ly4/b;->h0()[B

    move-result-object p1

    invoke-interface {v0}, Ly4/b;->Z()V

    return-object p1

    :cond_3
    invoke-interface {v0}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NaN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v0}, Ly4/b;->Z()V

    return-object v5

    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseNativeJavaObject:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v1}, Ly4/a;->x(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    :goto_0
    invoke-virtual {p0, v1, p1}, Ly4/a;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, p1}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v1

    :cond_8
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseNativeJavaObject:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v1}, Ly4/a;->x(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1

    :cond_a
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    move-object v0, v1

    :goto_1
    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Ly4/a;->r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-interface {v0}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Ly4/b;->c0(I)V

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ly4/e;

    invoke-direct {v0, p1}, Ly4/e;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ly4/e;->w1()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ly4/c;->J0()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ly4/c;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_c
    invoke-virtual {v0}, Ly4/c;->close()V

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ly4/c;->close()V

    throw p1

    :cond_d
    :goto_3
    return-object p1

    :cond_e
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, p1}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    invoke-interface {v0, p1}, Ly4/b;->z0(Z)Ljava/lang/Number;

    move-result-object p1

    invoke-interface {v0}, Ly4/b;->Z()V

    return-object p1

    :cond_f
    invoke-interface {v0}, Ly4/b;->o0()Ljava/lang/Number;

    move-result-object p1

    invoke-interface {v0}, Ly4/b;->Z()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public V(Lz4/f3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syntax error, expect {, actual "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", fieldName "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p1}, Ly4/b;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    invoke-virtual {p0, v0, p2}, Ly4/a;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/alibaba/fastjson/JSONObject;

    return-object p2

    :cond_1
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget-object v0, p0, Ly4/a;->g:Ly4/g;

    :goto_0
    :try_start_0
    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->u0()V

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->d()C

    move-result v1

    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v4}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->next()C

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->u0()V

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->d()C

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_3
    const-string v3, "expect \':\' at "

    const/16 v4, 0x3a

    const/16 v5, 0x22

    const/16 v6, 0x10

    if-ne v1, v5, :cond_5

    :try_start_1
    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    iget-object v7, p0, Ly4/a;->b:Ly4/i;

    invoke-interface {v1, v7, v5}, Ly4/b;->y0(Ly4/i;C)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v7}, Ly4/b;->u0()V

    iget-object v7, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v7}, Ly4/b;->d()C

    move-result v7

    if-ne v7, v4, :cond_4

    goto/16 :goto_2

    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->h()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/16 v7, 0x7d

    if-ne v1, v7, :cond_6

    iget-object p2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p2}, Ly4/b;->next()C

    iget-object p2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p2}, Ly4/b;->v0()V

    iget-object p2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p2, v6}, Ly4/b;->c0(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_6
    const-string v7, "syntax error"

    const/16 v8, 0x27

    if-ne v1, v8, :cond_9

    :try_start_2
    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v9}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    iget-object v7, p0, Ly4/a;->b:Ly4/i;

    invoke-interface {v1, v7, v8}, Ly4/b;->y0(Ly4/i;C)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v7}, Ly4/b;->u0()V

    iget-object v7, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v7}, Ly4/b;->d()C

    move-result v7

    if-ne v7, v4, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->h()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v8}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    iget-object v7, p0, Ly4/a;->b:Ly4/i;

    invoke-interface {v1, v7}, Ly4/b;->w(Ly4/i;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v7}, Ly4/b;->u0()V

    iget-object v7, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v7}, Ly4/b;->d()C

    move-result v7

    if-ne v7, v4, :cond_12

    :goto_2
    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3}, Ly4/b;->next()C

    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3}, Ly4/b;->u0()V

    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3}, Ly4/b;->d()C

    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3}, Ly4/b;->v0()V

    sget-object v3, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/16 v4, 0xd

    const/4 v7, 0x0

    if-ne v1, v3, :cond_c

    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v8}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    iget-object v3, p0, Ly4/a;->b:Ly4/i;

    invoke-interface {v1, v3, v5}, Ly4/b;->y0(Ly4/i;C)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ly4/a;->c:Ly4/h;

    iget-object v5, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5}, Ly4/b;->r()I

    move-result v5

    invoke-virtual {v3, v1, v7, v5}, Ly4/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1, v6}, Ly4/b;->c0(I)V

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->q0()I

    move-result v1

    if-ne v1, v4, :cond_10

    iget-object p2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p2, v6}, Ly4/b;->c0(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v0}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_a
    :try_start_3
    iget-object p1, p0, Ly4/a;->c:Ly4/h;

    invoke-virtual {p1, v1}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object p1

    iget-object v2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v2, v6}, Ly4/b;->c0(I)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ly4/a;->E0(I)V

    if-eqz v0, :cond_b

    instance-of v2, p2, Ljava/lang/Integer;

    if-nez v2, :cond_b

    invoke-virtual {p0}, Ly4/a;->v0()V

    :cond_b
    invoke-interface {p1, p0, v1, p2}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v0}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_c
    :try_start_4
    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3}, Ly4/b;->Z()V

    if-eqz v2, :cond_d

    invoke-virtual {p0, v0}, Ly4/a;->B0(Ly4/g;)V

    :cond_d
    invoke-interface {p1, v1}, Lz4/f3;->b(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v3

    iget-object v5, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_e

    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3}, Ly4/b;->Z()V

    goto :goto_3

    :cond_e
    invoke-virtual {p0, v3, v1}, Ly4/a;->p0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :goto_3
    invoke-interface {p1, v1, v7}, Lz4/f3;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v7, v1}, Ly4/a;->z0(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    invoke-virtual {p0, v0}, Ly4/a;->B0(Ly4/g;)V

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->q0()I

    move-result v1

    const/16 v3, 0x14

    if-eq v1, v3, :cond_11

    const/16 v3, 0xf

    if-ne v1, v3, :cond_f

    goto :goto_4

    :cond_f
    if-ne v1, v4, :cond_10

    iget-object p2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p2}, Ly4/b;->Z()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, v0}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_4
    invoke-virtual {p0, v0}, Ly4/a;->B0(Ly4/g;)V

    return-object p1

    :cond_12
    :try_start_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->h()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actual "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_5
    invoke-virtual {p0, v0}, Ly4/a;->B0(Ly4/g;)V

    throw p1
.end method

.method public Z(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ly4/a;->a0(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    return-void
.end method

.method public a0(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ly4/a;->c0(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(I)V
    .locals 4

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ly4/b;->Z()V

    return-void

    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", actual "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result p1

    invoke-static {p1}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c0(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->Z()V

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v0

    :cond_1
    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x4

    const-class v2, Ljava/lang/String;

    if-ne v0, p1, :cond_2

    sget-object v0, La5/j0;->a:La5/j0;

    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ly4/b;->c0(I)V

    goto :goto_0

    :cond_2
    if-ne v2, p1, :cond_3

    sget-object v0, La5/k1;->a:La5/k1;

    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3, v1}, Ly4/b;->c0(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ly4/a;->c:Ly4/h;

    invoke-virtual {v0, p1}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v0

    iget-object v3, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Lz4/b2;->b()I

    move-result v4

    invoke-interface {v3, v4}, Ly4/b;->c0(I)V

    :goto_0
    iget-object v3, p0, Ly4/a;->g:Ly4/g;

    invoke-virtual {p0, p2, p3}, Ly4/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    const/4 p3, 0x0

    :goto_1
    :try_start_0
    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v5}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    const/16 v5, 0x10

    if-eqz v4, :cond_4

    :goto_2
    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v4}, Ly4/b;->q0()I

    move-result v4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v4}, Ly4/b;->Z()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_4
    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v4}, Ly4/b;->q0()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0xf

    if-ne v4, v6, :cond_5

    invoke-virtual {p0, v3}, Ly4/a;->B0(Ly4/g;)V

    iget-object p1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p1, v5}, Ly4/b;->c0(I)V

    return-void

    :cond_5
    :try_start_1
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    if-ne v4, p1, :cond_6

    sget-object v4, La5/j0;->a:La5/j0;

    invoke-virtual {v4, p0, v6, v6}, La5/j0;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    if-ne v2, p1, :cond_9

    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v4}, Ly4/b;->q0()I

    move-result v4

    if-ne v4, v1, :cond_7

    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v4}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v4, v5}, Ly4/b;->c0(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v4}, Ly4/b;->q0()I

    move-result v4

    const/16 v7, 0x8

    if-ne v4, v7, :cond_a

    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v4}, Ly4/b;->Z()V

    goto :goto_4

    :cond_a
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p0, p1, v4}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_4
    invoke-interface {p2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Ly4/a;->k(Ljava/util/Collection;)V

    :goto_5
    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v4}, Ly4/b;->q0()I

    move-result v4

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Lz4/b2;->b()I

    move-result v5

    invoke-interface {v4, v5}, Ly4/b;->c0(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :goto_6
    invoke-virtual {p0, v3}, Ly4/a;->B0(Ly4/g;)V

    throw p1

    :cond_c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "field "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " expect \'[\', but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p3}, Ly4/b;->k()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v3

    invoke-static {v3}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ly4/b;->close()V

    return-void

    :goto_1
    invoke-interface {v0}, Ly4/b;->close()V

    throw v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->u()V

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "type not match error"

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ly4/b;->Z()V

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result p1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Ly4/b;->Z()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d0(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ly4/a;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final g0(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-interface {v0}, Ly4/b;->Z()V

    :cond_1
    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_14

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ly4/b;->c0(I)V

    iget-object v3, p0, Ly4/a;->g:Ly4/g;

    if-eqz v3, :cond_3

    iget v4, v3, Ly4/g;->d:I

    const/16 v5, 0x200

    if-gt v4, v5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "array level > 512"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Ly4/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    const/4 p2, 0x0

    move v4, p2

    :goto_1
    :try_start_0
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_4

    :goto_2
    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v5

    if-ne v5, v6, :cond_4

    invoke-interface {v0}, Ly4/b;->Z()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_4
    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_11

    const/4 v7, 0x3

    if-eq v5, v7, :cond_f

    if-eq v5, v1, :cond_d

    const/4 v7, 0x6

    if-eq v5, v7, :cond_c

    const/4 v7, 0x7

    if-eq v5, v7, :cond_b

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eq v5, v7, :cond_a

    const/16 v7, 0xc

    if-eq v5, v7, :cond_9

    const/16 v7, 0x14

    if-eq v5, v7, :cond_8

    const/16 v7, 0x17

    if-eq v5, v7, :cond_7

    if-eq v5, v2, :cond_6

    const/16 v7, 0xf

    if-eq v5, v7, :cond_5

    invoke-virtual {p0}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_5

    :cond_5
    invoke-interface {v0, v6}, Ly4/b;->c0(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3}, Ly4/a;->B0(Ly4/g;)V

    return-void

    :cond_6
    :try_start_1
    new-instance v8, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v8}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v8, v5}, Ly4/a;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_5

    :cond_7
    invoke-interface {v0, v1}, Ly4/b;->c0(I)V

    goto/16 :goto_5

    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "unclosed jsonArray"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v7}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    invoke-direct {v5, v7}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Ly4/a;->r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_5

    :cond_a
    invoke-interface {v0, v1}, Ly4/b;->c0(I)V

    goto :goto_5

    :cond_b
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v6}, Ly4/b;->c0(I)V

    goto :goto_5

    :cond_c
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v6}, Ly4/b;->c0(I)V

    goto :goto_5

    :cond_d
    invoke-interface {v0}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6}, Ly4/b;->c0(I)V

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_12

    new-instance v5, Ly4/e;

    invoke-direct {v5, v8}, Ly4/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ly4/e;->w1()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v5}, Ly4/c;->J0()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    move-object v8, v7

    :cond_e
    invoke-virtual {v5}, Ly4/c;->close()V

    goto :goto_5

    :cond_f
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ly4/b;->z0(Z)Ljava/lang/Number;

    move-result-object v5

    :goto_3
    move-object v8, v5

    goto :goto_4

    :cond_10
    invoke-interface {v0, p2}, Ly4/b;->z0(Z)Ljava/lang/Number;

    move-result-object v5

    goto :goto_3

    :goto_4
    invoke-interface {v0, v6}, Ly4/b;->c0(I)V

    goto :goto_5

    :cond_11
    invoke-interface {v0}, Ly4/b;->o0()Ljava/lang/Number;

    move-result-object v8

    invoke-interface {v0, v6}, Ly4/b;->c0(I)V

    :cond_12
    :goto_5
    invoke-interface {p1, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Ly4/a;->k(Ljava/util/Collection;)V

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v5

    if-ne v5, v6, :cond_13

    invoke-interface {v0, v1}, Ly4/b;->c0(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :goto_6
    :try_start_2
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "unkown error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_7
    invoke-virtual {p0, v3}, Ly4/a;->B0(Ly4/g;)V

    throw p1

    :cond_14
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect [, actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v2

    invoke-static {v2}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ly4/b;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fieldName "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h0([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v2}, Ly4/b;->q0()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/16 v5, 0x8

    if-ne v2, v5, :cond_0

    iget-object v1, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1, v4}, Ly4/b;->c0(I)V

    return-object v3

    :cond_0
    iget-object v2, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v2}, Ly4/b;->q0()I

    move-result v2

    const/16 v6, 0xe

    if-ne v2, v6, :cond_15

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    array-length v7, v1

    const-string v8, "syntax error"

    const/4 v9, 0x0

    const/16 v10, 0xf

    if-nez v7, :cond_2

    iget-object v1, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1, v10}, Ly4/b;->c0(I)V

    iget-object v1, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->q0()I

    move-result v1

    if-ne v1, v10, :cond_1

    iget-object v1, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1, v4}, Ly4/b;->c0(I)V

    new-array v1, v9, [Ljava/lang/Object;

    return-object v1

    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v7, v0, Ly4/a;->f:Ly4/b;

    const/4 v11, 0x2

    invoke-interface {v7, v11}, Ly4/b;->c0(I)V

    move v7, v9

    :goto_0
    array-length v12, v1

    if-ge v7, v12, :cond_13

    iget-object v12, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v12}, Ly4/b;->q0()I

    move-result v12

    const-string v13, "syntax error :"

    if-ne v12, v5, :cond_3

    iget-object v12, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v12, v4}, Ly4/b;->c0(I)V

    move-object v12, v3

    goto/16 :goto_5

    :cond_3
    aget-object v12, v1, v7

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v12, v14, :cond_e

    const-class v14, Ljava/lang/Integer;

    if-ne v12, v14, :cond_4

    goto/16 :goto_4

    :cond_4
    const-class v14, Ljava/lang/String;

    const/4 v15, 0x4

    if-ne v12, v14, :cond_6

    iget-object v14, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v14}, Ly4/b;->q0()I

    move-result v14

    if-ne v14, v15, :cond_5

    iget-object v12, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v12}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v12

    iget-object v14, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v14, v4}, Ly4/b;->c0(I)V

    goto/16 :goto_5

    :cond_5
    invoke-virtual/range {p0 .. p0}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v0, Ly4/a;->c:Ly4/h;

    invoke-static {v14, v12, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Ly4/h;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_5

    :cond_6
    array-length v14, v1

    add-int/lit8 v14, v14, -0x1

    if-ne v7, v14, :cond_9

    instance-of v14, v12, Ljava/lang/Class;

    if-eqz v14, :cond_9

    move-object v14, v12

    check-cast v14, Ljava/lang/Class;

    const-class v5, [B

    if-eq v14, v5, :cond_7

    const-class v5, [C

    if-ne v14, v5, :cond_8

    :cond_7
    iget-object v5, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v5

    if-eq v5, v15, :cond_9

    :cond_8
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v5

    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    goto :goto_1

    :cond_9
    move-object v14, v3

    move v5, v9

    :goto_1
    if-eqz v5, :cond_d

    iget-object v5, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v5

    if-eq v5, v6, :cond_d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v0, Ly4/a;->c:Ly4/h;

    invoke-virtual {v15, v14}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v14

    invoke-interface {v14}, Lz4/b2;->b()I

    move-result v15

    iget-object v6, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v6}, Ly4/b;->q0()I

    move-result v6

    if-eq v6, v10, :cond_c

    :goto_2
    invoke-interface {v14, v0, v12, v3}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v6}, Ly4/b;->q0()I

    move-result v6

    if-ne v6, v4, :cond_a

    iget-object v6, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v6, v15}, Ly4/b;->c0(I)V

    goto :goto_2

    :cond_a
    iget-object v6, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v6}, Ly4/b;->q0()I

    move-result v6

    if-ne v6, v10, :cond_b

    goto :goto_3

    :cond_b
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3}, Ly4/b;->q0()I

    move-result v3

    invoke-static {v3}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_3
    iget-object v6, v0, Ly4/a;->c:Ly4/h;

    invoke-static {v5, v12, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Ly4/h;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_5

    :cond_d
    iget-object v5, v0, Ly4/a;->c:Ly4/h;

    invoke-virtual {v5, v12}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v12, v6}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_5

    :cond_e
    :goto_4
    iget-object v5, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v5

    if-ne v5, v11, :cond_f

    iget-object v5, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5}, Ly4/b;->o()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v5, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5, v4}, Ly4/b;->c0(I)V

    goto :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v0, Ly4/a;->c:Ly4/h;

    invoke-static {v5, v12, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;Ly4/h;)Ljava/lang/Object;

    move-result-object v12

    :goto_5
    aput-object v12, v2, v7

    iget-object v5, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v5

    if-ne v5, v10, :cond_10

    goto :goto_7

    :cond_10
    iget-object v5, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v5

    if-ne v5, v4, :cond_12

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ne v7, v5, :cond_11

    iget-object v5, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5, v10}, Ly4/b;->c0(I)V

    goto :goto_6

    :cond_11
    iget-object v5, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v5, v11}, Ly4/b;->c0(I)V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x8

    const/16 v6, 0xe

    goto/16 :goto_0

    :cond_12
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3}, Ly4/b;->q0()I

    move-result v3

    invoke-static {v3}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    :goto_7
    iget-object v1, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->q0()I

    move-result v1

    if-ne v1, v10, :cond_14

    iget-object v1, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1, v4}, Ly4/b;->c0(I)V

    return-object v2

    :cond_14
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ly4/a;->f:Ly4/b;

    invoke-interface {v3}, Ly4/b;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public i(Ly4/a$a;)V
    .locals 2

    iget-object v0, p0, Ly4/a;->j:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ly4/a;->j:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Ly4/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Ljava/util/Collection;)V
    .locals 4

    iget v0, p0, Ly4/a;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    sub-int/2addr v0, v1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Ly4/a;->r()Ly4/a$a;

    move-result-object v1

    new-instance v3, Lz4/h3;

    invoke-direct {v3, p0, p1, v0}, Lz4/h3;-><init>(Ly4/a;Ljava/util/List;I)V

    iput-object v3, v1, Ly4/a$a;->c:Lz4/l;

    iget-object p1, p0, Ly4/a;->g:Ly4/g;

    iput-object p1, v1, Ly4/a$a;->d:Ly4/g;

    invoke-virtual {p0, v2}, Ly4/a;->E0(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ly4/a;->r()Ly4/a$a;

    move-result-object v0

    new-instance v1, Lz4/h3;

    invoke-direct {v1, p1}, Lz4/h3;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ly4/a$a;->c:Lz4/l;

    iget-object p1, p0, Ly4/a;->g:Ly4/g;

    iput-object p1, v0, Ly4/a$a;->d:Ly4/g;

    invoke-virtual {p0, v2}, Ly4/a;->E0(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k0(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p1}, Ly4/b;->u()V

    iget-object p1, p0, Ly4/a;->l:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ly4/a;->T()Ljava/lang/Object;

    iget-object p1, p0, Ly4/a;->m:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p2

    :cond_3
    :goto_1
    iget p1, p0, Ly4/a;->k:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    iput p1, p0, Ly4/a;->k:I

    :cond_4
    return-void
.end method

.method public l(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ly4/a;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lz4/h3;

    invoke-direct {v0, p1, p2}, Lz4/h3;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ly4/a;->r()Ly4/a$a;

    move-result-object p1

    iput-object v0, p1, Ly4/a$a;->c:Lz4/l;

    iget-object p2, p0, Ly4/a;->g:Ly4/g;

    iput-object p2, p1, Ly4/a$a;->d:Ly4/g;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ly4/a;->E0(I)V

    :cond_0
    return-void
.end method

.method public l0()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v2}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    invoke-virtual {p0, v0}, Ly4/a;->q0(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public m()Ly4/h;
    .locals 1

    iget-object v0, p0, Ly4/a;->c:Ly4/h;

    return-object v0
.end method

.method public m0(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ly4/a;->p0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n()Ly4/g;
    .locals 1

    iget-object v0, p0, Ly4/a;->g:Ly4/g;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly4/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public o0(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ly4/a;->p0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Ly4/a;->e:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Ly4/a;->d:Ljava/lang/String;

    iget-object v2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v2}, Ly4/b;->B0()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Ly4/a;->e:Ljava/text/DateFormat;

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->l0()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v0, p0, Ly4/a;->e:Ljava/text/DateFormat;

    return-object v0
.end method

.method public p0(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->q0()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p2}, Ly4/b;->Z()V

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->J0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v0, [B

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p1}, Ly4/b;->h0()[B

    move-result-object p1

    iget-object p2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p2}, Ly4/b;->Z()V

    return-object p1

    :cond_1
    const-class v0, [C

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p1}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p2}, Ly4/b;->Z()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Ly4/a;->c:Ly4/h;

    invoke-virtual {v0, p1}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lz4/o;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->q0()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->q0()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syntax error,expect start with { or [,but actually start with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0}, Ly4/b;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_0
    check-cast v0, Lz4/o;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lz4/o;->g(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-interface {v0, p0, p1, p2}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_1
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    throw p1
.end method

.method public q()Lz4/m;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q0(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ly4/a;->r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r()Ly4/a$a;
    .locals 2

    iget-object v0, p0, Ly4/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/a$a;

    return-object v0
.end method

.method public final r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "parse number key error"

    const-class v4, Ljava/util/Map;

    iget-object v5, v1, Ly4/a;->f:Ly4/b;

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-ne v6, v7, :cond_0

    invoke-interface {v5}, Ly4/b;->Z()V

    return-object v8

    :cond_0
    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_1

    invoke-interface {v5}, Ly4/b;->Z()V

    return-object v0

    :cond_1
    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v6

    const/4 v9, 0x4

    if-ne v6, v9, :cond_2

    invoke-interface {v5}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Ly4/b;->Z()V

    return-object v0

    :cond_2
    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v6

    const/16 v10, 0xc

    const/16 v11, 0x10

    if-eq v6, v10, :cond_4

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v6

    if-ne v6, v11, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect {, actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    iget-object v6, v1, Ly4/a;->g:Ly4/g;

    :try_start_0
    instance-of v10, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v10, :cond_5

    move-object v12, v0

    check-cast v12, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v12

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_23

    :cond_5
    move-object v12, v0

    :goto_1
    const/4 v14, 0x0

    :goto_2
    invoke-interface {v5}, Ly4/b;->u0()V

    invoke-interface {v5}, Ly4/b;->d()C

    move-result v15

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v9}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    const/16 v13, 0x2c

    if-eqz v9, :cond_6

    :goto_3
    if-ne v15, v13, :cond_6

    invoke-interface {v5}, Ly4/b;->next()C

    invoke-interface {v5}, Ly4/b;->u0()V

    invoke-interface {v5}, Ly4/b;->d()C

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_6
    const-string v11, ", name "

    const-string v7, "expect \':\' at "

    const/16 v13, 0x22

    const-string v8, "syntax error"

    if-ne v15, v13, :cond_8

    :try_start_1
    iget-object v15, v1, Ly4/a;->b:Ly4/i;

    invoke-interface {v5, v15, v13}, Ly4/b;->y0(Ly4/i;C)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Ly4/b;->u0()V

    invoke-interface {v5}, Ly4/b;->d()C

    move-result v13

    const/16 v9, 0x3a

    if-ne v13, v9, :cond_7

    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_b

    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/16 v9, 0x7d

    if-ne v15, v9, :cond_b

    invoke-interface {v5}, Ly4/b;->next()C

    invoke-interface {v5}, Ly4/b;->v0()V

    invoke-interface {v5}, Ly4/b;->Z()V

    if-nez v14, :cond_a

    iget-object v3, v1, Ly4/a;->g:Ly4/g;

    if-eqz v3, :cond_9

    iget-object v4, v3, Ly4/g;->c:Ljava/lang/Object;

    if-ne v2, v4, :cond_9

    iget-object v4, v3, Ly4/g;->a:Ljava/lang/Object;

    if-ne v0, v4, :cond_9

    move-object v6, v3

    goto :goto_5

    :cond_9
    invoke-virtual/range {p0 .. p2}, Ly4/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_a

    move-object v6, v2

    :cond_a
    :goto_5
    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :cond_b
    const/16 v9, 0x27

    if-ne v15, v9, :cond_e

    :try_start_2
    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v13}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v13

    if-eqz v13, :cond_d

    iget-object v13, v1, Ly4/a;->b:Ly4/i;

    invoke-interface {v5, v13, v9}, Ly4/b;->y0(Ly4/i;C)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Ly4/b;->u0()V

    invoke-interface {v5}, Ly4/b;->d()C

    move-result v9

    const/16 v13, 0x3a

    if-ne v9, v13, :cond_c

    goto :goto_4

    :cond_c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/16 v9, 0x1a

    if-eq v15, v9, :cond_5f

    const/16 v9, 0x2c

    if-eq v15, v9, :cond_5e

    const/16 v9, 0x30

    if-lt v15, v9, :cond_f

    const/16 v9, 0x39

    if-le v15, v9, :cond_10

    :cond_f
    const/16 v9, 0x2d

    if-ne v15, v9, :cond_15

    :cond_10
    invoke-interface {v5}, Ly4/b;->v0()V

    invoke-interface {v5}, Ly4/b;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_11

    invoke-interface {v5}, Ly4/b;->o0()Ljava/lang/Number;

    move-result-object v7

    goto :goto_6

    :cond_11
    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ly4/b;->z0(Z)Ljava/lang/Number;

    move-result-object v9

    move-object v7, v9

    :goto_6
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v9}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_13

    if-eqz v10, :cond_12

    goto :goto_8

    :cond_12
    :goto_7
    move-object v15, v7

    goto :goto_9

    :cond_13
    :goto_8
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :goto_9
    :try_start_4
    invoke-interface {v5}, Ly4/b;->d()C

    move-result v7

    const/16 v9, 0x3a

    if-ne v7, v9, :cond_14

    goto/16 :goto_4

    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v9, 0x7b

    if-eq v15, v9, :cond_19

    const/16 v9, 0x5b

    if-ne v15, v9, :cond_16

    goto :goto_a

    :cond_16
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v9}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-eqz v9, :cond_18

    iget-object v9, v1, Ly4/a;->b:Ly4/i;

    invoke-interface {v5, v9}, Ly4/b;->w(Ly4/i;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5}, Ly4/b;->u0()V

    invoke-interface {v5}, Ly4/b;->d()C

    move-result v9

    const/16 v13, 0x3a

    if-ne v9, v13, :cond_17

    goto/16 :goto_4

    :cond_17
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_a
    iget v7, v1, Ly4/a;->n:I

    add-int/lit8 v9, v7, 0x1

    iput v9, v1, Ly4/a;->n:I

    const/16 v9, 0x200

    if-gt v7, v9, :cond_5d

    invoke-interface {v5}, Ly4/b;->Z()V

    invoke-virtual/range {p0 .. p0}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object v15

    const/4 v7, 0x1

    :goto_b
    if-nez v7, :cond_1a

    invoke-interface {v5}, Ly4/b;->next()C

    invoke-interface {v5}, Ly4/b;->u0()V

    :cond_1a
    invoke-interface {v5}, Ly4/b;->d()C

    move-result v7

    invoke-interface {v5}, Ly4/b;->v0()V

    sget-object v9, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v15, v9, :cond_2d

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v9}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_2d

    iget-object v7, v1, Ly4/a;->b:Ly4/i;

    const/16 v8, 0x22

    invoke-interface {v5, v7, v8}, Ly4/b;->y0(Ly4/i;C)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v8}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const/4 v9, 0x4

    const/4 v13, 0x0

    goto/16 :goto_15

    :cond_1b
    if-eqz v0, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    :goto_c
    const/4 v13, 0x0

    goto :goto_f

    :cond_1c
    const-string v8, "java.util.HashMap"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    const-class v8, Ljava/util/HashMap;

    goto :goto_c

    :cond_1d
    const-string v8, "java.util.LinkedHashMap"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const-class v8, Ljava/util/LinkedHashMap;

    goto :goto_c

    :cond_1e
    const/4 v8, 0x0

    :goto_d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_21

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x30

    if-lt v9, v11, :cond_20

    const/16 v11, 0x39

    if-le v9, v11, :cond_1f

    goto :goto_e

    :cond_1f
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_20
    :goto_e
    iget-object v8, v1, Ly4/a;->c:Ly4/h;

    invoke-interface {v5}, Ly4/b;->r()I

    move-result v9

    const/4 v13, 0x0

    invoke-virtual {v8, v7, v13, v9}, Ly4/h;->j(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v8

    goto :goto_f

    :cond_21
    const/4 v13, 0x0

    move-object v8, v13

    :goto_f
    if-nez v8, :cond_22

    sget-object v8, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v12, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x4

    goto/16 :goto_15

    :cond_22
    const/16 v3, 0x10

    invoke-interface {v5, v3}, Ly4/b;->c0(I)V

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v4

    const/16 v9, 0xd

    if-ne v4, v9, :cond_28

    invoke-interface {v5, v3}, Ly4/b;->c0(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, v1, Ly4/a;->c:Ly4/h;

    invoke-virtual {v2, v8}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v2

    instance-of v2, v2, Lz4/o;

    if-eqz v2, :cond_23

    iget-object v2, v1, Ly4/a;->c:Ly4/h;

    invoke-static {v0, v8, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;Ly4/h;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    goto :goto_10

    :catch_1
    move-exception v0

    goto :goto_12

    :cond_23
    :goto_10
    if-nez v13, :cond_27

    const-class v0, Ljava/lang/Cloneable;

    if-ne v8, v0, :cond_24

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    goto :goto_11

    :cond_24
    const-string v0, "java.util.Collections$EmptyMap"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v13

    goto :goto_11

    :cond_25
    const-string v0, "java.util.Collections$UnmodifiableMap"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    goto :goto_11

    :cond_26
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_27
    :goto_11
    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    return-object v13

    :goto_12
    :try_start_6
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "create instance error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_28
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ly4/a;->E0(I)V

    iget-object v3, v1, Ly4/a;->g:Ly4/g;

    if-eqz v3, :cond_29

    if-eqz v2, :cond_29

    instance-of v4, v2, Ljava/lang/Integer;

    if-nez v4, :cond_29

    iget-object v3, v3, Ly4/g;->c:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_29

    invoke-virtual/range {p0 .. p0}, Ly4/a;->v0()V

    :cond_29
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2a

    iget-object v2, v1, Ly4/a;->c:Ly4/h;

    invoke-static {v0, v8, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->f(Ljava/lang/Object;Ljava/lang/Class;Ly4/h;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ly4/a;->E0(I)V

    invoke-virtual {v1, v0}, Ly4/a;->u0(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :cond_2a
    :try_start_7
    iget-object v0, v1, Ly4/a;->c:Ly4/h;

    invoke-virtual {v0, v8}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lz4/o;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-class v4, Lz4/o;

    if-eq v3, v4, :cond_2b

    const-class v4, Lz4/k3;

    if-eq v3, v4, :cond_2b

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ly4/a;->E0(I)V

    goto :goto_13

    :cond_2b
    instance-of v3, v0, Lz4/z1;

    if-eqz v3, :cond_2c

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ly4/a;->E0(I)V

    :cond_2c
    :goto_13
    invoke-interface {v0, v1, v8, v2}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :cond_2d
    const/4 v13, 0x0

    :try_start_8
    const-string v9, "$ref"

    if-ne v15, v9, :cond_2e

    if-eqz v6, :cond_2e

    if-eqz v0, :cond_2f

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_2e

    goto :goto_14

    :cond_2e
    const/4 v9, 0x4

    const/16 v16, 0x1

    goto/16 :goto_1a

    :cond_2f
    :goto_14
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v9}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_2e

    const/4 v9, 0x4

    invoke-interface {v5, v9}, Ly4/b;->c0(I)V

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v7

    if-ne v7, v9, :cond_3c

    invoke-interface {v5}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    invoke-interface {v5, v8}, Ly4/b;->c0(I)V

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v8

    const/16 v11, 0x10

    if-ne v8, v11, :cond_30

    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    move-object v8, v13

    const/16 v7, 0xd

    const/16 v11, 0x10

    goto/16 :goto_2

    :cond_30
    const-string v0, "@"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, v1, Ly4/a;->g:Ly4/g;

    if-eqz v0, :cond_39

    iget-object v2, v0, Ly4/g;->a:Ljava/lang/Object;

    instance-of v3, v2, [Ljava/lang/Object;

    if-nez v3, :cond_32

    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_31

    goto :goto_16

    :cond_31
    iget-object v0, v0, Ly4/g;->b:Ly4/g;

    if-eqz v0, :cond_39

    iget-object v8, v0, Ly4/g;->a:Ljava/lang/Object;

    goto/16 :goto_19

    :cond_32
    :goto_16
    move-object v8, v2

    goto :goto_19

    :cond_33
    const-string v0, ".."

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, v6, Ly4/g;->a:Ljava/lang/Object;

    if-eqz v0, :cond_34

    move-object v8, v0

    goto :goto_19

    :cond_34
    new-instance v0, Ly4/a$a;

    invoke-direct {v0, v6, v7}, Ly4/a$a;-><init>(Ly4/g;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ly4/a;->i(Ly4/a$a;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ly4/a;->E0(I)V

    goto :goto_18

    :cond_35
    const-string v0, "$"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    move-object v0, v6

    :goto_17
    iget-object v2, v0, Ly4/g;->b:Ly4/g;

    if-eqz v2, :cond_36

    move-object v0, v2

    goto :goto_17

    :cond_36
    iget-object v2, v0, Ly4/g;->a:Ljava/lang/Object;

    if-eqz v2, :cond_37

    goto :goto_16

    :cond_37
    new-instance v2, Ly4/a$a;

    invoke-direct {v2, v0, v7}, Ly4/a$a;-><init>(Ly4/g;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ly4/a;->i(Ly4/a$a;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ly4/a;->E0(I)V

    goto :goto_18

    :cond_38
    invoke-static {v7}, Lcom/alibaba/fastjson/JSONPath;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath;->n()Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Ly4/a$a;

    invoke-direct {v0, v6, v7}, Ly4/a$a;-><init>(Ly4/g;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ly4/a;->i(Ly4/a$a;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ly4/a;->E0(I)V

    :cond_39
    :goto_18
    move-object v8, v13

    goto :goto_19

    :cond_3a
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v2, "$ref"

    invoke-virtual {v0, v2, v7}, Lcom/alibaba/fastjson/JSONObject;->fluentPut(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    :goto_19
    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3b

    const/16 v0, 0x10

    invoke-interface {v5, v0}, Ly4/b;->c0(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    return-object v8

    :cond_3b
    :try_start_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal ref, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v3

    invoke-static {v3}, Ly4/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1a
    if-nez v14, :cond_3f

    iget-object v9, v1, Ly4/a;->g:Ly4/g;

    if-eqz v9, :cond_3d

    iget-object v13, v9, Ly4/g;->c:Ljava/lang/Object;

    if-ne v2, v13, :cond_3d

    iget-object v13, v9, Ly4/g;->a:Ljava/lang/Object;

    if-ne v0, v13, :cond_3d

    move-object v6, v9

    goto :goto_1b

    :cond_3d
    invoke-virtual/range {p0 .. p2}, Ly4/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    move-result-object v9

    if-nez v6, :cond_3e

    move-object v6, v9

    :cond_3e
    move/from16 v14, v16

    :cond_3f
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v13, Lcom/alibaba/fastjson/JSONObject;

    if-ne v9, v13, :cond_40

    if-nez v15, :cond_40

    const-string v15, "null"

    :cond_40
    const/16 v9, 0x22

    if-ne v7, v9, :cond_43

    invoke-interface {v5}, Ly4/b;->a0()V

    invoke-interface {v5}, Ly4/b;->k0()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v8}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    if-eqz v8, :cond_42

    new-instance v8, Ly4/e;

    invoke-direct {v8, v7}, Ly4/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ly4/e;->w1()Z

    move-result v9

    if-eqz v9, :cond_41

    invoke-virtual {v8}, Ly4/c;->J0()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    :cond_41
    invoke-virtual {v8}, Ly4/c;->close()V

    :cond_42
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_43
    const/16 v9, 0x30

    if-lt v7, v9, :cond_44

    const/16 v9, 0x39

    if-le v7, v9, :cond_45

    :cond_44
    const/16 v9, 0x2d

    if-ne v7, v9, :cond_49

    :cond_45
    invoke-interface {v5}, Ly4/b;->p()V

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_46

    invoke-interface {v5}, Ly4/b;->o0()Ljava/lang/Number;

    move-result-object v7

    goto :goto_1c

    :cond_46
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v7}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    invoke-interface {v5, v7}, Ly4/b;->z0(Z)Ljava/lang/Number;

    move-result-object v7

    :goto_1c
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1d
    invoke-interface {v5}, Ly4/b;->u0()V

    invoke-interface {v5}, Ly4/b;->d()C

    move-result v8

    const/16 v9, 0x2c

    if-ne v8, v9, :cond_47

    invoke-interface {v5}, Ly4/b;->next()C

    :goto_1e
    const/16 v8, 0xd

    const/16 v9, 0x10

    goto/16 :goto_22

    :cond_47
    const/16 v2, 0x7d

    if-ne v8, v2, :cond_48

    invoke-interface {v5}, Ly4/b;->next()C

    invoke-interface {v5}, Ly4/b;->v0()V

    invoke-interface {v5}, Ly4/b;->Z()V

    invoke-virtual {v1, v7, v15}, Ly4/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :cond_48
    :try_start_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, position at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/16 v9, 0x5b

    if-ne v7, v9, :cond_4f

    invoke-interface {v5}, Ly4/b;->Z()V

    new-instance v7, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    if-eqz v2, :cond_4a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v11, Ljava/lang/Integer;

    :cond_4a
    if-nez v2, :cond_4b

    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    :cond_4b
    invoke-virtual {v1, v7, v15}, Ly4/a;->g0(Ljava/util/Collection;Ljava/lang/Object;)V

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v9}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-eqz v9, :cond_4c

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v7

    :cond_4c
    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v7

    const/16 v9, 0xd

    if-ne v7, v9, :cond_4d

    invoke-interface {v5}, Ly4/b;->Z()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :cond_4d
    :try_start_b
    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v7

    const/16 v9, 0x10

    if-ne v7, v9, :cond_4e

    const/16 v8, 0xd

    goto/16 :goto_22

    :cond_4e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    const/16 v8, 0x7b

    if-ne v7, v8, :cond_5a

    invoke-interface {v5}, Ly4/b;->Z()V

    if-eqz v2, :cond_50

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Integer;

    if-ne v7, v8, :cond_50

    move/from16 v9, v16

    goto :goto_1f

    :cond_50
    const/4 v9, 0x0

    :goto_1f
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->CustomMapDeserializer:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v7}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-eqz v7, :cond_52

    iget-object v7, v1, Ly4/a;->c:Ly4/h;

    invoke-virtual {v7, v4}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v7

    check-cast v7, Lz4/z1;

    invoke-interface {v5}, Ly4/b;->r()I

    move-result v8

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v11

    if-eqz v8, :cond_51

    invoke-interface {v5}, Ly4/b;->r()I

    move-result v8

    invoke-virtual {v7, v4, v8}, Lz4/z1;->g(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object v7

    goto :goto_20

    :cond_51
    invoke-virtual {v7, v4}, Lz4/z1;->f(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v7

    goto :goto_20

    :cond_52
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v8}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    :goto_20
    if-nez v9, :cond_53

    iget-object v8, v1, Ly4/a;->g:Ly4/g;

    invoke-virtual {v1, v8, v7, v15}, Ly4/a;->z0(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    move-result-object v8

    goto :goto_21

    :cond_53
    const/4 v8, 0x0

    :goto_21
    invoke-virtual {v1, v7, v15}, Ly4/a;->r0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v8, :cond_54

    if-eq v7, v11, :cond_54

    iput-object v0, v8, Ly4/g;->a:Ljava/lang/Object;

    :cond_54
    if-eqz v15, :cond_55

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Ly4/a;->l(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_55
    invoke-interface {v12, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_56

    invoke-virtual {v1, v11, v15}, Ly4/a;->y0(Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    :cond_56
    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_57

    invoke-interface {v5}, Ly4/b;->Z()V

    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :cond_57
    :try_start_c
    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v7

    const/16 v8, 0x10

    if-ne v7, v8, :cond_59

    if-eqz v9, :cond_58

    invoke-virtual/range {p0 .. p0}, Ly4/a;->v0()V

    goto/16 :goto_1e

    :cond_58
    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    goto/16 :goto_1e

    :cond_59
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    invoke-interface {v5}, Ly4/b;->Z()V

    invoke-virtual/range {p0 .. p0}, Ly4/a;->T()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v12, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_5b

    invoke-interface {v5}, Ly4/b;->Z()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    return-object v0

    :cond_5b
    :try_start_d
    invoke-interface {v5}, Ly4/b;->q0()I

    move-result v7

    const/16 v9, 0x10

    if-ne v7, v9, :cond_5c

    :goto_22
    move v7, v8

    move v11, v9

    const/4 v8, 0x0

    const/4 v9, 0x4

    goto/16 :goto_2

    :cond_5c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, position at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ly4/b;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "object key level > 512"

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_23
    invoke-virtual {v1, v6}, Ly4/a;->B0(Ly4/g;)V

    throw v0
.end method

.method public s()Ly4/b;
    .locals 1

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    return-object v0
.end method

.method public t(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ly4/a;->i:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ly4/a;->h:[Ly4/g;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ly4/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Ly4/a;->h:[Ly4/g;

    aget-object p1, p1, v0

    iget-object p1, p1, Ly4/g;->a:Ljava/lang/Object;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public u()I
    .locals 1

    iget v0, p0, Ly4/a;->k:I

    return v0
.end method

.method public u0(Ljava/lang/Object;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Ly4/a;->c:Ly4/h;

    invoke-virtual {v1, v0}, Ly4/h;->p(Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v1

    instance-of v2, v1, Lz4/o;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lz4/o;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iget-object v2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v2}, Ly4/b;->q0()I

    move-result v2

    const/16 v4, 0xc

    const/16 v5, 0x10

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v2}, Ly4/b;->q0()I

    move-result v2

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, expect {, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v1}, Ly4/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object v2, p0, Ly4/a;->f:Ly4/b;

    iget-object v4, p0, Ly4/a;->b:Ly4/i;

    invoke-interface {v2, v4}, Ly4/b;->i(Ly4/i;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    if-nez v2, :cond_4

    iget-object v6, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v6}, Ly4/b;->q0()I

    move-result v6

    if-ne v6, v4, :cond_3

    iget-object p1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p1, v5}, Ly4/b;->c0(I)V

    return-void

    :cond_3
    iget-object v6, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v6}, Ly4/b;->q0()I

    move-result v6

    if-ne v6, v5, :cond_4

    iget-object v6, p0, Ly4/a;->f:Ly4/b;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v6, v7}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Lz4/o;->j(Ljava/lang/String;)Lz4/l;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v3

    :goto_2
    if-nez v6, :cond_7

    iget-object v6, p0, Ly4/a;->f:Ly4/b;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v6, v7}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v2}, Ly4/b;->u()V

    invoke-virtual {p0}, Ly4/a;->T()Ljava/lang/Object;

    iget-object v2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v2}, Ly4/b;->q0()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object p1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p1}, Ly4/b;->Z()V

    return-void

    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setter not found, class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", property "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    iget-object v2, v6, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v7, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v7, v9}, Ly4/b;->q(I)V

    sget-object v7, La5/j0;->a:La5/j0;

    invoke-virtual {v7, p0, v2, v3}, La5/j0;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_8
    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_9

    iget-object v2, p0, Ly4/a;->f:Ly4/b;

    const/4 v7, 0x4

    invoke-interface {v2, v7}, Ly4/b;->q(I)V

    invoke-static {p0}, La5/k1;->e(Ly4/a;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_9
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v8, :cond_a

    iget-object v7, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v7, v9}, Ly4/b;->q(I)V

    sget-object v7, La5/u0;->a:La5/u0;

    invoke-virtual {v7, p0, v2, v3}, La5/u0;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_a
    iget-object v8, p0, Ly4/a;->c:Ly4/h;

    invoke-virtual {v8, v7, v2}, Ly4/h;->o(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lz4/b2;

    move-result-object v7

    iget-object v8, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v7}, Lz4/b2;->b()I

    move-result v9

    invoke-interface {v8, v9}, Ly4/b;->q(I)V

    invoke-interface {v7, p0, v2, v3}, Lz4/b2;->c(Ly4/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    invoke-virtual {v6, p1, v2}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v2}, Ly4/b;->q0()I

    move-result v2

    if-ne v2, v5, :cond_b

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v2}, Ly4/b;->q0()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object p1, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {p1, v5}, Ly4/b;->c0(I)V

    return-void
.end method

.method public v()Ly4/i;
    .locals 1

    iget-object v0, p0, Ly4/a;->b:Ly4/i;

    return-object v0
.end method

.method public v0()V
    .locals 3

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ly4/a;->g:Ly4/g;

    iget-object v0, v0, Ly4/g;->b:Ly4/g;

    iput-object v0, p0, Ly4/a;->g:Ly4/g;

    iget v0, p0, Ly4/a;->i:I

    if-gtz v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ly4/a;->i:I

    iget-object v1, p0, Ly4/a;->h:[Ly4/g;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 11

    iget-object v0, p0, Ly4/a;->j:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    iget-object v3, p0, Ly4/a;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly4/a$a;

    iget-object v4, v3, Ly4/a$a;->b:Ljava/lang/String;

    iget-object v5, v3, Ly4/a$a;->d:Ly4/g;

    if-eqz v5, :cond_1

    iget-object v5, v5, Ly4/g;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const-string v6, "$"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v4}, Ly4/a;->t(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    :try_start_0
    new-instance v7, Lcom/alibaba/fastjson/JSONPath;

    invoke-static {}, La5/g1;->g()La5/g1;

    move-result-object v8

    iget-object v9, p0, Ly4/a;->c:Ly4/h;

    const/4 v10, 0x1

    invoke-direct {v7, v4, v8, v9, v10}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;La5/g1;Ly4/h;Z)V

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONPath;->n()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, p1}, Lcom/alibaba/fastjson/JSONPath;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    iget-object v6, v3, Ly4/a$a;->a:Ly4/g;

    iget-object v6, v6, Ly4/g;->a:Ljava/lang/Object;

    :catch_0
    :cond_3
    :goto_2
    iget-object v7, v3, Ly4/a$a;->c:Lz4/l;

    if-eqz v7, :cond_7

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/alibaba/fastjson/JSONObject;

    if-ne v8, v9, :cond_4

    iget-object v8, v7, Lz4/l;->a:Lcom/alibaba/fastjson/util/d;

    if-eqz v8, :cond_4

    const-class v9, Ljava/util/Map;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Ly4/a;->h:[Ly4/g;

    aget-object v8, v8, v1

    iget-object v8, v8, Ly4/g;->a:Ljava/lang/Object;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath;->b(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONPath;->n()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/JSONPath;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_4
    invoke-virtual {v7}, Lz4/l;->c()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v7}, Lz4/l;->c()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v3, v3, Ly4/a$a;->d:Ly4/g;

    iget-object v3, v3, Ly4/g;->b:Ly4/g;

    if-eqz v3, :cond_6

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v7}, Lz4/l;->c()Ljava/lang/Class;

    move-result-object v4

    iget-object v8, v3, Ly4/g;->a:Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v5, v3, Ly4/g;->a:Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iget-object v3, v3, Ly4/g;->b:Ly4/g;

    goto :goto_3

    :cond_6
    :goto_4
    invoke-virtual {v7, v5, v6}, Lz4/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public x(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    invoke-interface {v0, p1}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p1

    return p1
.end method

.method public x0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ly4/a;->h:[Ly4/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ly4/a;->h:[Ly4/g;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    iget v3, p0, Ly4/a;->i:I

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ly4/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v2, Ly4/g;->a:Ljava/lang/Object;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public y0(Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;
    .locals 2

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Ly4/a;->g:Ly4/g;

    invoke-virtual {p0, v0, p1, p2}, Ly4/a;->z0(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;

    move-result-object p1

    return-object p1
.end method

.method public z0(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)Ly4/g;
    .locals 2

    iget-object v0, p0, Ly4/a;->f:Ly4/b;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Ly4/b;->n(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ly4/g;

    invoke-direct {v0, p1, p2, p3}, Ly4/g;-><init>(Ly4/g;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Ly4/a;->g:Ly4/g;

    invoke-direct {p0, v0}, Ly4/a;->h(Ly4/g;)V

    iget-object p1, p0, Ly4/a;->g:Ly4/g;

    return-object p1
.end method
