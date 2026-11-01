.class public La5/g0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La5/g0$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/alibaba/fastjson/util/d;

.field protected final b:Z

.field protected c:I

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field protected g:La5/p;

.field private h:Ljava/lang/String;

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field private o:La5/g0$a;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La5/g0;->i:Z

    iput-boolean v0, p0, La5/g0;->j:Z

    iput-boolean v0, p0, La5/g0;->k:Z

    iput-boolean v0, p0, La5/g0;->l:Z

    iput-boolean v0, p0, La5/g0;->m:Z

    iput-object p2, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    new-instance v1, La5/p;

    invoke-direct {v1, p1, p2}, La5/p;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V

    iput-object v1, p0, La5/g0;->g:La5/p;

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    const-class v2, Lx4/d;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->N(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lx4/d;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lx4/d;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object p1

    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_0

    iput-boolean v1, p0, La5/g0;->i:Z

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_1

    iput-boolean v1, p0, La5/g0;->j:Z

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_2

    iput-boolean v1, p0, La5/g0;->k:Z

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_3

    iget v4, p0, La5/g0;->c:I

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v5

    iput v4, p0, La5/g0;->c:I

    iput-boolean v1, p0, La5/g0;->n:Z

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v4, v5, :cond_4

    iget v4, p0, La5/g0;->c:I

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v4, v5

    iput v4, p0, La5/g0;->c:I

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/d;->p()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La5/g0;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/d;->e()Lx4/b;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v5

    sget v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move v2, v0

    :goto_3
    invoke-interface {p1}, Lx4/b;->format()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, La5/g0;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    iput-object v3, p0, La5/g0;->h:Ljava/lang/String;

    :cond_8
    invoke-interface {p1}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_4
    if-ge v5, v4, :cond_d

    aget-object v6, v3, v5

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v6, v7, :cond_9

    iput-boolean v1, p0, La5/g0;->i:Z

    goto :goto_5

    :cond_9
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v6, v7, :cond_a

    iput-boolean v1, p0, La5/g0;->j:Z

    goto :goto_5

    :cond_a
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v6, v7, :cond_b

    iput-boolean v1, p0, La5/g0;->k:Z

    goto :goto_5

    :cond_b
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v6, v7, :cond_c

    iput-boolean v1, p0, La5/g0;->n:Z

    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    iget v3, p0, La5/g0;->c:I

    invoke-interface {p1}, Lx4/b;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result p1

    or-int/2addr p1, v3

    iput p1, p0, La5/g0;->c:I

    goto :goto_6

    :cond_e
    move v2, v0

    :goto_6
    iput-boolean v2, p0, La5/g0;->b:Z

    iget-object p1, p2, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->n0(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p2, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->m0(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    move v0, v1

    :cond_10
    iput-boolean v0, p0, La5/g0;->m:Z

    return-void
.end method


# virtual methods
.method public a(La5/g0;)I
    .locals 1

    iget-object v0, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object p1, p1, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/d;->a(Lcom/alibaba/fastjson/util/d;)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, La5/g0;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, La5/g0;->h:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/fastjson/a;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v1, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La5/g0;

    invoke-virtual {p0, p1}, La5/g0;->a(La5/g0;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-boolean v0, p0, La5/g0;->m:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->q0(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public e(La5/o0;)V
    .locals 3

    iget-object p1, p1, La5/o0;->k:La5/j1;

    iget-boolean v0, p1, La5/j1;->f:Z

    if-eqz v0, :cond_2

    iget v0, p1, La5/j1;->c:I

    iget-object v1, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget v1, v1, Lcom/alibaba/fastjson/util/d;->i:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(IILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La5/g0;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\':"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La5/g0;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, La5/g0;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, La5/j1;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, La5/g0;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, La5/j1;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, La5/g0;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v1, v1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La5/g0;->f:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, La5/g0;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, La5/j1;->write(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public f(La5/o0;Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, La5/g0;->o:La5/g0$a;

    const-class v1, Ljava/lang/Boolean;

    const-class v2, Ljava/lang/Long;

    if-nez v0, :cond_e

    const-class v0, Ljava/lang/Double;

    const-class v3, Ljava/lang/Float;

    if-nez p2, :cond_6

    iget-object v4, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_0

    const-class v4, Ljava/lang/Byte;

    goto :goto_0

    :cond_0
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_1

    const-class v4, Ljava/lang/Short;

    goto :goto_0

    :cond_1
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    const-class v4, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_3

    move-object v4, v2

    goto :goto_0

    :cond_3
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_4

    move-object v4, v3

    goto :goto_0

    :cond_4
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_5

    move-object v4, v0

    goto :goto_0

    :cond_5
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_7

    move-object v4, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :cond_7
    :goto_0
    iget-object v5, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/d;->e()Lx4/b;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lx4/b;->serializeUsing()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Void;

    if-eq v6, v7, :cond_8

    invoke-interface {v5}, Lx4/b;->serializeUsing()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/z0;

    const/4 v3, 0x1

    iput-boolean v3, p0, La5/g0;->l:Z

    goto :goto_3

    :cond_8
    iget-object v5, p0, La5/g0;->h:Ljava/lang/String;

    if-eqz v5, :cond_c

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_b

    if-ne v4, v0, :cond_9

    goto :goto_1

    :cond_9
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v4, v0, :cond_a

    if-ne v4, v3, :cond_c

    :cond_a
    new-instance v0, La5/h0;

    iget-object v3, p0, La5/g0;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, La5/h0;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    :goto_1
    new-instance v0, La5/d0;

    iget-object v3, p0, La5/g0;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, La5/d0;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_d

    invoke-virtual {p1, v4}, La5/o0;->q(Ljava/lang/Class;)La5/z0;

    move-result-object v0

    :cond_d
    :goto_3
    new-instance v3, La5/g0$a;

    invoke-direct {v3, v0, v4}, La5/g0$a;-><init>(La5/z0;Ljava/lang/Class;)V

    iput-object v3, p0, La5/g0;->o:La5/g0$a;

    :cond_e
    iget-object v0, p0, La5/g0;->o:La5/g0$a;

    iget-boolean v3, p0, La5/g0;->k:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget v3, v3, Lcom/alibaba/fastjson/util/d;->i:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v3, v4

    goto :goto_4

    :cond_f
    iget-object v3, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget v3, v3, Lcom/alibaba/fastjson/util/d;->i:I

    :goto_4
    iget v4, p0, La5/g0;->c:I

    or-int v10, v3, v4

    if-nez p2, :cond_17

    iget-object p2, p1, La5/o0;->k:La5/j1;

    iget-object v2, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    if-ne v2, v3, :cond_10

    sget v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-virtual {p2, v2}, La5/j1;->p(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p2}, La5/j1;->m0()V

    return-void

    :cond_10
    iget-object v2, v0, La5/g0$a;->b:Ljava/lang/Class;

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget p1, p0, La5/g0;->c:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p2, p1, v0}, La5/j1;->o0(II)V

    return-void

    :cond_11
    const-class v3, Ljava/lang/String;

    if-ne v3, v2, :cond_12

    iget p1, p0, La5/g0;->c:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p2, p1, v0}, La5/j1;->o0(II)V

    return-void

    :cond_12
    if-ne v1, v2, :cond_13

    iget p1, p0, La5/g0;->c:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p2, p1, v0}, La5/j1;->o0(II)V

    return-void

    :cond_13
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_5

    :cond_14
    iget-object v5, v0, La5/g0$a;->a:La5/z0;

    sget v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    invoke-virtual {p2, v0}, La5/j1;->p(I)Z

    move-result v0

    if-eqz v0, :cond_15

    instance-of v0, v5, La5/p0;

    if-eqz v0, :cond_15

    invoke-virtual {p2}, La5/j1;->m0()V

    return-void

    :cond_15
    iget-object p2, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v8, p2, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    iget-object v9, p2, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    const/4 v7, 0x0

    move-object v6, p1

    invoke-interface/range {v5 .. v10}, La5/z0;->d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void

    :cond_16
    :goto_5
    iget p1, p0, La5/g0;->c:I

    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-virtual {p2, p1, v0}, La5/j1;->o0(II)V

    return-void

    :cond_17
    iget-object v1, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/util/d;->q:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, La5/g0;->j:Z

    if-eqz v1, :cond_18

    iget-object p1, p1, La5/o0;->k:La5/j1;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, La5/j1;->q0(Ljava/lang/String;)V

    return-void

    :cond_18
    iget-boolean v1, p0, La5/g0;->i:Z

    if-eqz v1, :cond_19

    iget-object p1, p1, La5/o0;->k:La5/j1;

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, La5/j1;->q0(Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, v0, La5/g0$a;->b:Ljava/lang/Class;

    if-eq v1, v3, :cond_1b

    iget-boolean v3, p0, La5/g0;->l:Z

    if-eqz v3, :cond_1a

    goto :goto_7

    :cond_1a
    invoke-virtual {p1, v1}, La5/o0;->q(Ljava/lang/Class;)La5/z0;

    move-result-object v0

    :goto_6
    move-object v5, v0

    goto :goto_8

    :cond_1b
    :goto_7
    iget-object v0, v0, La5/g0$a;->a:La5/z0;

    goto :goto_6

    :goto_8
    iget-object v0, p0, La5/g0;->h:Ljava/lang/String;

    if-eqz v0, :cond_1d

    instance-of v3, v5, La5/d0;

    if-nez v3, :cond_1d

    instance-of v3, v5, La5/h0;

    if-nez v3, :cond_1d

    instance-of v1, v5, La5/a0;

    if-eqz v1, :cond_1c

    check-cast v5, La5/a0;

    iget-object v0, p0, La5/g0;->g:La5/p;

    invoke-interface {v5, p1, p2, v0}, La5/a0;->a(La5/o0;Ljava/lang/Object;La5/p;)V

    goto :goto_9

    :cond_1c
    invoke-virtual {p1, p2, v0}, La5/o0;->G(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_1d
    iget-object v0, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-boolean v3, v0, Lcom/alibaba/fastjson/util/d;->s:Z

    if-eqz v3, :cond_1f

    instance-of v3, v5, La5/p0;

    if-eqz v3, :cond_1e

    check-cast v5, La5/p0;

    iget-object v8, v0, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    const/4 v11, 0x1

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v11}, La5/p0;->t(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void

    :cond_1e
    instance-of v3, v5, La5/v0;

    if-eqz v3, :cond_1f

    check-cast v5, La5/v0;

    iget-object v8, v0, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    const/4 v11, 0x1

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v11}, La5/v0;->j(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void

    :cond_1f
    iget v3, p0, La5/g0;->c:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_20

    iget-object v3, v0, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    if-eq v1, v3, :cond_20

    instance-of v1, v5, La5/p0;

    if-eqz v1, :cond_20

    check-cast v5, La5/p0;

    iget-object v8, v0, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v11}, La5/p0;->t(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void

    :cond_20
    iget-boolean v1, p0, La5/g0;->n:Z

    if-eqz v1, :cond_23

    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_21

    if-ne v0, v2, :cond_23

    :cond_21
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x1fffffffffffffL

    cmp-long v2, v0, v2

    if-gtz v2, :cond_22

    const-wide v2, -0x1fffffffffffffL

    cmp-long v2, v0, v2

    if-gez v2, :cond_23

    :cond_22
    invoke-virtual {p1}, La5/o0;->r()La5/j1;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, La5/j1;->q0(Ljava/lang/String;)V

    return-void

    :cond_23
    iget-object v0, p0, La5/g0;->a:Lcom/alibaba/fastjson/util/d;

    iget-object v8, v0, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/alibaba/fastjson/util/d;->f:Ljava/lang/reflect/Type;

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v5 .. v10}, La5/z0;->d(La5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method
