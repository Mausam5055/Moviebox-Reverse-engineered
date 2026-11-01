.class public Lb8/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb8/b$a;
    }
.end annotation


# static fields
.field private static final a:Lb8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lb8/b;->d()Lb8/b;

    move-result-object v0

    sput-object v0, Lb8/b;->a:Lb8/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d()Lb8/b;
    .locals 1

    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lb8/b$a;

    invoke-direct {v0}, Lb8/b$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lb8/b;

    invoke-direct {v0}, Lb8/b;-><init>()V

    return-object v0
.end method

.method public static e()Lb8/b;
    .locals 1

    sget-object v0, Lb8/b;->a:Lb8/b;

    return-object v0
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method b()Le8/c;
    .locals 1

    new-instance v0, Le8/b;

    invoke-direct {v0}, Le8/b;-><init>()V

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
