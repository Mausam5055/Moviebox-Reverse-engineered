.class public Lorg/mvel2/util/i;
.super Ljava/lang/ClassLoader;

# interfaces
.implements Lorg/mvel2/util/k;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
