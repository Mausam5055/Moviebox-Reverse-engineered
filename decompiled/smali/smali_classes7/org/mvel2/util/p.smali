.class public Lorg/mvel2/util/p;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lorg/mvel2/util/p;->g(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lorg/mvel2/util/p;->g(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [C

    const/16 v2, 0x67

    const/4 v3, 0x0

    aput-char v2, v0, v3

    const/16 v2, 0x65

    const/4 v4, 0x1

    aput-char v2, v0, v4

    const/4 v2, 0x2

    const/16 v5, 0x74

    aput-char v5, v0, v2

    aget-char v2, p0, v3

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v0, v1

    array-length v1, p0

    sub-int/2addr v1, v4

    const/4 v2, 0x4

    invoke-static {p0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [C

    const/16 v2, 0x69

    const/4 v3, 0x0

    aput-char v2, v0, v3

    const/16 v2, 0x73

    const/4 v4, 0x1

    aput-char v2, v0, v4

    aget-char v2, p0, v3

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v0, v1

    array-length v1, p0

    sub-int/2addr v1, v4

    const/4 v2, 0x3

    invoke-static {p0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x73

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-le v1, v6, :cond_3

    aget-char v1, v0, v5

    const/16 v7, 0x65

    if-ne v1, v7, :cond_3

    aget-char v1, v0, v4

    const/16 v7, 0x74

    if-ne v1, v7, :cond_3

    array-length v1, v0

    sub-int/2addr v1, v6

    new-array v4, v1, [C

    aget-char v7, v0, v3

    const/16 v8, 0x67

    if-eq v7, v8, :cond_1

    if-ne v7, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    aget-char p0, v0, v6

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    aput-char p0, v4, v3

    :goto_1
    if-ge v5, v1, :cond_2

    add-int/lit8 p0, v5, 0x3

    aget-char p0, v0, p0

    aput-char p0, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_3
    array-length v1, v0

    if-le v1, v4, :cond_5

    aget-char v1, v0, v3

    const/16 v6, 0x69

    if-ne v1, v6, :cond_5

    aget-char v1, v0, v5

    if-ne v1, v2, :cond_5

    array-length p0, v0

    sub-int/2addr p0, v4

    new-array v1, p0, [C

    aget-char v2, v0, v4

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v3

    :goto_2
    if-ge v5, p0, :cond_4

    add-int/lit8 v2, v5, 0x2

    aget-char v2, v0, v2

    aput-char v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    :cond_5
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [C

    const/16 v2, 0x73

    const/4 v3, 0x0

    aput-char v2, v0, v3

    const/16 v2, 0x65

    const/4 v4, 0x1

    aput-char v2, v0, v4

    const/4 v2, 0x2

    const/16 v5, 0x74

    aput-char v5, v0, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static f(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lorg/mvel2/util/p;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static g(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_3

    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_7

    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1

    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_9

    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    return v1

    :cond_9
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_b

    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    return v1

    :cond_b
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_d

    const-class p1, Ljava/lang/Character;

    if-ne p0, p1, :cond_c

    goto :goto_6

    :cond_c
    move v1, v2

    :goto_6
    return v1

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_f

    const-class p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_e

    goto :goto_7

    :cond_e
    move v1, v2

    :goto_7
    return v1

    :cond_f
    return v2
.end method

.method public static h(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, [I

    if-ne p0, v0, :cond_1

    const-class p0, [Ljava/lang/Integer;

    return-object p0

    :cond_1
    const-class v0, [J

    if-ne p0, v0, :cond_2

    const-class p0, [Ljava/lang/Long;

    return-object p0

    :cond_2
    const-class v0, [D

    if-ne p0, v0, :cond_3

    const-class p0, [Ljava/lang/Double;

    return-object p0

    :cond_3
    const-class v0, [F

    if-ne p0, v0, :cond_4

    const-class p0, [Ljava/lang/Float;

    return-object p0

    :cond_4
    const-class v0, [S

    if-ne p0, v0, :cond_5

    const-class p0, [Ljava/lang/Short;

    return-object p0

    :cond_5
    const-class v0, [B

    if-ne p0, v0, :cond_6

    const-class p0, [Ljava/lang/Byte;

    return-object p0

    :cond_6
    const-class v0, [C

    if-ne p0, v0, :cond_7

    const-class p0, [Ljava/lang/Character;

    return-object p0

    :cond_7
    const-class p0, [Ljava/lang/Boolean;

    :cond_8
    :goto_0
    return-object p0
.end method

.method public static i(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class p0, Ljava/lang/Short;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, Ljava/lang/Byte;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Character;

    return-object p0

    :cond_7
    const-class p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static j(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class p0, [I

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, [J

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, [D

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, [F

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class p0, [S

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class p0, [B

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, [C

    return-object p0

    :cond_6
    const-class p0, [Z

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not a primitive type"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
