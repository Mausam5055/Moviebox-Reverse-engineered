.class public Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbsignalcommon/mapping/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field protected final a:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mbridge/msdk/mbsignalcommon/mapping/a;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;->a:Ljava/lang/reflect/Method;

    return-void

    :cond_0
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p3

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_1
    sget-boolean v3, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    sget-boolean v3, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v0, :cond_4

    if-lez p4, :cond_3

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p3

    and-int/2addr p3, p4

    if-eq p3, p4, :cond_3

    new-instance p3, Lcom/mbridge/msdk/mbsignalcommon/mapping/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not match modifiers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/mbridge/msdk/mbsignalcommon/mapping/a;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/mbridge/msdk/mbsignalcommon/mapping/b;->a(Lcom/mbridge/msdk/mbsignalcommon/mapping/a;)V

    :cond_3
    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_3
    :try_start_2
    new-instance p4, Lcom/mbridge/msdk/mbsignalcommon/mapping/a;

    invoke-direct {p4, p3}, Lcom/mbridge/msdk/mbsignalcommon/mapping/a;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p4, p1}, Lcom/mbridge/msdk/mbsignalcommon/mapping/a;->a(Ljava/lang/Class;)V

    invoke-virtual {p4, p2}, Lcom/mbridge/msdk/mbsignalcommon/mapping/a;->a(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/mbridge/msdk/mbsignalcommon/mapping/b;->a(Lcom/mbridge/msdk/mbsignalcommon/mapping/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;->a:Ljava/lang/reflect/Method;

    goto :goto_6

    :goto_4
    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;->a:Ljava/lang/reflect/Method;

    throw p1

    :cond_4
    :goto_5
    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;->a:Ljava/lang/reflect/Method;

    :goto_6
    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invoke error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MappingedMethod"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public a()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/mapping/b$b;->a:Ljava/lang/reflect/Method;

    return-object v0
.end method
