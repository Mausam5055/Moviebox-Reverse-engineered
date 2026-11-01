.class public final Lt00/a;
.super Ljava/lang/Object;


# static fields
.field static synthetic e:Ljava/lang/Class;

.field static synthetic f:Ljava/lang/Class;

.field static synthetic g:Ljava/lang/Class;


# instance fields
.field public a:Ljava/io/Reader;

.field public b:I

.field public c:Ljava/util/Vector;

.field private d:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lt00/a;->b:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lt00/a;->c:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lt00/a;->d:Lorg/apache/tools/ant/Project;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lt00/a;->d:Lorg/apache/tools/ant/Project;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Ls00/a;

    if-eqz v1, :cond_1

    check-cast p1, Ls00/a;

    invoke-virtual {p1, v0}, Ls00/a;->b(Lorg/apache/tools/ant/Project;)V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->K(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/io/Reader;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lt00/a;->a:Ljava/io/Reader;

    if-eqz v2, :cond_c

    iget-object v3, p0, Lt00/a;->c:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    move v5, v0

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lt00/a;->c:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/ant/types/h;

    invoke-virtual {v6}, Lorg/apache/tools/ant/types/h;->e()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_0

    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/2addr v8, v1

    goto :goto_1

    :cond_0
    add-int/2addr v5, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_b

    move v5, v0

    :goto_2
    if-ge v5, v3, :cond_b

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/tools/ant/types/a;

    if-eqz v6, :cond_a

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/ant/types/a;

    invoke-virtual {v6}, Lorg/apache/tools/ant/types/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/tools/ant/types/a;->f()Lorg/apache/tools/ant/types/m;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v9

    if-eqz v7, :cond_a

    if-nez v8, :cond_2

    :try_start_0
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :catch_2
    move-exception v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v9, v8}, Lorg/apache/tools/ant/Project;->g(Lorg/apache/tools/ant/types/m;)Lorg/apache/tools/ant/a;

    move-result-object v8

    invoke-static {v7, v1, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    :goto_3
    if-eqz v8, :cond_a

    sget-object v9, Lt00/a;->e:Ljava/lang/Class;

    if-nez v9, :cond_3

    const-string v9, "java.io.FilterReader"

    invoke-static {v9}, Lt00/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lt00/a;->e:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v8}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v9

    move v10, v0

    :goto_4
    array-length v11, v9

    if-ge v10, v11, :cond_8

    aget-object v11, v9, v10

    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v12, v11

    if-ne v12, v1, :cond_7

    aget-object v11, v11, v0

    sget-object v12, Lt00/a;->f:Ljava/lang/Class;

    if-nez v12, :cond_4

    const-string v12, "java.io.Reader"

    invoke-static {v12}, Lt00/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lt00/a;->f:Ljava/lang/Class;

    :cond_4
    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_7

    new-array v7, v1, [Ljava/io/Reader;

    aput-object v2, v7, v0

    aget-object v2, v9, v10

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Reader;

    invoke-direct {p0, v2}, Lt00/a;->f(Ljava/lang/Object;)V

    sget-object v7, Lt00/a;->g:Ljava/lang/Class;

    if-nez v7, :cond_5

    const-string v7, "org.apache.tools.ant.types.Parameterizable"

    invoke-static {v7}, Lt00/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lt00/a;->g:Ljava/lang/Class;

    :cond_5
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_9

    :cond_6
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/a;->g()[Lorg/apache/tools/ant/types/l;

    invoke-static {v2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    throw v0

    :cond_7
    add-int/2addr v10, v1

    goto :goto_4

    :cond_8
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " does not define a public constructor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " that takes in a Reader as its "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "single argument."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " does not extend java.io.FilterReader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_6
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_8
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    :goto_9
    add-int/2addr v5, v1

    goto/16 :goto_2

    :cond_b
    return-object v2

    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "primaryReader must not be null."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lt00/a;->c:Ljava/util/Vector;

    return-void
.end method

.method public d(Ljava/io/Reader;)V
    .locals 0

    iput-object p1, p0, Lt00/a;->a:Ljava/io/Reader;

    return-void
.end method

.method public e(Lorg/apache/tools/ant/Project;)V
    .locals 0

    iput-object p1, p0, Lt00/a;->d:Lorg/apache/tools/ant/Project;

    return-void
.end method
