.class final Lcom/google/protobuf/s1$d;
.super Lcom/google/protobuf/s1$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/s1$e;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public copyMemory(J[BJJ)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/protobuf/s1;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v6, v2, p4

    const/4 v2, 0x0

    move-wide v3, p1

    move-object v5, p3

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public copyMemory([BJJJ)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/protobuf/s1;->BYTE_ARRAY_BASE_OFFSET:J

    add-long v3, v2, p2

    const/4 v5, 0x0

    move-object v2, p1

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public getByte(J)B
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/Object;J)B
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    return p1
.end method

.method public getInt(J)I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getInt(J)I

    move-result p1

    return p1
.end method

.method public getLong(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->staticFieldBase(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v1, p1}, Lsun/misc/Unsafe;->staticFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/s1$e;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public putByte(JB)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .locals 6

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method public putInt(JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(JI)V

    return-void
.end method

.method public putLong(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putLong(JJ)V

    return-void
.end method

.method public supportsUnsafeArrayOperations()Z
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/protobuf/s1$e;->supportsUnsafeArrayOperations()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getByte"

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v3, v8, v5

    aput-object v7, v8, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putByte"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v3, v8, v5

    aput-object v7, v8, v2

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getBoolean"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v3, v8, v5

    aput-object v7, v8, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putBoolean"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v3, v8, v5

    aput-object v7, v8, v2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getFloat"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v3, v8, v5

    aput-object v7, v8, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putFloat"

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v3, v8, v5

    aput-object v7, v8, v2

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v1

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getDouble"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v3, v8, v5

    aput-object v7, v8, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putDouble"

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v3, v0, v5

    aput-object v7, v0, v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    invoke-virtual {v4, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/google/protobuf/s1;->access$000(Ljava/lang/Throwable;)V

    return v5
.end method

.method public supportsUnsafeByteBufferOperations()Z
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "copyMemory"

    invoke-super {p0}, Lcom/google/protobuf/s1$e;->supportsUnsafeByteBufferOperations()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/protobuf/s1$e;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "getByte"

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v7, v8, v5

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putByte"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v7, v8, v5

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getInt"

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v7, v8, v5

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putInt"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v7, v8, v5

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "getLong"

    new-array v8, v2, [Ljava/lang/Class;

    aput-object v7, v8, v5

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v6, "putLong"

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v7, v8, v5

    aput-object v7, v8, v2

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v6, v0, [Ljava/lang/Class;

    aput-object v7, v6, v5

    aput-object v7, v6, v2

    aput-object v7, v6, v1

    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v5

    aput-object v7, v6, v2

    aput-object v8, v6, v1

    aput-object v7, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    invoke-static {v0}, Lcom/google/protobuf/s1;->access$000(Ljava/lang/Throwable;)V

    return v5
.end method
