.class public Ld8/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lq7/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld8/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;
    .locals 2

    array-length v0, p0

    if-lez p1, :cond_0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    new-array p1, v0, [Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static b([Ljava/lang/StackTraceElement;Ljava/lang/String;I)[Ljava/lang/StackTraceElement;
    .locals 0

    invoke-static {p0, p1}, Ld8/a;->c([Ljava/lang/StackTraceElement;Ljava/lang/String;)[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0, p2}, Ld8/a;->a([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method

.method private static c([Ljava/lang/StackTraceElement;Ljava/lang/String;)[Ljava/lang/StackTraceElement;
    .locals 5

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ld8/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sub-int/2addr v0, v1

    new-array p1, v0, [Ljava/lang/StackTraceElement;

    invoke-static {p0, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
