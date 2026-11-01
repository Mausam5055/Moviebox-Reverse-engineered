.class public final Lorg/lsposed/hiddenapibypass/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lsun/misc/Unsafe;

.field private static final b:J

.field private static final c:J

.field private static final d:J

.field private static final e:J

.field private static final f:J

.field private static final g:J

.field private static final h:J

.field private static final i:J

.field private static final j:J

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-class v0, Lorg/lsposed/hiddenapibypass/c;

    const-class v1, Lorg/lsposed/hiddenapibypass/b;

    const-class v2, Lorg/lsposed/hiddenapibypass/h;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lorg/lsposed/hiddenapibypass/l;->n:Ljava/util/Set;

    :try_start_0
    const-class v3, Lsun/misc/Unsafe;

    const-string v4, "getUnsafe"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/misc/Unsafe;

    sput-object v3, Lorg/lsposed/hiddenapibypass/l;->a:Lsun/misc/Unsafe;

    const-string v4, "artMethod"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lorg/lsposed/hiddenapibypass/l;->b:J

    const-string v4, "declaringClass"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lorg/lsposed/hiddenapibypass/l;->c:J

    const-class v0, Lorg/lsposed/hiddenapibypass/f;

    const-string v4, "artFieldOrMethod"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    sput-wide v6, Lorg/lsposed/hiddenapibypass/l;->d:J

    const-class v0, Lorg/lsposed/hiddenapibypass/g;

    const-string v4, "info"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lorg/lsposed/hiddenapibypass/l;->e:J

    const-string v0, "methods"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    sput-wide v8, Lorg/lsposed/hiddenapibypass/l;->f:J

    const-string v0, "iFields"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    sput-wide v10, Lorg/lsposed/hiddenapibypass/l;->g:J

    const-string v0, "sFields"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lorg/lsposed/hiddenapibypass/l;->h:J

    const-class v0, Lorg/lsposed/hiddenapibypass/d;

    const-string v1, "member"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lorg/lsposed/hiddenapibypass/l;->i:J

    const-string v0, "a"

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v2, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Lorg/lsposed/hiddenapibypass/i;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/lsposed/hiddenapibypass/j;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-static {}, Lorg/lsposed/hiddenapibypass/i;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/lsposed/hiddenapibypass/j;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-virtual {v3, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v3, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v3, v2, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    sub-long/2addr v0, v12

    sput-wide v0, Lorg/lsposed/hiddenapibypass/l;->j:J

    sub-long/2addr v12, v8

    sub-long/2addr v12, v0

    sput-wide v12, Lorg/lsposed/hiddenapibypass/l;->k:J

    const-string v0, "i"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "j"

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, Lorg/lsposed/hiddenapibypass/i;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/lsposed/hiddenapibypass/k;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-static {}, Lorg/lsposed/hiddenapibypass/i;->a()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/lsposed/hiddenapibypass/k;->a(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    invoke-virtual {v3, v0, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v3, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-virtual {v3, v2, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    sub-long/2addr v0, v4

    sput-wide v0, Lorg/lsposed/hiddenapibypass/l;->l:J

    sub-long/2addr v4, v2

    sput-wide v4, Lorg/lsposed/hiddenapibypass/l;->m:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HiddenApiBypass"

    const-string v2, "Initialize error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 4

    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_a

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    aget-object v1, p0, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_1

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    return v2

    :cond_1
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_2

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Byte;

    if-nez v3, :cond_2

    return v2

    :cond_2
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_3

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Character;

    if-nez v3, :cond_3

    return v2

    :cond_3
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_4

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Boolean;

    if-nez v3, :cond_4

    return v2

    :cond_4
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_5

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Double;

    if-nez v3, :cond_5

    return v2

    :cond_5
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_6

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Float;

    if-nez v3, :cond_6

    return v2

    :cond_6
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_7

    aget-object v3, p1, v0

    instance-of v3, v3, Ljava/lang/Long;

    if-nez v3, :cond_7

    return v2

    :cond_7
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_9

    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/Short;

    if-nez v1, :cond_9

    return v2

    :cond_8
    aget-object v1, p1, v0

    if-eqz v1, :cond_9

    aget-object v3, p0, v0

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs b([Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/lsposed/hiddenapibypass/l;->n:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p0, v0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p0}, Lorg/lsposed/hiddenapibypass/l;->d([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs c(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "this object is not an instance of the given class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/Object;

    aput-object v5, v4, v2

    const-class v5, Lorg/lsposed/hiddenapibypass/e;

    const-string v6, "invoke"

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v5, Lorg/lsposed/hiddenapibypass/l;->a:Lsun/misc/Unsafe;

    sget-wide v6, Lorg/lsposed/hiddenapibypass/l;->f:J

    move-object/from16 v8, p0

    invoke-virtual {v5, v8, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    const-wide/16 v6, 0x0

    cmp-long v6, v13, v6

    const-string v15, "Cannot find matching method"

    if-eqz v6, :cond_4

    invoke-virtual {v5, v13, v14}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v5

    :goto_1
    if-ge v2, v5, :cond_3

    int-to-long v6, v2

    sget-wide v8, Lorg/lsposed/hiddenapibypass/l;->j:J

    mul-long/2addr v6, v8

    add-long/2addr v6, v13

    sget-wide v8, Lorg/lsposed/hiddenapibypass/l;->k:J

    add-long v11, v6, v8

    sget-object v7, Lorg/lsposed/hiddenapibypass/l;->a:Lsun/misc/Unsafe;

    sget-wide v9, Lorg/lsposed/hiddenapibypass/l;->b:J

    move-object v8, v4

    invoke-virtual/range {v7 .. v12}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/lsposed/hiddenapibypass/l;->a([Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    add-int/2addr v2, v3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, v15}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0, v15}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs d([Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "setHiddenApiExemptions"

    :try_start_0
    const-class v3, Ldalvik/system/VMRuntime;

    const-string v4, "getRuntime"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5}, Lorg/lsposed/hiddenapibypass/l;->c(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Ldalvik/system/VMRuntime;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v4, v3, v2, v5}, Lorg/lsposed/hiddenapibypass/l;->c(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception p0

    const-string v0, "HiddenApiBypass"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
